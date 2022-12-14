package com.example.ruangong.mapper;

import com.example.ruangong.entity.Vacation;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface vacationmapper {
    List<Vacation> find();
    List<Vacation> findbyid(int min,int max);
    int findnumber();
    void delete(int id);
}
