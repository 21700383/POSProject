package com.mycom.mypos.menu;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDAO {

	@Autowired
	SqlSession sqlSession;

	public int insertMenu(MenuVO vo) {
		int result = sqlSession.insert("Menu.insertMenu", vo);
		return result;
	}

	public int deleteMenu(int id) {
		int result = sqlSession.delete("Menu.deleteMenu", id);
		return result;
	}

	public int updateMenu(MenuVO vo) {
		int result = sqlSession.update("Menu.updateMenu", vo);
		return result;
	}

	public MenuVO getMenu(int seq) {
		MenuVO one = sqlSession.selectOne("Menu.getMenu", seq);
		return one;
	}

	public List<MenuVO> getMenuList() {
		List<MenuVO> list = sqlSession.selectList("Menu.getMenuList");
		return list;
	}
}
