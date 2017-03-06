package com.tianhong.dao.picture;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tianhong.dao.base.BaseMapper;
import com.tianhong.domain.picture.Picture;

public interface PictureMapper extends BaseMapper<Picture> {

	int updateByPrimaryKeyWithBLOBs(Picture record);

	List<Picture> pageEjournals(Picture picture) throws Exception;

	List<Picture> pageEjournalsList(Picture picture) throws Exception;

	List<Picture> findEjournalsByMenuId(Integer menuId) throws Exception;

	List<Picture> findByMenuId(Integer menuId) throws Exception;

	List<Picture> findInvestmentByMenuId(Integer menuId) throws Exception;

	byte selectMaxSort(@Param("menuId") int menuId, @Param("pictureType") byte pictureType) throws Exception;

}