package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.BijiguanliDao;
import com.cl.entity.BijiguanliEntity;
import com.cl.service.BijiguanliService;
import com.cl.entity.view.BijiguanliView;

@Service("bijiguanliService")
public class BijiguanliServiceImpl extends ServiceImpl<BijiguanliDao, BijiguanliEntity> implements BijiguanliService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<BijiguanliEntity> wrapper) {
		Page<BijiguanliView> page =new Query<BijiguanliView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BijiguanliEntity> page = this.selectPage(
                new Query<BijiguanliEntity>(params).getPage(),
                new EntityWrapper<BijiguanliEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BijiguanliEntity> wrapper) {
		  Page<BijiguanliView> page =new Query<BijiguanliView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<BijiguanliView> selectListView(Wrapper<BijiguanliEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BijiguanliView selectView(Wrapper<BijiguanliEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
