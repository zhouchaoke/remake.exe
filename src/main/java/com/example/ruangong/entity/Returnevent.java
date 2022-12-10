package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returnevent {
    private Returnachievement achievement;
    private Returnlifeevent lifeEvent;
    boolean haveAchievement;
}
