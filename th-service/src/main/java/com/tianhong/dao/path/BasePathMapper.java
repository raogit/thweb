package com.tianhong.dao.path;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.path.BasePath;

public interface BasePathMapper extends BaseMapper<BasePath> {

	BasePath selectByFlatForm(String flatForm);

}