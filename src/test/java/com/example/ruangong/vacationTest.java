package com.example.ruangong;
import com.example.ruangong.entity.Academy;
import com.example.ruangong.entity.Achievement;
import com.example.ruangong.entity.Talent;
import com.example.ruangong.entity.Vacation;
import com.example.ruangong.mapper.academymapper;
import com.example.ruangong.mapper.achievementmapper;
import com.example.ruangong.mapper.talentmapper;
import com.example.ruangong.mapper.vacationmapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Repeat;

import java.util.List;


@SpringBootTest
public class vacationTest {

    @Autowired
    private vacationmapper aca;

    @Test
    @DisplayName("vacation的find方法测试")
    void vacation1(){
//      验证数组的第一个元素是否id为1
        List<Vacation> temp = aca.find();
        Assertions.assertEquals(1,temp.get(0).getId());
        System.out.println(temp);
    }


}
