package com.example.ruangong.controller;

import com.example.ruangong.entity.*;
import com.example.ruangong.mapper.achievementmapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping
public class achievementcontroller {
      @Autowired
      achievementmapper ach;
      @GetMapping("/achievements")
      public List<Returnachievement> achievement(int page,int limit,String type,int[] ids){
         List<Achievement> p = ach.find_by_type(type);
         List<Returnachievement> k = new ArrayList<>();
         if(!type.equals("")) {
             for (int i = 0; i < limit && page * limit - limit + i < ach.find_num(type); i++) {
                 Returnachievement temp = new Returnachievement();
                 temp.setId(p.get(page * limit - limit + i).getId());
                 temp.setName(p.get(page * limit - limit + i).getName());
                 temp.setRarity(p.get(page * limit - limit + i).getRarity());
                 k.add(temp);
             }
         }
         else{
             for(int i=0;i<limit&&page*limit-limit+i<ids.length;i++){
                 Returnachievement temp = new Returnachievement();
                 temp.setName(ach.find(String.valueOf(ids[page*limit-limit+i])).getName());
                 temp.setId(ach.find(String.valueOf(ids[page*limit-limit+i])).getId());
                 temp.setRarity(ach.find(String.valueOf(ids[page*limit-limit+i])).getRarity());
                 k.add(temp);
             }
         }
         return k;
      }
      @GetMapping("/source")
      public Returnachievementnumber number(){
          Returnachievementnumber r = new Returnachievementnumber();
          r.setCommonAchievementsNum(ach.find_num("普通成就"));
          r.setSpecialAchievementsNum(ach.find_num("特殊成就"));
          return r;
      }
      @GetMapping("/Three")
      public Returnachievementnum a(int pageNum){
          Returnachievementnum e = new Returnachievementnum();
          e.setTotal(ach.findnum());
          try {
              e.setData(ach.findbyid(10*pageNum-10+1,10*pageNum));
              e.setMsg("ok");
          }catch (Exception o){
              e.setData(null);
              e.setMsg("error");
              return e;
          }
          return e;
      }
    @GetMapping("/ThreeDelete")
    msg delete(int id){
        msg s=new msg();
        try {
            ach.delete(id);
            s.setMsg("ok");
        }catch (Exception o){
            s.setMsg("error");
            return s;
        }
        return s;
    }
}
