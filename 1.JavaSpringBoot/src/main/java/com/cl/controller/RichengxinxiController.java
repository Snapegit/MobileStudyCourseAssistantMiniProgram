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

import com.cl.entity.RichengxinxiEntity;
import com.cl.entity.view.RichengxinxiView;

import com.cl.service.RichengxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 日程信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
@RestController
@RequestMapping("/richengxinxi")
public class RichengxinxiController {
    @Autowired
    private RichengxinxiService richengxinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,RichengxinxiEntity richengxinxi,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			richengxinxi.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<RichengxinxiEntity> ew = new EntityWrapper<RichengxinxiEntity>();

		PageUtils page = richengxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, richengxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,RichengxinxiEntity richengxinxi, 
		HttpServletRequest request){
        EntityWrapper<RichengxinxiEntity> ew = new EntityWrapper<RichengxinxiEntity>();

		PageUtils page = richengxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, richengxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( RichengxinxiEntity richengxinxi){
       	EntityWrapper<RichengxinxiEntity> ew = new EntityWrapper<RichengxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( richengxinxi, "richengxinxi")); 
        return R.ok().put("data", richengxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(RichengxinxiEntity richengxinxi){
        EntityWrapper< RichengxinxiEntity> ew = new EntityWrapper< RichengxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( richengxinxi, "richengxinxi")); 
		RichengxinxiView richengxinxiView =  richengxinxiService.selectView(ew);
		return R.ok("查询日程信息成功").put("data", richengxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        RichengxinxiEntity richengxinxi = richengxinxiService.selectById(id);
		richengxinxi = richengxinxiService.selectView(new EntityWrapper<RichengxinxiEntity>().eq("id", id));
        return R.ok().put("data", richengxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        RichengxinxiEntity richengxinxi = richengxinxiService.selectById(id);
		richengxinxi = richengxinxiService.selectView(new EntityWrapper<RichengxinxiEntity>().eq("id", id));
        return R.ok().put("data", richengxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody RichengxinxiEntity richengxinxi, HttpServletRequest request){
    	richengxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(richengxinxi);
        richengxinxiService.insert(richengxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody RichengxinxiEntity richengxinxi, HttpServletRequest request){
    	richengxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(richengxinxi);
        richengxinxiService.insert(richengxinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody RichengxinxiEntity richengxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(richengxinxi);
        richengxinxiService.updateById(richengxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        richengxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
