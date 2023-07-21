package com.ruoyi.system.utils;
import lombok.Data;

import java.util.List;

/**
 * @Author: igxia
 * @Description:
 * @Date: 2023/6/7 16:35
 * @Version 1.0
 */
@Data
public class Page<T> {
    private List<T> data;
    private long total;
    private int pageNum;
    private int pageSize;
    private int pages;

    public Page(List<T> data, long total) {
        this.data = data;
        this.total = total;

        this.pages = (int) Math.ceil((double) total / pageSize);
    }
}