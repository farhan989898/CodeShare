package com.codeShareBox.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.server.ResponseStatusException;
import com.codeShareBox.model.CodeShare;
import com.codeShareBox.repository.CodeShareRepository;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * This class provides services related to code sharing.
 * It handles new code creation, code retrieval, and other operations.
 */
@Service
public class CodeSharingWebServices {

    @Autowired
    private CodeShareRepository codeShareRepository;

    /**
     * Constructor for CodeSharingWebServices class.
     *
     * @param codeShareRepository The repository for managing code sharing.
     */




    /**
     * Get the FreeMarker template name for the new code page.
     *
     * @return The name of the FreeMarker template.
     */
    public String getNewCode() {
        return "index";
    }

    /**
     * Get code confirmation details and populate the model.
     *
     * @param id    The ID of the code to retrieve.
     * @param model The Spring MVC model to populate with code details.
     * @return The name of the FreeMarker template.
     * @throws ResponseStatusException If the code is not found.
     */
    public String getConfirmation(UUID id, Model model) {
        
        Optional<CodeShare> byId = codeShareRepository.findById(id);
        CodeShare codeShare = byId.orElse(null);
        if (!codeShareRepository.existsById(id)) {
            return "404";
        }

        assert codeShare != null;
        String date = codeShare.getDate();
        LocalDateTime then = LocalDateTime.parse(date);
        // Define a custom date and time format pattern
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy h:mm:ss a");

        // Format the LocalDateTime instance using the formatter
        date = then.format(formatter);
        Long views = codeShare.getViews();
        
        model.addAttribute("date", date);
        model.addAttribute("time", codeShare.getTime());
        model.addAttribute("views", views);
        model.addAttribute("size",codeShare.getSize());
        model.addAttribute("id",id);
        // Return the name of the FreeMarker template
        return "savedpage";
    }

    /**
     * Get code details for a specific ID and populate the model.
     *
     * @param id    The ID of the code to retrieve.
     * @param model The Spring MVC model to populate with code details.
     * @return The name of the FreeMarker template.
     * @throws ResponseStatusException If the code is not found.
     */

    @GetMapping("/code/{id}")
    public String getCode(UUID id, Model model) {
        
        Optional<CodeShare> byId = codeShareRepository.findById(id);
        CodeShare codeShare = byId.orElse(null);
        if (!codeShareRepository.existsById(id)) {
            return "404";
        }

        assert codeShare != null;
        String code = codeShare.getCode();

        String date = codeShare.getDate();
        LocalDateTime then = LocalDateTime.parse(date);
        LocalDateTime now = LocalDateTime.now();
        // Define a custom date and time format pattern
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy h:mm:ss a");

        // Format the LocalDateTime instance using the formatter
        date = then.format(formatter);
        Duration duration = Duration.between(then, now);
        long timeBetween = duration.getSeconds();
        Long views = codeShare.getViews();
        if (codeShare.getInitialViews() > 0) {
            --views;
        }
        codeShare.setViews(views);

        if (codeShare.getInitialTime() > 0) {
            codeShare.setTime(codeShare.getTime() - timeBetween);
        }

        if (codeShare.getInitialTime() > 0 || codeShare.getInitialViews() > 0) {

            if (codeShare.getInitialTime() <= 0 && codeShare.getViews() < 0) {
                codeShareRepository.delete(codeShare);
                return "404";
            }
            if (codeShare.getTime() <= 0 && codeShare.getInitialViews() <= 0) {
                codeShareRepository.delete(codeShare);
                return "404";
            }
            if (codeShare.getViews() < 0 && codeShare.getTime() <= 0) {
                codeShareRepository.delete(codeShare);
                return "404";
            }
        }
        codeShareRepository.save(codeShare);
        model.addAttribute("code", code);
        model.addAttribute("date", date);
        model.addAttribute("timeRemaining", codeShare.getTime());
        model.addAttribute("views", views);
        model.addAttribute("initialViews", codeShare.getInitialViews());
        model.addAttribute("size",codeShare.getSize());
        // Return the name of the FreeMarker template
        return "codePage";
    }

    /**
     * Get the lists of public code snippets.
     * @param model The Spring MVC model to populate with code details.
     * @return The name of the FreeMarker template.
     * */

    public String getLatestCodeInHtml(Model model) {
        long time = 0L;
        long views = 0L;
        List<CodeShare> codeShares =   codeShareRepository
                .findTop10ByViewsAndTime(views,time, PageRequest.of(0, 10));

        // Add the codeShares list to the model
        model.addAttribute("codeShares", codeShares);

        // Return the name of the FreeMarker template
        return "latestCodePage";
    }

    /**
     * Retrieves information about the CodeShareBox platform, including its features and purpose.
     *
     * @return A string representing the name of the FreeMarker template for the "about" page.
     */
    public String getAboutUs() {
        return "about";
    }

    /**
     * Handles requests for displaying a custom 404 error page when a code snippet is not found,
     * has expired, or an incorrect URL is accessed.
     *
     * @return A string representing the name of the FreeMarker template for the custom 404 error page.
     */
    @GetMapping("/code/404")
    public String get404Error() {
        return "404";
    }

}
