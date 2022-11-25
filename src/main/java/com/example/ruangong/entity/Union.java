package com.example.ruangong.entity;

import lombok.Data;

import java.util.List;

@Data
public class Union {
    private Achievement achievement;
    private LifeEvent lifeEvent;
    private List<Vacation> vacation;
}
