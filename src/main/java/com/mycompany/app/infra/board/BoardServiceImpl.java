package com.mycompany.app.infra.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    BoardDao dao;

    @Override
    public int selectOneCount(BoardVo vo) {return dao.selectOneCount(vo);}

    @Override
    public List<BoardVo> selectList(BoardVo vo) { return dao.selectList(vo); }

    @Override
    public BoardVo selectOne(BoardVo vo) { return dao.selectOne(vo); }

    @Override
    public int insert(BoardVo vo) { return dao.insert(vo); }

    @Override
    public int update(BoardVo vo) { return dao.update(vo); }

    @Override
    public int delete(BoardVo vo) { return dao.delete(vo); }

    @Override
    public int viewCnt(BoardVo vo) { return dao.viewCnt(vo); }
}
