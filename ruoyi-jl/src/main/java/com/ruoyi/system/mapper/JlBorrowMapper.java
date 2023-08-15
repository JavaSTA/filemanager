package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.JlBorrow;
import com.ruoyi.system.domain.JlBorrowDTO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 借阅记录Mapper接口
 * 
 * @author HZL
 * @date 2023-07-26
 */
@Mapper
public interface JlBorrowMapper
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
     * 删除借阅记录
     * 
     * @param id 借阅记录主键
     * @return 结果
     */
    public int deleteJlBorrowById(Long id);

    /**
     * 批量删除借阅记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteJlBorrowByIds(Long[] ids);


    List<JlBorrowDTO> selectJlBorrowDTOList(JlBorrowDTO jlBorrowDTO);

}
