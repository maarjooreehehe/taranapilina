package classifiedads



import org.junit.*
import grails.test.mixin.*

@TestFor(PostadController)
@Mock(Postad)
class PostadControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/postad/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.postadInstanceList.size() == 0
        assert model.postadInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.postadInstance != null
    }

    void testSave() {
        controller.save()

        assert model.postadInstance != null
        assert view == '/postad/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/postad/show/1'
        assert controller.flash.message != null
        assert Postad.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/postad/list'

        populateValidParams(params)
        def postad = new Postad(params)

        assert postad.save() != null

        params.id = postad.id

        def model = controller.show()

        assert model.postadInstance == postad
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/postad/list'

        populateValidParams(params)
        def postad = new Postad(params)

        assert postad.save() != null

        params.id = postad.id

        def model = controller.edit()

        assert model.postadInstance == postad
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/postad/list'

        response.reset()

        populateValidParams(params)
        def postad = new Postad(params)

        assert postad.save() != null

        // test invalid parameters in update
        params.id = postad.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/postad/edit"
        assert model.postadInstance != null

        postad.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/postad/show/$postad.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        postad.clearErrors()

        populateValidParams(params)
        params.id = postad.id
        params.version = -1
        controller.update()

        assert view == "/postad/edit"
        assert model.postadInstance != null
        assert model.postadInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/postad/list'

        response.reset()

        populateValidParams(params)
        def postad = new Postad(params)

        assert postad.save() != null
        assert Postad.count() == 1

        params.id = postad.id

        controller.delete()

        assert Postad.count() == 0
        assert Postad.get(postad.id) == null
        assert response.redirectedUrl == '/postad/list'
    }
}
