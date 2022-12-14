package com.example.ruangong.mapper;

import com.example.ruangong.entity.LifeEvent;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface eventmapper {
      List<LifeEvent> findbyid(int min,int max);
      List<LifeEvent> findbystage(int stage);
      LifeEvent findid(int id);
      int findnum();
}
