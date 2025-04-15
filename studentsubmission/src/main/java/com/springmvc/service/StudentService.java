package com.springmvc.service;

import org.springframework.stereotype.Service;

@Service
public class StudentService {

    public boolean isValidAge(int age) {
        // Valid age: 3, 4, 5, 6 only
        return age >= 3 && age <= 6;
    }
}
