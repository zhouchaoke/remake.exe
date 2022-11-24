package com.example.ruangong.mapper;

import com.example.ruangong.entity.Academy;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface academymapper {
       List<Academy> findbytype(String type);
       List<Academy> findbyname(String name);
       List<Academy> find();
}
