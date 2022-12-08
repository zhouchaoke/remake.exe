package com.example.ruangong.controller;

import cn.hutool.log.dialect.console.ConsoleLog;
import com.example.ruangong.entity.Returntalent;
import com.example.ruangong.entity.Talent;
import com.example.ruangong.mapper.talentmapper;
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
public class talentcontroller {
    @Autowired
    talentmapper aca;
    @GetMapping("/talents")
    public List<Returntalent> talent_choice() {
       List<Talent> ac=aca.find();
       List<Returntalent> a= new ArrayList<>();
       int flag[]=new int[ac.size()];
       for(int i=0;i<ac.size();i++){
           flag[i]=0;
       }
       for(;a.size()<3;){
           Random r = new Random();
           int number = r.nextInt(ac.size());
           if(flag[number]==0) {
               Returntalent b = new Returntalent();
               b.setName(ac.get(number).getName());
               b.setRarity(ac.get(number).getRarity());
               String[] temp1 = ac.get(number).getProperty_change().split(" ");
               int[] temp2 = new int[temp1.length];
               for(int j=0;j<temp1.length;j++)
                   temp2[j]=Integer.parseInt(temp1[j]);
               b.setPropChanges(temp2);
               a.add(b);
               flag[number]=1;
           }
           else continue;
       }

        return a;
    }

}

