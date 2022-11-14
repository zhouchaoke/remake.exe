package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Achievement {
    private List<Integer> _eventsNeed;// 触发需要的事件id列表，可以为空
    private List<Integer> _propertiesNeed;// 触发需要的属性列表,长6，可以为空
    private int _id; // 唯一标识id
    private String _color; // 颜色（稀有度）
}
