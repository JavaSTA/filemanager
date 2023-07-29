package com.ruoyi.system.domain;


import lombok.Data;

@Data
public class JlBorrowDTO extends JlBorrow{
    private String fileName;
    private String filePath;
    private String userName;
    private String deptName;

    @Override
    public String toString() {
        return super.toString()+"JlBorrowDTO{" +
                "fileName='" + fileName + '\'' +
                ", filePath='" + filePath + '\'' +
                ", userName='" + userName + '\'' +
                ", deptName='" + deptName + '\'' +
                '}';
    }
}
