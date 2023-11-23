package com.board.dto.board;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;

@Data
public class BasicCharDto {

    private Integer basicNo;
    private String basicId;
    private String basicNm;
    private String basicCtnt;
    private String basicFilePath;
    private String regDate;
    private String regNm;
    private String modDate;
    private String modNm;
    private String personality;
    private String publicPrivate;
}
