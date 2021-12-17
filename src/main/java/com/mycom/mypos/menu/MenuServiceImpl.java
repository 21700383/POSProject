package com.mycom.mypos.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl implements MenuService{

	@Autowired
	MenuDAO MenuDAO;
	
	@Override
	public int insertMenu(MenuVO vo) {
		return MenuDAO.insertMenu(vo);
	}

	@Override
	public MenuVO getMenu(int seq) {
		return MenuDAO.getMenu(seq);
	}
	
	@Override
	public List<MenuVO> getMenuList() {
		return MenuDAO.getMenuList();
	}
	
	@Override
	public int deleteMenu(int id) {
		return MenuDAO.deleteMenu(id);
	}

	@Override
	public int updateMenu(MenuVO vo) {
		return MenuDAO.updateMenu(vo);
	}
	
	@Override
	public int getMenuTotal() {
		List<MenuVO> menu = MenuDAO.getMenuList();
		int sales,total_sales = 0;
		for(MenuVO item : menu){ // for each dish in menu
			sales = item.getCost() * item.getNumsold();
			item.setSales(sales);
			MenuDAO.updateSales(item);
			total_sales += sales;
		}
		System.out.println("√— ∏≈√‚:" + total_sales);
		return total_sales;
	}

}
