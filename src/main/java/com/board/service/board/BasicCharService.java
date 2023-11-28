package com.board.service.board;

import com.board.dto.board.BasicCharDto;
import com.board.repository.board.BasicCharRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service
public class BasicCharService {

    @Autowired
    private BasicCharRepository charRepository;

    public void upsertBasicCharInfo(Map<String, Object> map) {
        charRepository.upsertBasicCharInfo(map);
    }
}
