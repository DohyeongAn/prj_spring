package com.mycompany.app.infra.dodomall;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
public class DodomallDao {

    @Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.infra.dodomall.DodomallMapper";

    public List<Dodomall> selectList(DodomallVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }

    public Dodomall selectOne(DodomallVo vo) {
        Dodomall dodomall = sqlSession.selectOne(namespace + ".selectOne", vo);
        return dodomall;
    }

    public int selectOneCount(DodomallVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }

    public int update(Dodomall dto) { return sqlSession.update(namespace + ".update", dto); }

    public int delete(Dodomall dto) { return sqlSession.delete(namespace + ".delete", dto); }

    public int insert(Dodomall dto) { return sqlSession.insert(namespace + ".insert", dto); }

    public int uelete(Dodomall dto) { return sqlSession.update(namespace + ".uelete", dto); }
    
}
