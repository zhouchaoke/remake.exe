package com.example.ruangong.controller;

import com.example.ruangong.entity.LifeEvent;
import com.example.ruangong.entity.Union;
import com.example.ruangong.mapper.achievementmapper;
import com.example.ruangong.mapper.eventmapper;
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
public class eventcontroller {
    @Autowired
    private eventmapper eve;
    @Autowired
    private achievementmapper ach;
    @GetMapping("event")
    private Union react(String s,int stage) {
        Union union = new Union();
        List<LifeEvent> l = new ArrayList<>();
        List<LifeEvent> temp;
        List<LifeEvent> st;
        String property[] = s.split(",");
        int[] num = new int[property.length];
        for (int i = 0; i < num.length; i++) {
            num[i] = Integer.parseInt(property[i]);
        }
        //智力
        if (num[0] <= 4) {
            temp = eve.findbyid(1, 9);
            l = select(temp, l);
        } else if (num[0] >= 5 && num[0] <= 9) {
            temp = eve.findbyid(10, 18);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(19, 27);
            l = select(temp, l);
        }
        //体质
        if (num[1] <= 4) {
            temp = eve.findbyid(28, 36);
            l = select(temp, l);
        } else if (num[1] >= 5 && num[1] <= 9) {
            temp = eve.findbyid(37, 45);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(46, 54);
            l = select(temp, l);
        }
        //魅力
        if (num[2] <= 4) {
            temp = eve.findbyid(55, 63);
            l = select(temp, l);
        } else if (num[2] >= 5 && num[2] <= 9) {
            temp = eve.findbyid(64, 72);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(73, 81);
            l = select(temp, l);
        }
        //财富
        if (num[3] <= 4) {
            temp = eve.findbyid(82, 90);
            l = select(temp, l);
        } else if (num[3] >= 5 && num[3] <= 9) {
            temp = eve.findbyid(91, 99);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(100, 108);
            l = select(temp, l);
        }
        //运气
        if (num[4] <= 4) {
            temp = eve.findbyid(109,117);
            l=select(temp,l);
        }
        else if(num[4]>=5&&num[4]<=9) {
            temp = eve.findbyid(118,126);
            l=select(temp,l);
        }
        else {
            temp = eve.findbyid(127,135);
            l=select(temp,l);
        }
        //心情
        if (num[5] <= 4) {
            temp = eve.findbyid(136,144);
            l=select(temp,l);
        }
        else if(num[5]>=5&&num[5]<=9) {
            temp = eve.findbyid(145,153);
            l=select(temp,l);
        }
        else {
            temp = eve.findbyid(153,162);
            l=select(temp,l);
        }
        //阶段
        st=eve.findbystage(stage);
        l.addAll(st);
        Random r = new Random();
        int number = r.nextInt(l.size());
        LifeEvent tem = l.get(number);
        String p = tem.getAchievement_id_list();
        union.setAchievement(ach.find(p));
        union.setLifeEvent(tem);
        return union;
    }

    public List<LifeEvent> select(List<LifeEvent> l1, List<LifeEvent> l2) {


        int flag[] = new int[9];
        for (int i = 0; i < 9; i++) {
            flag[i] = 0;
        }
        for (int k = l1.size(); k < l1.size() + 3; ) {
            Random r = new Random();
            int number = r.nextInt(l1.size());
            if (flag[number] == 0) {
                l2.add(l1.get(number));
                flag[number] = 1;
                k++;
            } else continue;
        }
        return l2;
    }
}
