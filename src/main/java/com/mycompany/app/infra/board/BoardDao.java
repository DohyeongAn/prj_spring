package com.mycompany.app.infra.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
public class BoardDao {

    @Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.infra.board.BoardMapper";

    public List<BoardVo> selectList(BoardVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }

    public BoardVo selectOne(BoardVo vo) {
        BoardVo board = sqlSession.selectOne(namespace + ".selectOne", vo);
        return board;
    }

    public int selectOneCount(BoardVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }

    public int insert(BoardVo dto) { return sqlSession.insert(namespace + ".insert", dto); }

    public int update(BoardVo dto) { return sqlSession.update(namespace + ".update", dto); }

    public int delete(BoardVo dto) { return sqlSession.delete(namespace + ".delete", dto); }

}
