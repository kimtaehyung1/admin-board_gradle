package com.board.service.board;

import com.board.dto.board.BasicCharDto;
import com.board.repository.board.BasicCharRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BasicCharService {

    @Autowired
    private BasicCharRepository charRepository;

    public void upsertBasicCharInfo(BasicCharDto dto) {
        System.out.println("serviece"+dto.toString());
        charRepository.upsertBasicCharInfo(dto);
    }
}
