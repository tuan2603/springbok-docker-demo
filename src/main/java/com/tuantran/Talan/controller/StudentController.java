package com.tuantran.Talan.controller;


import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "students")
public class StudentController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    //http://localhost:8089/students/hello
    public String hello(ModelMap modelMap) {
        return "Hello world, how are you";
    }
}
