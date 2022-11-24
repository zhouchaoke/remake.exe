package com.example.ruangong.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Achievement {
    private String event_need;// 触发需要的事件id列表，可以为空
    private String property_need;// 触发需要的属性列表,长6，可以为空
    private int id; // 唯一标识id
    private String rarity; // 颜色（稀有度）
    private String name;
}
