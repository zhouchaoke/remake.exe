package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class academy {
    private int id;// 唯一标识符id
    private String academy_name; // 学院名
    private String academy_type;// 学院类别, 工,理,文
    private String event_id;  // 学院特色事件id列表
    private String major_list;
}
