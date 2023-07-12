package com.mycompany.app.infra.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
public class MemberDao {

    @Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.infra.member.MemberMapper";

    public List<Member> selectList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }


    public Member selectOne(MemberVo vo) {
        Member member = sqlSession.selectOne(namespace + ".selectOne", vo);
        return member;
    }

    public Member selectOneLogin(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneLogin", vo); }

    public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }

    public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }

    public int delete(Member dto) { return sqlSession.delete(namespace + ".delete", dto); }

    public int insert(Member dto) { return sqlSession.insert(namespace + ".insert", dto); }

    public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }

}
