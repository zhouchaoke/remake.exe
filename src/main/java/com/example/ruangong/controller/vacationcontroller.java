package com.example.ruangong.controller;

import com.example.ruangong.entity.Vacation;
import com.example.ruangong.mapper.vacationmapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@CrossOrigin
@RestController
@RequestMapping
public class vacationcontroller {
    @Autowired
    vacationmapper aca;


    }

