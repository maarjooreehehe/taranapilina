package kokokarlo.web;


import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LoginFormController extends SimpleFormController {

	/** Logger for this class and subclasses */
    protected final Log logger = LogFactory.getLog(getClass());

   

    public ModelAndView onSubmit(Object command) throws ServletException {
        
        logger.info("logging in");

        logger.info("returning from login view to " + getSuccessView());

        return new ModelAndView(new RedirectView(getSuccessView()));
    }
}