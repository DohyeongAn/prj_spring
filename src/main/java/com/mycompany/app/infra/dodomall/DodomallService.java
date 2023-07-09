package com.mycompany.app.infra.dodomall;

import java.util.List;

public interface DodomallService {

    public int selectOneCount(DodomallVo vo);

    public List<Dodomall> selectList(DodomallVo vo);

    public Dodomall selectOne(DodomallVo vo);

    public int update(Dodomall dto);

    public int delete(Dodomall dto);

    public int insert(Dodomall dto);

    public int uelete(Dodomall dto);

}
