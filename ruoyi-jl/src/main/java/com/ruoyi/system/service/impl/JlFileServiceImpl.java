package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.JlFileDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.JlFileMapper;
import com.ruoyi.system.domain.JlFile;
import com.ruoyi.system.service.IJlFileService;

/**
 * 文件管理Service业务层处理
 * 
 * @author HZL
 * @date 2023-07-17
 */
@Service
public class JlFileServiceImpl implements IJlFileService 
{
    @Autowired
    private JlFileMapper jlFileMapper;

    /**
     * 查询文件管理
     * 
     * @param fileId 文件管理主键
     * @return 文件管理
     */
    @Override
    public JlFile selectJlFileByFileId(Long fileId)
    {
        return jlFileMapper.selectJlFileByFileId(fileId);
    }

    /**
     * 查询文件管理列表
     *
     * @param jlFile 文件管理
     * @return 文件管理
     */
    @Override
    public List<JlFile> selectJlFileList(JlFile jlFile)
    {
        return jlFileMapper.selectJlFileList(jlFile);
    }

    @Override
    public List<JlFile> selectDeptFileList(JlFile jlFile) {
        return jlFileMapper.selectDeptFileList(jlFile);
    }


    /**
     * 新增文件管理
     * 
     * @param jlFile 文件管理
     * @return 结果
     */
    @Override
    public int insertJlFile(JlFile jlFile)
    {
        jlFile.setCreateTime(DateUtils.getNowDate());
        return jlFileMapper.insertJlFile(jlFile);
    }

    /**
     * 修改文件管理
     * 
     * @param jlFile 文件管理
     * @return 结果
     */
    @Override
    public int updateJlFile(JlFile jlFile)
    {
        return jlFileMapper.updateJlFile(jlFile);
    }

    /**
     * 批量删除文件管理
     * 
     * @param fileIds 需要删除的文件管理主键
     * @return 结果
     */
    @Override
    public int deleteJlFileByFileIds(Long[] fileIds)
    {
        return jlFileMapper.deleteJlFileByFileIds(fileIds);
    }

    /**
     * 删除文件管理信息
     * 
     * @param fileId 文件管理主键
     * @return 结果
     */
    @Override
    public int deleteJlFileByFileId(Long fileId)
    {
        return jlFileMapper.deleteJlFileByFileId(fileId);
    }
}
