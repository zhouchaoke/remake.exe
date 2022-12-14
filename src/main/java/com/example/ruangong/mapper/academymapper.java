package com.example.ruangong.mapper;

import com.example.ruangong.entity.Academy;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface academymapper {
       List<Academy> findbytype(String type);
       int findnum(String name);
       List<Academy> find();
       List<Academy> findbyid(int min,int max);
       int findnumber();
       void delete(int id);
}
