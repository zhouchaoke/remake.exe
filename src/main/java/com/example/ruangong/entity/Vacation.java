package com.example.ruangong.entity;

import lombok.Data;

@Data
public class Vacation {
    private int id;// id(唯一)
    private String content;// 假期内容
    private String property_change;// 属性改变
    private String vacation_id;// 假期id
}
