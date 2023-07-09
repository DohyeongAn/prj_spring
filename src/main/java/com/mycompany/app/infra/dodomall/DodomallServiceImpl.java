package com.mycompany.app.infra.dodomall;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DodomallServiceImpl implements DodomallService{

    @Autowired
    DodomallDao dao;

    @Override
    public int selectOneCount(DodomallVo vo) {return dao.selectOneCount(vo);}

    @Override
    public List<Dodomall> selectList(DodomallVo vo) { return dao.selectList(vo); }

    @Override
    public Dodomall selectOne(DodomallVo vo) { return dao.selectOne(vo); }

    @Override
    public int update(Dodomall dto) { return dao.update(dto); }

    @Override
    public int delete(Dodomall dto) { return dao.delete(dto); }

    @Override
    public int insert(Dodomall dto) { return dao.insert(dto); }

    @Override
    public int uelete(Dodomall dto) { return dao.uelete(dto); }
}
