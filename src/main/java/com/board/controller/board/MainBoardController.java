package com.board.controller.board;

import com.board.dto.board.BasicCharDto;
import com.board.service.board.BasicCharService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.swing.plaf.synth.SynthSpinnerUI;

@Controller
public class MainBoardController {


    @Autowired
    private BasicCharService basicCharService;

    @RequestMapping(value="Basic.do", method = RequestMethod.GET)
    public String basicCharacter() {
        return "board/character/Basic";
    }

    @RequestMapping(value="upsetBasic.do", method = RequestMethod.POST)
    public String upsertBasicCharInfo(BasicCharDto dto) {

        System.out.println(dto);

        basicCharService.upsertBasicCharInfo(dto);
        return "board/character/Basic";
    }

}
