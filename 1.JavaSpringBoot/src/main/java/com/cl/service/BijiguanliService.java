package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.BijiguanliEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BijiguanliView;


/**
 * 笔记管理
 *
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
public interface BijiguanliService extends IService<BijiguanliEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BijiguanliView> selectListView(Wrapper<BijiguanliEntity> wrapper);
   	
   	BijiguanliView selectView(@Param("ew") Wrapper<BijiguanliEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BijiguanliEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<BijiguanliEntity> wrapper);

}

