package com.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.MaipiaoEntity;
import com.service.MaipiaoService;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 购票控制器
 */
@RestController
@RequestMapping("/api/maipiao")
public class MaipiaoController {

    @Autowired
    private MaipiaoService maipiaoService;

    /**
     * 处理购票请求
     * @param requestBody 请求体
     */
    @PostMapping
    public R maipiao(@RequestBody Map<String, Object> requestBody) {
        // 打印请求体到控制台
        System.out.println("收到的请求体: " + requestBody);

        // 构造 MaipiaoEntity 对象
        MaipiaoEntity maipiao = new MaipiaoEntity();
        maipiao.setZhanghao((String) requestBody.get("zhanghao"));
        maipiao.setLuxianbianhao((String) requestBody.get("luxianbianhao"));

        // 插入到数据库
        maipiaoService.insert(maipiao);

        return R.ok("购票成功");
    }

    /**
     * 删除购票记录
     * @param requestBody 请求体
     */
    @DeleteMapping
    public R delete(@RequestBody Map<String, Object> requestBody) {
        // 打印请求体到控制台
        System.out.println("收到的删除请求体: " + requestBody);

        // 获取请求体中的 zhanghao 和 luxianbianhao
        String zhanghao = (String) requestBody.get("zhanghao");
        String luxianbianhao = (String) requestBody.get("luxianbianhao");

        // 根据 zhanghao 和 luxianbianhao 删除记录
        maipiaoService.deleteByZhanghaoAndLuxianbianhao(zhanghao, luxianbianhao);

        return R.ok("删除成功");
    }

    @GetMapping
    public R getMaipiaoByZhanghao(@RequestParam String zhanghao) {
        // 查询 maipiao 表中 zhanghao 对应的数据
        List<MaipiaoEntity> maipiaoList = maipiaoService.selectList(
            new EntityWrapper<MaipiaoEntity>().eq("zhanghao", zhanghao)
        );
        return R.ok().put("data", maipiaoList);
    }
} 