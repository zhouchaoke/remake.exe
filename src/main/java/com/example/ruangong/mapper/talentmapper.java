package com.example.ruangong.mapper;

import com.example.ruangong.entity.Talent;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface talentmapper {
    List<Talent> find();
    int findnumber();
    List<Talent> findbyid(int min,int max);
    void delete(int id);
}
