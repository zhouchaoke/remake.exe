package com.example.ruangong.entity;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Major {
    private int id;// 唯一标识符id
    private String _name; // 专业明
    private String _type;// 学院类别, 工,理,文
    private List<Integer> _eventIds;  // 专业特色事件id列表
}
