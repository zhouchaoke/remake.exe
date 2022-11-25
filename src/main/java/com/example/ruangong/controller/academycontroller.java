package com.example.ruangong.controller;

import com.example.ruangong.entity.Academy;
import com.example.ruangong.mapper.academymapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Random;

@CrossOrigin
@RestController
@RequestMapping
public class academycontroller {
    @Autowired
    academymapper aca;
    @GetMapping("/academychoice")
    public Academy academy_choice(String type){
         Random r = new Random();
         int number=r.nextInt(4);
         List<Academy> ac = aca.findbytype(type);
         Academy acad = ac.get(number);
         String str = acad.getMajor_list();
         String st[] = str.split(" ");
         number=r.nextInt(st.length);
         acad.setMajor_list(st[number]);
         return acad;
    }

}
