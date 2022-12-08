package com.example.ruangong.controller;

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
    @GetMapping("/")
    public String token(String p){
       // SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //String p = simpleDateFormat.format(t);
        try{
            jwt.verifyToken(p);
        }catch (Exception e){
            return "error";
        }
        return jwt.getDate(p);

       // String l = jwt.createToken("p");


    }
}
