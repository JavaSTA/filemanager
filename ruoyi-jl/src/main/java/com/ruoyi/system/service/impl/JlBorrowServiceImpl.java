package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.JlBorrowDTO;
import com.ruoyi.system.service.IJlFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.JlBorrowMapper;
import com.ruoyi.system.domain.JlBorrow;
import com.ruoyi.system.service.IJlBorrowService;

import static com.ruoyi.common.utils.SecurityUtils.getLoginUser;

/**
 * 借阅记录Service业务层处理
 * 
 * @author HZL
 * @date 2023-07-26
 */
@Service
public class JlBorrowServiceImpl implements IJlBorrowService 
{
    @Autowired
    private JlBorrowMapper jlBorrowMapper;
    @Autowired
    private IJlFileService jlFileService;

    /**
     * 查询借阅记录
     * 
     * @param id 借阅记录主键
     * @return 借阅记录
     */
    @Override
    public JlBorrow selectJlBorrowById(Long id)
    {
        return jlBorrowMapper.selectJlBorrowById(id);
    }

    /**
     * 查询借阅记录列表
     * 
     * @param jlBorrow 借阅记录
     * @return 借阅记录
     */
    @Override
    public List<JlBorrow> selectJlBorrowList(JlBorrow jlBorrow)
    {
        return jlBorrowMapper.selectJlBorrowList(jlBorrow);
    }

    @Override
    public List<JlBorrowDTO> selectJlBorrowDTOList(JlBorrowDTO jlBorrowDTO) {
        return jlBorrowMapper.selectJlBorrowDTOList(jlBorrowDTO);
    }

    /**
     * 新增借阅记录
     * 
     * @param jlBorrow 借阅记录
     * @return 结果
     */
    @Override
    public int insertJlBorrow(JlBorrow jlBorrow)
    {
        //当前登录用户信息
        LoginUser loginUser = getLoginUser();
        Long userId = loginUser.getUserId();
        jlBorrow.setUserId(userId);
        Long deptId = loginUser.getDeptId();
        //如果当前用户的部门和参数中借阅文件的所属部门相同，是本部门文件，无需借阅
        if(deptId.equals(jlBorrow.getDeptId())){
            return 401;
        }
        //清空当前借阅实体的部门属性
        jlBorrow.setDeptId(null);
        //根据借阅文件ID和借阅用户ID查询，如果查询结果不为空，就是重复借阅，返回402
        List<JlBorrow> jlBorrows = jlBorrowMapper.selectJlBorrowList(jlBorrow);
        if (!jlBorrows.isEmpty()){
            return 402;
        }
        //填充属性，执行insert方法
        jlBorrow.setDeptId(jlFileService.selectJlFileByFileId(jlBorrow.getFileId()).getDeptId());
        jlBorrow.setStatus(0L);
        jlBorrow.setCreateTime(DateUtils.getNowDate());
        System.out.println(jlBorrow.toString());
        return jlBorrowMapper.insertJlBorrow(jlBorrow);
    }

    /**
     * 修改借阅记录
     * 
     * @param jlBorrow 借阅记录
     * @return 结果
     */
    @Override
    public int updateJlBorrow(JlBorrow jlBorrow)
    {
        return jlBorrowMapper.updateJlBorrow(jlBorrow);
    }

    /**
     * 批量删除借阅记录
     * 
     * @param ids 需要删除的借阅记录主键
     * @return 结果
     */
    @Override
    public int deleteJlBorrowByIds(Long[] ids)
    {
        return jlBorrowMapper.deleteJlBorrowByIds(ids);
    }

    /**
     * 删除借阅记录信息
     * 
     * @param id 借阅记录主键
     * @return 结果
     */
    @Override
    public int deleteJlBorrowById(Long id)
    {
        return jlBorrowMapper.deleteJlBorrowById(id);
    }
}
