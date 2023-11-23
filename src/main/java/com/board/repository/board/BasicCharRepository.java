package com.board.repository.board;

import com.board.dto.board.BasicCharDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BasicCharRepository {

    @Autowired
    private SqlSession sqlSession;

    public void upsertBasicCharInfo(BasicCharDto dto) {
        System.out.println("repository"+dto.toString());
        sqlSession.update("character_info.upsetBasicCharacter", dto);
    }
}
