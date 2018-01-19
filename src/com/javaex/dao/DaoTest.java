package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class DaoTest {

	public static void main(String[] args) {
		
		GuestbookVo vo = new GuestbookVo();
		GuestbookDao dao = new GuestbookDao();
		
		dao.insert(vo);
		
		List<GuestbookVo> gList = dao.getList();
		for(GuestbookVo gVo : gList) {
			System.out.println(gVo.toString());
		}
		
	}

}
