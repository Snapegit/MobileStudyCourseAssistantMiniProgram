package com.cl.dao;

import com.cl.entity.BijiguanliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BijiguanliView;


/**
 * 笔记管理
 * 
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
public interface BijiguanliDao extends BaseMapper<BijiguanliEntity> {
	
	List<BijiguanliView> selectListView(@Param("ew") Wrapper<BijiguanliEntity> wrapper);

	List<BijiguanliView> selectListView(Pagination page,@Param("ew") Wrapper<BijiguanliEntity> wrapper);
	
	BijiguanliView selectView(@Param("ew") Wrapper<BijiguanliEntity> wrapper);
	
	List<BijiguanliView> selectGroupBy(Pagination page,@Param("ew") Wrapper<BijiguanliEntity> wrapper);

}
