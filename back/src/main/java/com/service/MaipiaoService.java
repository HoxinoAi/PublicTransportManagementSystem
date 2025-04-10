package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.entity.MaipiaoEntity;
import com.baomidou.mybatisplus.mapper.Wrapper;
import java.util.List;

/**
 * 购票服务接口
 */
public interface MaipiaoService extends IService<MaipiaoEntity> {
    void deleteByZhanghaoAndLuxianbianhao(String zhanghao, String luxianbianhao);
    List<MaipiaoEntity> selectList(Wrapper<MaipiaoEntity> wrapper);
} 