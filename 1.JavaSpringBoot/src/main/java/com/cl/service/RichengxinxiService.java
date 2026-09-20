package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.RichengxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.RichengxinxiView;


/**
 * 日程信息
 *
 * @author 
 * @email 
 * @date 2024-02-24 14:41:41
 */
public interface RichengxinxiService extends IService<RichengxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RichengxinxiView> selectListView(Wrapper<RichengxinxiEntity> wrapper);
   	
   	RichengxinxiView selectView(@Param("ew") Wrapper<RichengxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RichengxinxiEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<RichengxinxiEntity> wrapper);

}

