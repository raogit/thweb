package com.tianhong.dao.newscenter;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.newscenter.NewsCenter;

public interface NewsCenterMapper extends BaseMapper<NewsCenter> {

	int updateByPrimaryKeyWithBLOBs(NewsCenter record);

}