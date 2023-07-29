package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.JlBorrow;
import com.ruoyi.system.domain.JlBorrowDTO;

/**
 * 借阅记录Service接口
 * 
 * @author HZL
 * @date 2023-07-26
 */
public interface IJlBorrowService 
{
    /**
     * 查询借阅记录
     * 
     * @param id 借阅记录主键
     * @return 借阅记录
     */
    public JlBorrow selectJlBorrowById(Long id);

    /**
     * 查询借阅记录列表
     *
     * @param jlBorrow 借阅记录
     * @return 借阅记录集合
     */
    public List<JlBorrow> selectJlBorrowList(JlBorrow jlBorrow);

    /**
     * 查询借阅记录列表
     *
     * @param jlBorrowDTO 借阅记录
     * @return 借阅记录集合
     */
    public List<JlBorrowDTO> selectJlBorrowDTOList(JlBorrowDTO jlBorrowDTO);

    /**
     * 新增借阅记录
     * 
     * @param jlBorrow 借阅记录
     * @return 结果
     */
    public int insertJlBorrow(JlBorrow jlBorrow);

    /**
     * 修改借阅记录
     * 
     * @param jlBorrow 借阅记录
     * @return 结果
     */
    public int updateJlBorrow(JlBorrow jlBorrow);

    /**
     * 批量删除借阅记录
     * 
     * @param ids 需要删除的借阅记录主键集合
     * @return 结果
     */
    public int deleteJlBorrowByIds(Long[] ids);

    /**
     * 删除借阅记录信息
     * 
     * @param id 借阅记录主键
     * @return 结果
     */
    public int deleteJlBorrowById(Long id);
}
