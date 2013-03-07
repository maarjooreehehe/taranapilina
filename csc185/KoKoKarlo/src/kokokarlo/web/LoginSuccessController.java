package kokokarlo.web;

import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.IOException;
//import springapp.service.ProductManager;

public class LoginSuccessController implements Controller{

	protected final Log logger = LogFactory.getLog(getClass());

//    private ProductManager productManager;

    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        String now = (new java.util.Date()).toString();
        logger.info("now going to loginsuccess");


        return new ModelAndView("loginsuccess");
    }
}
