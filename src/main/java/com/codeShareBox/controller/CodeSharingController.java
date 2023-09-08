package com.codeShareBox.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.codeShareBox.model.CodeShare;
import com.codeShareBox.services.CodeSharingServices;

import java.util.List;
import java.util.UUID;

/**
 * Controller class for handling code sharing via a RESTful API.
 */
@Controller
public class CodeSharingController {

    private final CodeSharingServices codeSharingServices;

    /**
     * Constructor for CodeSharingController class.
     *
     * @param codeSharingServices The service responsible for handling code sharing operations.
     */
    @Autowired
    public CodeSharingController(CodeSharingServices codeSharingServices) {
        this.codeSharingServices = codeSharingServices;
    }

    /**
     * Retrieve code details via the API based on the provided code ID.
     *
     * @param id The unique identifier of the code snippet.
     * @return ResponseEntity containing the code details or a 404 response if not found.
     */
    @GetMapping("/api/code/{id}")
    @ResponseBody
    public ResponseEntity<CodeShare> getCodeApi(@PathVariable UUID id) {
        return codeSharingServices.getCodeApi(id);
    }

    /**
     * Create and save a new code snippet via the API.
     *
     * @param codeShare The CodeShare object representing the code snippet.
     * @return ResponseEntity containing the ID of the newly created code snippet.
     */
    @PostMapping("/api/code/new")
    @ResponseBody
    public ResponseEntity<?> postNewCode(@RequestBody CodeShare codeShare) {
        return codeSharingServices.postNewCode(codeShare);
    }

    /**
     * Get a list of the latest code snippets via the API.
     *
     * @return A list of CodeShare objects representing the latest code snippets.
     */
    @GetMapping("/api/code/latest")
    @ResponseBody
    public List<CodeShare> getLatestCode() {
        return codeSharingServices.getLatestCode();
    }



}
