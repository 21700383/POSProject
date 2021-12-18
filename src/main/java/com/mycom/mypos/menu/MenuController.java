package com.mycom.mypos.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {

	@Autowired
	MenuService menuService;
	
	@RequestMapping(value = "/menu/list", method = RequestMethod.GET)
	public String menuList(Model model) {
		model.addAttribute("list", menuService.getMenuList());
		
		return "menu/list";
	}
	
	@RequestMapping(value = "/menu/add", method = RequestMethod.GET)
	public String addPost(){
		return "menu/addpostform";
	}
	
	@RequestMapping(value = "/menu/addok", method = RequestMethod.POST)
	public String addPostOK(MenuVO vo){
		int i = menuService.insertMenu(vo);
		if (i == 0)
			System.out.println("������ �߰� ����");
		else
			System.out.println("������ �߰� ����");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/menu/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model){
		MenuVO menuVO = menuService.getMenu(id);
		model.addAttribute("menuVO", menuVO);
		return "menu/editform";
	}
	
	@RequestMapping(value = "/menu/editok", method = RequestMethod.POST)
	public String editPostOK(MenuVO vo){
		int i = menuService.updateMenu(vo);
		if (i == 0)
			System.out.println("������ ���� ����");
		else
			System.out.println("������ ���� ����");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/menu/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id){
		int i = menuService.deleteMenu(id);
		if (i == 0)
			System.out.println("������ ���� ����");
		else
			System.out.println("������ ���� ����");
		return "redirect:../list";
	}
	
	@RequestMapping(value = "/menu/sales", method = RequestMethod.GET)
	public String menuSales(Model model) {
		int total_sales = menuService.getMenuTotal();
		model.addAttribute("total_sales", total_sales);
		model.addAttribute("list", menuService.getMenuList());
		return "menu/sales";
	}
	
	@RequestMapping(value = "/pos", method = RequestMethod.GET)
	public String menuPos(Model model) {
		model.addAttribute("list", menuService.getMenuList());
		
		return "pos";
	}
	
	@RequestMapping(value = "/updatebyone/{id}", method = RequestMethod.GET)
	public String updateByOne(@PathVariable("id") int id, Model model){
		model.addAttribute("list", menuService.getMenuList());
		
		MenuVO menuVO = menuService.getMenu(id);
		int i = menuService.updateByOne(id);
		if (i == 0)
			System.out.println("Get order success!");
		else
			System.out.println("Get order failed!");
		return "redirect:../pos";
	}
}
