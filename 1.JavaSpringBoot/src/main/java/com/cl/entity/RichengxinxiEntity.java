package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 日程信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
@TableName("richengxinxi")
public class RichengxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public RichengxinxiEntity() {
		
	}
	
	public RichengxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 名称
	 */
					
	private String mingcheng;
	
	/**
	 * 周次
	 */
					
	private String zhouci;
	
	/**
	 * 安排时间
	 */
					
	private String anpaishijian;
	
	/**
	 * 安排详情
	 */
					
	private String anpaixiangqing;
	
	/**
	 * 学号
	 */
					
	private String xuehao;
	
	/**
	 * 学生姓名
	 */
					
	private String xueshengxingming;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：名称
	 */
	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}
	/**
	 * 获取：名称
	 */
	public String getMingcheng() {
		return mingcheng;
	}
	/**
	 * 设置：周次
	 */
	public void setZhouci(String zhouci) {
		this.zhouci = zhouci;
	}
	/**
	 * 获取：周次
	 */
	public String getZhouci() {
		return zhouci;
	}
	/**
	 * 设置：安排时间
	 */
	public void setAnpaishijian(String anpaishijian) {
		this.anpaishijian = anpaishijian;
	}
	/**
	 * 获取：安排时间
	 */
	public String getAnpaishijian() {
		return anpaishijian;
	}
	/**
	 * 设置：安排详情
	 */
	public void setAnpaixiangqing(String anpaixiangqing) {
		this.anpaixiangqing = anpaixiangqing;
	}
	/**
	 * 获取：安排详情
	 */
	public String getAnpaixiangqing() {
		return anpaixiangqing;
	}
	/**
	 * 设置：学号
	 */
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
	/**
	 * 设置：学生姓名
	 */
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}

}
