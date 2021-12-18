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
	public MenuVO getMenu(int id) {
		return MenuDAO.getMenu(id);
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
		return total_sales;
	}

	@Override
	public int updateByOne(int id) {
		MenuVO vo = MenuDAO.getMenu(id);
		int stock, numsold;
		stock = vo.getStock() - 1; // minus 1 on items remaining
		numsold = vo.getNumsold() + 1; // plus 1 on items sold
		vo.setStock(stock);
		vo.setNumsold(numsold);
		return MenuDAO.updateByOne(vo);
	}
	
}
