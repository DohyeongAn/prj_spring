package com.mycompany.app.infra.board;



import java.util.List;

public interface BoardService {

    public int selectOneCount(BoardVo vo);

    public List<Board> selectList(BoardVo vo);

    public Board selectOne(BoardVo vo);

    public int insert(Board dto);
}
