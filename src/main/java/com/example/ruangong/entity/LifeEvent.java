package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class LifeEvent {
    private int id; // id标识符
    private String content; // 事件内容
    private String achievement_id_list; // 触发成就id的列表,可以为None
    private String property_change; // 引起的属性变化,没变化就全置0
    private String img_url; // 图片的连接,可以为None
    private int stage_id;// 阶段id
    private String event_type; // 类别：6个属性，阶段事件，学院事件
    private String happen_list;// 后续触发事件的id列表,可以为None
    private String game_over; // 是否引起游戏的结束, 0为结束，1为未结束
}
