package com.example.ruangong.controller;

import com.example.ruangong.entity.*;
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
    @GetMapping("/Two")
    public Returnacademynum a(int pageNum){
        Returnacademynum e = new Returnacademynum();
        e.setTotal(aca.findnumber());
        try {
            e.setData(aca.findbyid(10*pageNum-10+1,10*pageNum));
            e.setMsg("ok");
        }catch (Exception o){
            e.setData(null);
            e.setMsg("error");
            return e;
        }
        return e;
    }
    @GetMapping("/TwoDelete")
    msg delete(int id){
        msg s=new msg();
        try {
            aca.delete(id);
            s.setMsg("ok");
        }catch (Exception o){
            s.setMsg("error");
            return s;
        }
        return s;
    }

}
