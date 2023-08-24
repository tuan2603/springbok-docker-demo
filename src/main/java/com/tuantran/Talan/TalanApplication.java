package com.tuantran.Talan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportRuntimeHints;

@SpringBootApplication
@ImportRuntimeHints(TalanRuntimeHints.class)
public class TalanApplication {

	public static void main(String[] args) {
		SpringApplication.run(TalanApplication.class, args);
	}

}
