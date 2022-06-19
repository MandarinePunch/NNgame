package com.nngame.support.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.nngame.mybatis.SqlMapConfig;

public class SupportDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public SupportDAO() {
		//autocommit
		sqlsession = factory.openSession(true);
	}
	
	// support 게시판 모든 리스트 받아오기
	public List<SupportDTO> getSupportList(){
		List<SupportDTO> list = sqlsession.selectList("Support.getSupportList");
		
		return list;
	}
	
	// support 게시판 모든 리스트 개수 받아오기
	public int getSupportCount() {
		return sqlsession.selectOne("Support.getSupportCount");
	}
	
	// support_writer가 필요할듯함
/*	
	public List<String> getUserName() {
		List<String> list = null;
		
		list = sqlsession.selectList("Support.getUserName");
		System.out.println(list.get(0));
		
		return list;
	}
*/

	// support 게시판 특정 글 가져오기(support_num이용)
	public SupportDTO getOneWriting(String support_num) {
		SupportDTO bean = sqlsession.selectOne("Support.getOneWriting", support_num);
		
		return bean;
	}
	
	
	// 유저db만들어지면 써보자
	public void insertBoard(SupportDTO sdto) {
		sqlsession.insert("Support.insertBoard", sdto);
	}
	
	// support 글 삭제
	public void deleteBoard(String support_num) {
		sqlsession.delete("Support.deleteBoard", support_num);
	}
	
	// support 글 업데이트
	public void updateBoard(SupportDTO sdto) {
		sqlsession.update("Support.updateBoard", sdto);
	}
}























