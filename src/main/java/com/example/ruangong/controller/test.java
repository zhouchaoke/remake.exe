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
    public boolean test(int id){
        int[] a=new int[]{10,5,6,3,4};
       return eve.findid(id).getPrecondition().equals(String.valueOf(a[0]));


        //return Integer.parseInt(s);
    }
}
