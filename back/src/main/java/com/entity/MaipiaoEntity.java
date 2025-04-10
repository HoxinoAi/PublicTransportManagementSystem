package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;

/**
 * 购票表
 */
@TableName("maipiao")
public class MaipiaoEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Long id;

    private String zhanghao;

    private String luxianbianhao;

    // getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getZhanghao() {
        return zhanghao;
    }

    public void setZhanghao(String zhanghao) {
        this.zhanghao = zhanghao;
    }

    public String getLuxianbianhao() {
        return luxianbianhao;
    }

    public void setLuxianbianhao(String luxianbianhao) {
        this.luxianbianhao = luxianbianhao;
    }
} 