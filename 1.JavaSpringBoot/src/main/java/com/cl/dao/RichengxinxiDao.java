package com.cl.dao;

import com.cl.entity.RichengxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.RichengxinxiView;


/**
 * 日程信息
 * 
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
public interface RichengxinxiDao extends BaseMapper<RichengxinxiEntity> {
	
	List<RichengxinxiView> selectListView(@Param("ew") Wrapper<RichengxinxiEntity> wrapper);

	List<RichengxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<RichengxinxiEntity> wrapper);
	
	RichengxinxiView selectView(@Param("ew") Wrapper<RichengxinxiEntity> wrapper);
	
	List<RichengxinxiView> selectGroupBy(Pagination page,@Param("ew") Wrapper<RichengxinxiEntity> wrapper);

}
