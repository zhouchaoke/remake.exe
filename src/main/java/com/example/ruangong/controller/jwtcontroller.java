package com.example.ruangong.controller;

import com.example.ruangong.jwt.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping
public class jwtcontroller {
    @Autowired
    JwtUtils jwt;
    @PostMapping("/")
    public void token(){

    }
}
