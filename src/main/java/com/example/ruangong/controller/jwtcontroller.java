package com.example.ruangong.controller;

import com.example.ruangong.entity.Returntoken;
import com.example.ruangong.jwt.JwtUtils;
import com.example.ruangong.mapper.usermapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;

@CrossOrigin
@RestController
@RequestMapping
public class jwtcontroller {
    @Autowired
    JwtUtils jwt;
    @Autowired
    usermapper u;
    Returntoken re = new Returntoken();
    @GetMapping("/")
    public Returntoken token(String s){
        Date t = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String p = simpleDateFormat.format(t);
        //u.insert(p);
        try{
            re.setUser(u.find(jwt.getDate(s)));
        }catch (Exception e){
            re.setToken(jwt.createToken(p));
        }
        return re;
    }
}
