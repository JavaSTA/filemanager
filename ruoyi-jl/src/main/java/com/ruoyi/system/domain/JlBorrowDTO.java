package com.ruoyi.system.domain;


import lombok.Data;

@Data
public class JlBorrowDTO extends JlBorrow{
    private String fileName;
    private String filePath;
    private String userName;
    private String deptName;
}
