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

    public List<Board> selectList(BoardVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }

    public Board selectOne(BoardVo vo) {
        Board board = sqlSession.selectOne(namespace + ".selectOne", vo);
        return board;
    }

    public int selectOneCount(BoardVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }

    public int insert(Board dto) { return sqlSession.insert(namespace + ".insert", dto); }


}
