package com.example.ruangong.entity;

import lombok.Data;

@Data
public class Returnlifeevent {
    private int id;
    private String content;
    private int[] propertyChange;
    private boolean gameover;
}
