package com.sealinetech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/8/14.
 */
@Controller
@RequestMapping("/")
public class HelloWorld {
    @RequestMapping("hello.do")
    @ResponseBody
    public List<Map<String, Object>> Hello() {
        //return "index";
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map1 = new HashMap<>();
        map1.put("name", "Zhang San");
        map1.put("age", "20");
        map1.put("address", "Zheng Zhou");
        list.add(map1);

        Map<String, Object> map2 = new HashMap<>();
        map2.put("name", "Li Si");
        map2.put("age", "26");
        map2.put("address", "Luo yang");
        list.add(map2);

        return list;
    }
}
