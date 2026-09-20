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


import com.cl.dao.RichengxinxiDao;
import com.cl.entity.RichengxinxiEntity;
import com.cl.service.RichengxinxiService;
import com.cl.entity.view.RichengxinxiView;

@Service("richengxinxiService")
public class RichengxinxiServiceImpl extends ServiceImpl<RichengxinxiDao, RichengxinxiEntity> implements RichengxinxiService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<RichengxinxiEntity> wrapper) {
		Page<RichengxinxiView> page =new Query<RichengxinxiView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RichengxinxiEntity> page = this.selectPage(
                new Query<RichengxinxiEntity>(params).getPage(),
                new EntityWrapper<RichengxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<RichengxinxiEntity> wrapper) {
		  Page<RichengxinxiView> page =new Query<RichengxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<RichengxinxiView> selectListView(Wrapper<RichengxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public RichengxinxiView selectView(Wrapper<RichengxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
