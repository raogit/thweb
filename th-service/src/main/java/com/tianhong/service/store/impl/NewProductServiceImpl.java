/**
 * 
 */
package com.tianhong.service.store.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tianhong.dao.store.NewProductMapper;
import com.tianhong.domain.store.NewProduct;
import com.tianhong.domain.user.User;
import com.tianhong.service.store.NewProductService;

/**
 * @author Administrator
 *
 */
@Service("newProductService")
@Transactional
public class NewProductServiceImpl implements NewProductService {

	@Autowired
	private NewProductMapper newProductMapper;

	public int deleteByPrimaryKey(Integer id) throws Exception {
		return newProductMapper.deleteByPrimaryKey(id);
	}

	public NewProduct insertSelective(NewProduct record) throws Exception {
		newProductMapper.insertSelective(record);
		return record;
	}

	public NewProduct getByPrimaryKey(Integer id) throws Exception {
		return newProductMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(NewProduct newProduct) throws Exception {
		return newProductMapper.updateByPrimaryKeySelective(newProduct);
	}

	public NewProduct getPage(NewProduct newProduct) throws Exception {
		List<NewProduct> page = newProductMapper.page(newProduct);
		int count = newProductMapper.count(newProduct);
		newProduct.setObj(page);
		newProduct.setTotalRow(count);
		return newProduct;
	}

	public List<NewProduct> getList(NewProduct newProduct) throws Exception {
		return newProductMapper.list(newProduct);
	}

	public NewProduct saveOrUpdate(NewProduct newProduct, User user) throws Exception {
		if (newProduct != null && newProduct.getId() > 0) {
			NewProduct product = newProductMapper.selectByPrimaryKey(newProduct.getId());
			if (product != null) {
				product.setName(newProduct.getName());
				product.setDescriber(newProduct.getDescriber());
				product.setUpdateId(user.getId());
				product.setUpdateTime(new Date());
				newProductMapper.updateByPrimaryKeySelective(product);
				return product;
			}
		}
		newProduct.setCreateId(user.getId());
		newProduct.setCreateTime(new Date());
		newProductMapper.insertSelective(newProduct);

		return newProduct;
	}

}
