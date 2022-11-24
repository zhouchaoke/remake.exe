package com.example.ruangong.entity;

import lombok.Data;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Data
public class Talent {
    private int id;// 唯一表示符id
    private String name;// 名称
    private String rarity;// 颜色（稀有度）
    private String property_change; // 玩家属性的改变,可以为None
    private String talent_event_id; // 天赋专属事件,可以为None
}
