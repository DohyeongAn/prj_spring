package com.mycompany.app.infra.codegroup;

import java.util.List;

public interface CodeGroupService {


    public int selectOneCount(CodeGroupVo vo);
    public List<CodeGroup> selectList(CodeGroupVo vo);

    public CodeGroup selectOne(CodeGroupVo vo);

    public int update(CodeGroup dto);

    public int delete(CodeGroup dto);

    public int insert(CodeGroup dto);

    public int uelete(CodeGroup dto);

}
