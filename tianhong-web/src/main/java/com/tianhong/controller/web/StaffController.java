/**  
 * @Title: CultureController.java
 * @Package com.tianhong.controller.web
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
 */
package com.tianhong.controller.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tianhong.controller.base.BaseController;
import com.tianhong.domain.content.Content;
import com.tianhong.domain.menu.Menu;
import com.tianhong.domain.picture.Picture;
import com.tianhong.service.content.ContentService;
import com.tianhong.service.menu.MenuService;
import com.tianhong.service.picture.PictureService;

/**
 * ClassName: CultureController
 * 
 * @Description: 描述
 * @author xing
 * @date 2016年9月21日 下午2:28:14
 */
@Controller
@RequestMapping(value = "/web/staff")
public class StaffController extends BaseController {

	private static final Log log = LogFactory.getLog(StaffController.class);

	@Autowired
	private MenuService menuService;
	@Autowired
	private ContentService contentService;
	@Autowired
	private PictureService pictureService;

	@RequestMapping(value = "/index")
	public Object index(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("parentMenu", menuService.getByPrimaryKey(menuId));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menuId, true);
			model.put("subMenus", subMenus);
			model.put("menu", subMenus.get(0));
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
			
			for(Menu me : subMenus){
				if(me.getName().indexOf("天虹商学院")>-1){
					List<Menu> subs = menuService.getSubMenus(me.getId(), true);
					for(Menu m : subs){
						if(m.getName().indexOf("商学院简介")>-1){
							Content buz = contentService.getByMenuId(m.getId());
							model.put("buz", buz);
							break;
						}
					}
					for(Menu m : subs){
						if(m.getName().indexOf("创新中心")>-1){
							List<Menu> subCreates = menuService.getSubMenus(m.getId(), true);
							for(Menu e : subCreates){
								if(e.getName().indexOf("E-learnning系统")>-1){
									Content learnning = contentService.getByMenuId(e.getId());
									model.put("learnning", learnning);
									break;
								}
							}
							for(Menu e : subCreates){
								if(e.getName().indexOf("KMS系统")>-1){
									Content kms = contentService.getByMenuId(e.getId());
									model.put("kms", kms);
									break;
								}
							}
							for(Menu e : subCreates){
								if(e.getName().indexOf("创新大赛")>-1){
									Content innovate = contentService.getByMenuId(e.getId());
									model.put("innovate", innovate);
									break;
								}
							}
						}
					}
					for(Menu m : subs){
						if(m.getName().indexOf("培训中心")>-1){
							Content train = contentService.getByMenuId(m.getId());
							model.put("train", train);
							break;
						}
					}
					for(Menu m : subs){
						if(m.getName().indexOf("同济大学")>-1){
							Content tongji  = contentService.getByMenuId(m.getId());
							model.put("tongji ", tongji );
							break;
						}
					}
					for(Menu m : subs){
						if(m.getName().indexOf("场地租赁")>-1){
							List<Menu> subCreates = menuService.getSubMenus(m.getId(), true);
							for(Menu e : subCreates){
								if(e.getName().indexOf("场地介绍")>-1){
									Content introduction = contentService.getByMenuId(e.getId());
									model.put("introduction", introduction);
									break;
								}
							}
							for(Menu e : subCreates){
								if(e.getName().indexOf("租赁方式")>-1){
									Content leaseMode = contentService.getByMenuId(e.getId());
									model.put("leaseMode", leaseMode);
									break;
								}
							}
							break;
						}
					}
					break;
				}
			}
			
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/staff/school", model);
	}

	@RequestMapping(value = "/school")
	public Object school(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
			
			
			List<Menu> subs = menuService.getSubMenus(menuId, true);

			for(Menu m : subs){
				if(m.getName().indexOf("商学院简介")>-1){
					Content buz = contentService.getByMenuId(m.getId());
					model.put("buz", buz);
					break;
				}
			}
			for(Menu m : subs){
				if(m.getName().indexOf("创新中心")>-1){
					List<Menu> subCreates = menuService.getSubMenus(m.getId(), true);
					for(Menu e : subCreates){
						if(e.getName().indexOf("E-learnning系统")>-1){
							Content learnning = contentService.getByMenuId(e.getId());
							model.put("learnning", learnning);
							break;
						}
					}
					for(Menu e : subCreates){
						if(e.getName().indexOf("KMS系统")>-1){
							Content kms = contentService.getByMenuId(e.getId());
							model.put("kms", kms);
							break;
						}
					}
					for(Menu e : subCreates){
						if(e.getName().indexOf("创新大赛")>-1){
							Content innovate = contentService.getByMenuId(e.getId());
							model.put("innovate", innovate);
							break;
						}
					}
				}
			}
			for(Menu m : subs){
				if(m.getName().indexOf("培训中心")>-1){
					Content train = contentService.getByMenuId(m.getId());
					model.put("train", train);
					break;
				}
			}
			for(Menu m : subs){
				if(m.getName().indexOf("同济大学")>-1){
					Content tongJi  = contentService.getByMenuId(m.getId());
					model.put("tongJiMba", tongJi);
					break;
				}
			}
			for(Menu m : subs){
				if(m.getName().indexOf("场地租赁")>-1){
					List<Menu> subCreates = menuService.getSubMenus(m.getId(), true);
					for(Menu e : subCreates){
						if(e.getName().indexOf("场地介绍")>-1){
							Content introduction = contentService.getByMenuId(e.getId());
							model.put("introduction", introduction);
							break;
						}
					}
					for(Menu e : subCreates){
						if(e.getName().indexOf("租赁方式")>-1){
							Content leaseMode = contentService.getByMenuId(e.getId());
							model.put("leaseMode", leaseMode);
							break;
						}
					}
					break;
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/staff/school", model);
	}

	@RequestMapping(value = "/talent")
	public Object talent(@RequestParam("menuId") int menuId, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			Menu menu = menuService.getByPrimaryKey(menuId);
			model.put("parentMenu", menuService.getByPrimaryKey(menu.getParentId()));
			List<Menu> headMenus = menuService.getSubMenus(172, true);
			model.put("headMenus", headMenus);

			List<Menu> subMenus = menuService.getSubMenus(menu.getParentId(), true);
			model.put("subMenus", subMenus);
			model.put("menu", menu);
			Content content = contentService.getByMenuId(subMenus.get(0).getId());
			model.put("content", content);
			List<Picture> pictures = pictureService.findByMenuId(subMenus.get(0).getId());
			model.put("pictures", pictures);
			
			List<Menu> subs = menuService.getSubMenus(menuId, true);

			for(Menu m : subs){
				if(m.getName().indexOf("人才理念")>-1){
					List<Menu> subTalents = menuService.getSubMenus(m.getId(), true);
					for(Menu e : subTalents){
						if(e.getName().indexOf("培训中心1")>-1){
							Content trainingCenter1 = contentService.getByMenuId(e.getId());
							model.put("trainingCenter1", trainingCenter1);
							break;
						}
					}
					for(Menu e : subTalents){
						if(e.getName().indexOf("培训中心2")>-1){
							Content trainingCenter2 = contentService.getByMenuId(e.getId());
							model.put("trainingCenter2", trainingCenter2);
							break;
						}
					}
					break;
				}
			}
			
			for(Menu m : subs){
				if(m.getName().indexOf("培养晋升")>-1){
					List<Menu> subTalents = menuService.getSubMenus(m.getId(), true);
					for(Menu e : subTalents){
						if(e.getName().indexOf("知识管理体系")>-1){
							Content knowledge = contentService.getByMenuId(e.getId());
							model.put("knowledge", knowledge);
							break;
						}
					}
					for(Menu e : subTalents){
						if(e.getName().indexOf("优才计划")>-1){
							Content plan = contentService.getByMenuId(e.getId());
							model.put("plan", plan);
							break;
						}
					}
					for(Menu e : subTalents){
						if(e.getName().indexOf("新秀动力营")>-1){
							Content newStar = contentService.getByMenuId(e.getId());
							model.put("newStar", newStar);
							break;
						}
					}
					for(Menu e : subTalents){
						if(e.getName().indexOf("天虹商学院")>-1){
							Content thBuz = contentService.getByMenuId(e.getId());
							model.put("thBuz", thBuz);
							break;
						}
					}
					break;
				}
			}
			for(Menu m : subs){
				if(m.getName().indexOf("薪酬福利")>-1){
					List<Menu> subWagess = menuService.getSubMenus(m.getId(), true);
					
					Content wages01 = contentService.getByMenuId(subWagess.get(0).getId());
					model.put("wages01", wages01);
					Content wages02 = contentService.getByMenuId(subWagess.get(1).getId());
					model.put("wages02", wages02);
					Content wages03 = contentService.getByMenuId(subWagess.get(2).getId());
					model.put("wages03", wages03);
					Content wages04 = contentService.getByMenuId(subWagess.get(3).getId());
					model.put("wages04", wages04);
					Content wages05 = contentService.getByMenuId(subWagess.get(4).getId());
					model.put("wages05", wages05);
					Content wages06 = contentService.getByMenuId(subWagess.get(5).getId());
					model.put("wages06", wages06);
				}
			}
		} catch (Exception e) {
			log.error("", e);
		}
		return new ModelAndView("/web/staff/talent", model);
	}

}
