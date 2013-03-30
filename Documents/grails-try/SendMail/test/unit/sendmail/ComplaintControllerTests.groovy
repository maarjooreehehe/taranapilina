package sendmail



import org.junit.*
import grails.test.mixin.*

@TestFor(ComplaintController)
@Mock(Complaint)
class ComplaintControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/complaint/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.complaintInstanceList.size() == 0
        assert model.complaintInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.complaintInstance != null
    }

    void testSave() {
        controller.save()

        assert model.complaintInstance != null
        assert view == '/complaint/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/complaint/show/1'
        assert controller.flash.message != null
        assert Complaint.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/complaint/list'

        populateValidParams(params)
        def complaint = new Complaint(params)

        assert complaint.save() != null

        params.id = complaint.id

        def model = controller.show()

        assert model.complaintInstance == complaint
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/complaint/list'

        populateValidParams(params)
        def complaint = new Complaint(params)

        assert complaint.save() != null

        params.id = complaint.id

        def model = controller.edit()

        assert model.complaintInstance == complaint
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/complaint/list'

        response.reset()

        populateValidParams(params)
        def complaint = new Complaint(params)

        assert complaint.save() != null

        // test invalid parameters in update
        params.id = complaint.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/complaint/edit"
        assert model.complaintInstance != null

        complaint.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/complaint/show/$complaint.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        complaint.clearErrors()

        populateValidParams(params)
        params.id = complaint.id
        params.version = -1
        controller.update()

        assert view == "/complaint/edit"
        assert model.complaintInstance != null
        assert model.complaintInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/complaint/list'

        response.reset()

        populateValidParams(params)
        def complaint = new Complaint(params)

        assert complaint.save() != null
        assert Complaint.count() == 1

        params.id = complaint.id

        controller.delete()

        assert Complaint.count() == 0
        assert Complaint.get(complaint.id) == null
        assert response.redirectedUrl == '/complaint/list'
    }
}
