package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.JlFile;
import com.ruoyi.system.domain.JlFileDTO;

/**
 * 文件管理Mapper接口
 * 
 * @author HZL
 * @date 2023-07-17
 */
public interface JlFileMapper 
{
    /**
     * 查询文件管理
     * 
     * @param fileId 文件管理主键
     * @return 文件管理
     */
    public JlFile selectJlFileByFileId(Long fileId);

    /**
     * 查询文件管理列表
     * 
     * @param jlFile 文件管理
     * @return 文件管理集合
     */
    public List<JlFile> selectJlFileList(JlFile jlFile);


    /**
     * 查询部门以及公开文件
     * @param jlFile
     * @return
     */
    public List<JlFile> selectDeptFileList(JlFile jlFile);
    /**
     * 新增文件管理
     * 
     * @param jlFile 文件管理
     * @return 结果
     */
    public int insertJlFile(JlFile jlFile);

    /**
     * 修改文件管理
     * 
     * @param jlFile 文件管理
     * @return 结果
     */
    public int updateJlFile(JlFile jlFile);

    /**
     * 删除文件管理
     * 
     * @param fileId 文件管理主键
     * @return 结果
     */
    public int deleteJlFileByFileId(Long fileId);

    /**
     * 批量删除文件管理
     * 
     * @param fileIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteJlFileByFileIds(Long[] fileIds);



}
