package com.codeShareBox.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.codeShareBox.services.CodeSharingWebServices;

import java.util.UUID;

/**
 * Controller class for handling web requests related to code sharing.
 * This controller manages code confirmation, code retrieval, and other web operations.
 */
@Controller
public class CodeSharingWebController {
    private final CodeSharingWebServices codeSharingWebServices;

    /**
     * Constructor for CodeSharingWebController class.
     *
     * @param codeSharingWebServices The service responsible for handling code sharing web operations.
     */
    @Autowired
    public CodeSharingWebController(CodeSharingWebServices codeSharingWebServices) {
        this.codeSharingWebServices = codeSharingWebServices;
    }

    /**
     * Display the confirmation page for a specific code snippet.
     *
     * @param id    The unique identifier of the code snippet.
     * @param model The Spring MVC model to populate with code details.
     * @return The name of the FreeMarker template for the confirmation page.
     */
    @GetMapping("/confirm/{id}")
    public String getConfirmation(@PathVariable UUID id, Model model) {
        return codeSharingWebServices.getConfirmation(id,model);
    }

    /**
     * Display the code snippet page for a specific code snippet.
     *
     * @param id    The unique identifier of the code snippet.
     * @param model The Spring MVC model to populate with code details.
     * @return The name of the FreeMarker template for the code snippet page.
     */
    @GetMapping("/{id}")
    public String getCode(@PathVariable UUID id, Model model) {
        return codeSharingWebServices.getCode(id,model);
    }

    /**
     * Display the page for creating a new code snippet.
     *
     * @return The name of the FreeMarker template for the new code page.
     */
    @GetMapping("/")
    public String getNewCode() {
        return codeSharingWebServices.getNewCode();
    }

    /**
     * Display the "About Us" page.
     *
     * @return The name of the FreeMarker template for the "about" page.
     */
    @GetMapping("/about")
    public String getAboutUs() {
        return codeSharingWebServices.getAboutUs();
    }

    /**
     * Display the latest code snippets in HTML format.
     *
     * @param model The Spring MVC model to populate with code details.
     * @return The name of the FreeMarker template for the latest code page.
     */
    @GetMapping("/latest")
    public String getLatestCodeInHtml(Model model) {
       return codeSharingWebServices.getLatestCodeInHtml(model);
    }

    /**
     * Display the custom 404 error page.
     *
     * @return The name of the FreeMarker template for the custom 404 error page.
     */
    @GetMapping("/404")
    public String get404Error() {
        return codeSharingWebServices.get404Error();
    }
}
