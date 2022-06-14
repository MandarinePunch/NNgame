package com.nngame.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.nngame.bean.SupportBean;
import com.nngame.mybatis.SqlMapConfig;

public class SupportDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public SupportDAO() {
		//autocommit
		sqlsession = factory.openSession(true);
	}
	
	public List<SupportBean> getAllList(){
		List<SupportBean> list = null;
		
		list = sqlsession.selectList("Support.getAllList");
		
		return list;
	}

}
