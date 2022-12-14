package com.example.ruangong.controller;

import com.example.ruangong.entity.*;
import com.example.ruangong.jwt.JwtUtils;
import com.example.ruangong.mapper.academymapper;
import com.example.ruangong.mapper.eventmapper;
import com.example.ruangong.mapper.usermapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@CrossOrigin
@RestController
@RequestMapping
public class test {
    @Autowired
    eventmapper eve;
    @Autowired
    academymapper aca;
    @Autowired
    usermapper u;
    Returntoken re = new Returntoken();

    @GetMapping("/test")
    public Returntoken list(String req) {
        String s = u.find(JwtUtils.getDate(req)).getCommonAchievementList();
        if (s != null&&!s.equals("")) {
            String[] st = s.split(" ");
            int[] p1 = new int[st.length];
            for (int i = 0; i < st.length; i++)
                p1[i] = Integer.parseInt(st[i]);
            re.setCommonAchievemntList(p1);
        } else re.setCommonAchievemntList(null);
        String s1 = u.find(JwtUtils.getDate(req)).getSpecialAchievementList();
        if (s1 != null&&!s1.equals("")) {
            String[] s2 = s1.split(" ");
            int[] p2 = new int[s2.length];
            for (int i = 0; i < s2.length; i++)
                p2[i] = Integer.parseInt(s2[i]);
            re.setSpecialAchievementList(p2);
        } else re.setSpecialAchievementList(null);
        re.setRestartNum(u.find(JwtUtils.getDate(req)).getRestartNum());
        return re;
    }
}



