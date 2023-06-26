package com.mycompany.app.codegroup;

import java.util.List;

public interface CodeGroupService {

    public List<CodeGroup> selectList(CodeGroupVo vo);

    public CodeGroup selectOne(CodeGroupVo vo);
}
