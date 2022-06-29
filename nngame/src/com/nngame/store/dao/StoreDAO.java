package com.nngame.store.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.nngame.mybatis.SqlMapConfig;

public class StoreDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	
	public StoreDAO() {
		// autocommit
		sqlsession = factory.openSession(true);
	}
	
	// 모든 게임리스트 받기
	public List<StoreDTO> getStoreGameList() {
		
		List<StoreDTO> storegamelist = sqlsession.selectList("Store.getStoreGameList");
		
		return storegamelist;
	}
	// 모든 리스트 오름차순가격순으로 정렬하기
	public List<StoreDTO> getSortListDESC() {
		List<StoreDTO> sortDesc = sqlsession.selectList("Store.getSortListDESC");
		
		return sortDesc;
	}
	// 모든 리스트 내림차순가격순으로 정렬하기
	public List<StoreDTO> getSortListASC() {
		List<StoreDTO> sortAsc = sqlsession.selectList("Store.getSortListASC");
		return sortAsc;
	}
	
	// 모든 게임수 받기
	public int getStoreGameCnt() {
		return sqlsession.selectOne("Store.getStoreGameCnt");
	}
	

	// 장르별 게임리스트 받기
	public List<StoreDTO> getGenreList(int genre) {
		List<StoreDTO> genrelist = sqlsession.selectList("Store.getGenreList", genre );
		
		return genrelist;
	}
	
	// 장르별 게임수 받기
	public int getGenreCnt(int genre) {
		return sqlsession.selectOne("Store.getGenreCnt", genre);
	}
	
	// 장르 리스트 오름차순가격순으로 정렬하기
	public List<StoreDTO> getSortGenreDESC(int genre) {
		List<StoreDTO> sortDesc = sqlsession.selectList("Store.getSortGenreDESC", genre);
		return sortDesc;
	}
	
	// 장르 리스트 오름차순가격순으로 정렬하기
	public List<StoreDTO> getSortGenreASC(int genre) {
		List<StoreDTO> sortAsc = sqlsession.selectList("Store.getSortGenreASC", genre);
		return sortAsc;
	}

	// 할인된 게임만 가져오기
	public List<StoreDTO> getDiscountGame() {
		List<StoreDTO> sortAsc = sqlsession.selectList("Store.getDiscountGame");
		return sortAsc;
	}

	public int getDiscountCnt() {
		return sqlsession.selectOne("Store.getDiscountCnt");
	}


	
	
	

}
