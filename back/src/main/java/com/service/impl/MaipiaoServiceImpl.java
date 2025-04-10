package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.MaipiaoDao;
import com.entity.MaipiaoEntity;
import com.service.MaipiaoService;
import org.springframework.stereotype.Service;

/**
 * 购票服务实现类
 */
@Service("maipiaoService")
public class MaipiaoServiceImpl extends ServiceImpl<MaipiaoDao, MaipiaoEntity> implements MaipiaoService {

    @Override
    public void deleteByZhanghaoAndLuxianbianhao(String zhanghao, String luxianbianhao) {
        // 根据 zhanghao 和 luxianbianhao 删除记录
        this.delete(new EntityWrapper<MaipiaoEntity>()
                .eq("zhanghao", zhanghao)
                .eq("luxianbianhao", luxianbianhao));
    }
} 