package com.example.ruangong.controller;

import com.example.ruangong.entity.academy;
import com.example.ruangong.mapper.academymapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Random;

@CrossOrigin
@RestController
@RequestMapping
public class choicecontroller {
    @Autowired
    academymapper aca;
    @GetMapping("/academychoice")
    public academy academy_choice(String type){
         Random r = new Random();
         int number=r.nextInt(4);
         List<academy> ac = aca.findbytype(type);
         academy acad = ac.get(0);
         return acad;
    }

    @GetMapping
    public List<academy> test(){
        return aca.find();
    }
}
