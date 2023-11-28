package com.board.repository.board;

import com.board.dto.board.BasicCharDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public class BasicCharRepository {

    @Autowired
    private SqlSession sqlSession;

    public void upsertBasicCharInfo(Map<String, Object> map) {
        sqlSession.update("character_info.upsetBasicCharacter", map );
    }
}
