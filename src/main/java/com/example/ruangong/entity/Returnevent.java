package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Returnevent {
    private Returnachievement returnachievement;
    private Returnlifeevent returnlifeevent;
    boolean haveAchievement;
}
