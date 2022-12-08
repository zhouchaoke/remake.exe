package com.example.ruangong.mapper;

import com.example.ruangong.entity.Achievement;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface achievementmapper {
    Achievement find(String id);
    int find_all();
    List<Achievement> find_by_type(String type);
    int find_num(String type);
}
