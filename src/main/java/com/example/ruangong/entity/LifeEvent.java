package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class LifeEvent {
    private int _id; // id标识符
    private String _content; // 事件内容
    private List<Integer> _achievementIdList; // 触发成就id的列表,可以为None
    private boolean _done; // 事件是否已经触发,1为触发,0为，没触发过
    private List<Integer> _propertyChange; // 引起的属性变化,6长的数组，没变化就全置0
    private String _imgUrl; // 图片的连接,可以为None
    private String _type; // 类别：6个属性，阶段事件，学院事件
    private int _stageId; // 阶段id
    private List<Integer> _noHappenList; // 后续不触发事件的id列表，可以为None
    private List<Integer> _happenList;// 后续触发事件的id列表,可以为None
    private boolean _gameOver; // 是否引起游戏的结束, 0为结束，1为未结束
}
