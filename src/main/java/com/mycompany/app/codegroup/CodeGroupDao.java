package com.mycompany.app.codegroup;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
public class CodeGroupDao{

    @Inject
    @Resource(name="sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.codegroup.CodeGroupMapper";

    public List<CodeGroup> selectList(){return sqlSession.selectList(namespace+".selectList","");}

//    public List<CodeGroup> selectList(){
//        return sqlSession.selectList(namespace+".selectList");
//    }



}