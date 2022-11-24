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

    @GetMapping("/vacation")
    public List<Vacation> vacation_event() {
        List<Vacation> ac=aca.find();
        List<Vacation> a= new ArrayList<Vacation>();
        int flag[]=new int[ac.size()];
        for(int i=0;i<ac.size();i++){
            flag[i]=0;
        }
        for(;a.size()<7;){
            Random r = new Random();
            int number = r.nextInt(ac.size());
            if(flag[number]==0) {
                a.add(ac.get(number));
                flag[number]=1;
            }
            else continue;
        }

        return a;
    }

    }

