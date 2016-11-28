/**  
 * @Title: BasePathService.java
 * @Package com.tianhong.service.path
 * @Description: 描述
 * @author xing
 * @date 2016年11月28日 下午2:31:22
 */
package com.tianhong.service.path;

import com.tianhong.domain.path.BasePath;

/**
 * ClassName: BasePathService
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年11月28日 下午2:31:22
 */
public interface BasePathService {

	BasePath getByFlatForm(String platForm) throws Exception;

	BasePath saveFlatForm(String platForm, String path) throws Exception;
}
