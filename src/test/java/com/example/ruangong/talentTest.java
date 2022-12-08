package com.example.ruangong;

import com.example.ruangong.entity.Academy;
import com.example.ruangong.entity.Achievement;
import com.example.ruangong.entity.Talent;
import com.example.ruangong.mapper.academymapper;
import com.example.ruangong.mapper.achievementmapper;
import com.example.ruangong.mapper.talentmapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Repeat;

import java.util.List;

@SpringBootTest
public class talentTest {
    @Autowired
    private talentmapper aca;

    @Test
    @DisplayName("talent的find方法测试")
    void achievement1(){
//        判断数据返回的数量是否正确
      List<Talent> temp = aca.find();
        Assertions.assertEquals(40,temp.size());
        System.out.println(temp.size());
    }


}
