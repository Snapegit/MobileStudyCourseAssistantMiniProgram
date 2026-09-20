package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.BijiguanliEntity;
import com.cl.entity.view.BijiguanliView;

import com.cl.service.BijiguanliService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 笔记管理
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
@RestController
@RequestMapping("/bijiguanli")
public class BijiguanliController {
    @Autowired
    private BijiguanliService bijiguanliService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,BijiguanliEntity bijiguanli,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			bijiguanli.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<BijiguanliEntity> ew = new EntityWrapper<BijiguanliEntity>();

		PageUtils page = bijiguanliService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, bijiguanli), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,BijiguanliEntity bijiguanli, 
		HttpServletRequest request){
        EntityWrapper<BijiguanliEntity> ew = new EntityWrapper<BijiguanliEntity>();

		PageUtils page = bijiguanliService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, bijiguanli), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( BijiguanliEntity bijiguanli){
       	EntityWrapper<BijiguanliEntity> ew = new EntityWrapper<BijiguanliEntity>();
      	ew.allEq(MPUtil.allEQMapPre( bijiguanli, "bijiguanli")); 
        return R.ok().put("data", bijiguanliService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(BijiguanliEntity bijiguanli){
        EntityWrapper< BijiguanliEntity> ew = new EntityWrapper< BijiguanliEntity>();
 		ew.allEq(MPUtil.allEQMapPre( bijiguanli, "bijiguanli")); 
		BijiguanliView bijiguanliView =  bijiguanliService.selectView(ew);
		return R.ok("查询笔记管理成功").put("data", bijiguanliView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        BijiguanliEntity bijiguanli = bijiguanliService.selectById(id);
		bijiguanli = bijiguanliService.selectView(new EntityWrapper<BijiguanliEntity>().eq("id", id));
        return R.ok().put("data", bijiguanli);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        BijiguanliEntity bijiguanli = bijiguanliService.selectById(id);
		bijiguanli = bijiguanliService.selectView(new EntityWrapper<BijiguanliEntity>().eq("id", id));
        return R.ok().put("data", bijiguanli);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody BijiguanliEntity bijiguanli, HttpServletRequest request){
    	bijiguanli.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(bijiguanli);
        bijiguanliService.insert(bijiguanli);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody BijiguanliEntity bijiguanli, HttpServletRequest request){
    	bijiguanli.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(bijiguanli);
        bijiguanliService.insert(bijiguanli);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody BijiguanliEntity bijiguanli, HttpServletRequest request){
        //ValidatorUtils.validateEntity(bijiguanli);
        bijiguanliService.updateById(bijiguanli);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        bijiguanliService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
