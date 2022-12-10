package com.example.ruangong;

import com.example.ruangong.entity.Academy;
import com.example.ruangong.mapper.academymapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class academtTest {


    @Autowired
    private academymapper aca;

    @Test
    @RepeatedTest(3)
    @DisplayName("academy的findbytype方法测试")
    void academy1() {
//       academymapper接口测试方法 判断是否取得的数组越界，即超过20个
        List<Academy> temp = aca.findbytype("文");
        Assertions.assertTrue(temp.size()<20,"数组的个数超过20了");
        System.out.println(temp);
    }

    @Test
    @DisplayName("academy的findbyname方法测试")
    void academy2(){
//        判断返回的数据是否是指定学院的相关数据
        List<Academy> temp = aca.findbyname("电气学院");
        Assertions.assertEquals("电气学院",temp.get(0).getAcademy_name());
        System.out.println(temp);
    }

    @Test
    @DisplayName("academy的find方法测试")
    void academy3(){
        List<Academy> temp = aca.findbytype("文");
        Assertions.assertNotNull(temp);
        System.out.println(temp);
    }
}
