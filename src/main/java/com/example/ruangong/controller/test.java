package com.example.ruangong.controller;

import com.example.ruangong.entity.LifeEvent;
import com.example.ruangong.mapper.eventmapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping
public class test {
    @Autowired
    eventmapper eve;
    @GetMapping("/test")
    public int test(int id){
        String s = eve.findid(id).getAchievement_id_list();
         if(s.equals("")) return 0;
         else return 1;

        //return Integer.parseInt(s);
    }
}
