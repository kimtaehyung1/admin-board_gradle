package com.board.controller.board;

import com.board.dto.board.BasicCharDto;
import com.board.service.board.BasicCharService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.swing.plaf.synth.SynthSpinnerUI;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class MainBoardController {


    @Autowired
    private BasicCharService basicCharService;

    @RequestMapping(value="/Basic.do", method = RequestMethod.GET)
    public String basicCharacter() {
        return "board/character/Basic";
    }

    @RequestMapping(value="/upsetBasic.do", method = RequestMethod.POST)
    public String upsertBasicCharInfo(
                                      @RequestParam(value="basicId") String basicId,
                                      @RequestParam(value="basicNm") String basicNm,
                                      @RequestParam(value="basicCtnt") String basicCtnt,
                                      @RequestPart(value="basicFilePath") MultipartFile file,
                                      @RequestParam String personality,
                                      @RequestParam String publicPrivate,
                                      @RequestParam String regDate,
                                      @RequestParam String regNm,
                                      @RequestParam String modDate,
                                      @RequestParam String modNm
    ) throws IOException {

        Map<String, Object> map = new HashMap<>();
        final String uploadDir = "/Users/godds/gradle_admin-board/src/main/webapp/resources/assets/img/";

        int i = 0;

        map.put("basicId", "BASC00");
        map.put("basicNm", basicNm);
        map.put("basicCtnt", basicCtnt);
        map.put("personality", personality);
        map.put("publicPrivate", publicPrivate);
        map.put("regDate", regDate);
        map.put("regNm", regNm);
        map.put("modDate", modDate);
        map.put("modNm", modNm);

        String fullPath = "";
        if (!file.isEmpty()) {
            String filename = file.getOriginalFilename();

            fullPath = uploadDir + filename;
            file.transferTo(new File(fullPath));
        }

        map.put("basicFilePath", fullPath);

        basicCharService.upsertBasicCharInfo(map);
        return "board/character/Basic";
    }

}
