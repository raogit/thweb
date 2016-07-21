package com.tianhong.dao.picture;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.picture.Picture;

public interface PictureMapper extends BaseMapper<Picture> {

	int updateByPrimaryKeyWithBLOBs(Picture record);

	Picture selectByMenuId(Integer menuId) throws Exception;

}