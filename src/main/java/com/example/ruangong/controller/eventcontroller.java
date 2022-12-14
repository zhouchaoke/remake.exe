package com.example.ruangong.controller;

import com.example.ruangong.entity.*;
import com.example.ruangong.mapper.achievementmapper;
import com.example.ruangong.mapper.eventmapper;
import com.example.ruangong.mapper.vacationmapper;
import org.apache.logging.log4j.util.Strings;
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
    @Autowired
    private vacationmapper vac;

    @GetMapping("/event")
    public Returnevent react(int[] props, int[] achievementList, int academyId, int[] eventList) {
        Returnevent union = new Returnevent();
        List<LifeEvent> l = new ArrayList<>();
        List<LifeEvent> temp;
        List<LifeEvent> st;
        Returnlifeevent k = new Returnlifeevent();
        Returnachievement o = new Returnachievement();
        //智力
        if (props[0] <= 4) {
            temp = eve.findbyid(1, 9);
            l = select(temp, l);
        } else if (props[0] >= 5 && props[0] <= 9) {
            temp = eve.findbyid(10, 18);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(19, 27);
            l = select(temp, l);
        }
        //体质
        if (props[1] <= 4) {
            temp = eve.findbyid(28, 36);
            l = select(temp, l);
        } else if (props[1] >= 5 && props[1] <= 9) {
            temp = eve.findbyid(37, 45);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(46, 54);
            l = select(temp, l);
        }
        //魅力
        if (props[2] <= 4) {
            temp = eve.findbyid(55, 63);
            l = select(temp, l);
        } else if (props[2] >= 5 && props[2] <= 9) {
            temp = eve.findbyid(64, 72);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(73, 81);
            l = select(temp, l);
        }
        //财富
        if (props[3] <= 4) {
            temp = eve.findbyid(82, 90);
            l = select(temp, l);
        } else if (props[3] >= 5 && props[3] <= 9) {
            temp = eve.findbyid(91, 99);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(100, 108);
            l = select(temp, l);
        }
        //运气
        if (props[4] <= 4) {
            temp = eve.findbyid(109, 117);
            l = select(temp, l);
        } else if (props[4] >= 5 && props[4] <= 9) {
            temp = eve.findbyid(118, 126);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(127, 135);
            l = select(temp, l);
        }
        //心情
        if (props[5] <= 4) {
            temp = eve.findbyid(136, 144);
            l = select(temp, l);
        } else if (props[5] >= 5 && props[5] <= 9) {
            temp = eve.findbyid(145, 153);
            l = select(temp, l);
        } else {
            temp = eve.findbyid(154, 162);
            l = select(temp, l);
        }
        //阶段
        st = eve.findbystage(academyId);
        l.addAll(st);
        for(int i=eventList.length-1;i>0;i--) {
            for(int j=0;j<l.size();j++)
            {
                if(l.get(j).getId()==eventList[i])
                    l.remove(j);
            }
        }
        for(int i=l.size()-1;i>=0;i--) {
            int c = 0;
            if(!l.get(i).getPrecondition().equals("")) {
                for (int j = 0; j < eventList.length; j++) {
                    if (l.get(i).getPrecondition().equals(String.valueOf(eventList[j]))) {
                        c = 1;
                    }
                }
                if(c==0)
                    l.remove(i);
            }
        }
        Random r = new Random();
        int propsber = r.nextInt(l.size());
        LifeEvent tem = l.get(propsber);
        k.setId(tem.getId());
        k.setContent(tem.getContent());
        if (tem.getGame_over().equals("1")) {
            k.setGameOver(true);
        } else {
            k.setGameOver(false);
        }
        String s = tem.getProperty_change();
        String[] str=s.split(" ");
        int[] op=new int[6];
        for(int i=0;i<str.length;i++)
        {
          op[i]=Integer.parseInt(str[i]);
        }
        k.setPropertyChange(op);
        union.setLifeEvent(k);
        String p = tem.getAchievement_id_list();
        int flag=0;
        if(!p.equals("")) {
            int pp = Integer.parseInt(p);
            for (int i = 0; i < achievementList.length; i++) {
                if (achievementList[i] == pp) {
                    union.setHaveAchievement(false);
                    flag = 1;
                    union.setAchievement(null);
                    break;
                }
            }
            if (flag == 0) {
                o.setId(ach.find(p).getId());
                o.setRarity(ach.find(p).getRarity());
                o.setName(ach.find(p).getName());
                union.setAchievement(o);
                union.setHaveAchievement(true);
            }
        }
        else {
            union.setHaveAchievement(false);
            union.setAchievement(null);
        }
        return union;

    }
    @GetMapping("/indexwel")
    public Returneventnum returneventnum(int pageNum){
        Returneventnum e = new Returneventnum();
        e.setTotal(eve.findnum());
        try {
            e.setData(eve.findbyid(10*pageNum-10+1,10*pageNum));
            e.setMsg("ok");
        }catch (Exception o){
            e.setData(null);
            e.setMsg("error");
            return e;
        }
        return e;
    }

    public List<LifeEvent> select(List<LifeEvent> l1, List<LifeEvent> l2) {


        int flag[] = new int[9];
        for (int i = 0; i < 9; i++) {
            flag[i] = 0;
        }
        for (int k = l1.size(); k < l1.size() + 3; ) {
            Random r = new Random();
            int propsber = r.nextInt(l1.size());
            if (flag[propsber] == 0) {
                l2.add(l1.get(propsber));
                flag[propsber] = 1;
                k++;
            } else continue;
        }
        return l2;
    }
}
