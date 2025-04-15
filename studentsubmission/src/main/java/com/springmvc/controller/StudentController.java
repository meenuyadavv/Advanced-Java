package com.springmvc.controller;

import com.springmvc.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class StudentController {

    // 1. Show Dashboard
    @GetMapping("/dashboard")
    public String showDashboard() {
        return "dashboard"; // dashboard.jsp
    }

    // 2. Show Form when button is clicked
    @GetMapping("/student-form")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        return "student-form"; // student-form.jsp
    }

    // 3. Process Form submission
    @PostMapping("/process-form")
    public String processForm(@ModelAttribute("student") Student student, Model model) {
        int age = student.getAge();

        // Validate age between 3 and 6 inclusive
        if (age >= 3 && age <= 6) {
            model.addAttribute("student", student);
            return "success"; 
        } else {
            return "error";
        }
    }
}
