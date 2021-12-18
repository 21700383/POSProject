package com.mycom.mypos.menu;

import java.util.List;

public interface MenuService {
	public int insertMenu(MenuVO vo);
	public int deleteMenu(int id);
	public int updateMenu(MenuVO vo);
	public MenuVO getMenu(int id);
	public List<MenuVO> getMenuList();
	public int getMenuTotal();
	public int updateByOne(int id);
}
