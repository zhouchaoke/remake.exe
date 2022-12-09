package com.example.ruangong.controller;

import com.example.ruangong.entity.LifeEvent;
import com.example.ruangong.mapper.academymapper;
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
    @Autowired
    academymapper aca;
    @GetMapping("/test")
    public boolean test(String type,int[] ids){
           if(type==null) return true;
           else return false;
    }
}
