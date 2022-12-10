package com.example.ruangong.controller;

import com.example.ruangong.entity.Academy;
import com.example.ruangong.entity.Returnacademy;
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
    @GetMapping("/major")
    public Returnacademy academy_choice(String majorType){
         Returnacademy rac = new Returnacademy();
         Random r = new Random();
         int number=r.nextInt(aca.findnum(majorType));
         List<Academy> ac = aca.findbytype(majorType);
         Academy acad = ac.get(number);
         String str = acad.getMajor_list();
         String st[] = str.split(" ");
         number=r.nextInt(st.length);
         rac.setAcademyId(acad.getId());
         rac.setMajorName(st[number]);
         return rac;
    }

}
