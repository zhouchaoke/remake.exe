package com.example.ruangong.controller;

import com.example.ruangong.entity.Returntoken;
import com.example.ruangong.entity.User;
import com.example.ruangong.jwt.JwtUtils;
import com.example.ruangong.mapper.usermapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

@CrossOrigin
@RestController
@RequestMapping
public class jwtcontroller {
    @Autowired
    usermapper u;
    Returntoken re = new Returntoken();
    @GetMapping("/token")
    public String token(){
        Date t = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String p = simpleDateFormat.format(t);
        //u.insert(p);
        return JwtUtils.createToken(p);
    }
    @GetMapping("/user/data")
    protected User doget(@RequestHeader("lifestartToken") String req){
            try{
                return u.find(JwtUtils.getDate(req));
            }catch (Exception e){
                return null;
            }
    }
}
