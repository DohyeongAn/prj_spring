package com.mycompany.app.infra.board;



import java.util.List;

public interface BoardService {

    public int selectOneCount(BoardVo vo);

    public List<BoardVo> selectList(BoardVo vo);

    public BoardVo selectOne(BoardVo vo);

    public int insert(BoardVo vo);

    public int update(BoardVo vo);

    public int delete(BoardVo vo);

    public int viewCnt(BoardVo vo);
}
