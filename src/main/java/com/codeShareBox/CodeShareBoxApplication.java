package com.codeShareBox;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CodeShareBoxApplication {

	public static void main(String[] args) {
		SpringApplication.run(CodeShareBoxApplication.class, args);
	}

}
