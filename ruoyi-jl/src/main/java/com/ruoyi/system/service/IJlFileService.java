package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.JlFile;
import com.ruoyi.system.domain.JlFileDTO;

/**
 * 文件管理Service接口
 * 
 * @author HZL
 * @date 2023-07-17
 */
public interface IJlFileService 
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
     * 查询部门文件管理
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
     * 批量删除文件管理
     * 
     * @param fileIds 需要删除的文件管理主键集合
     * @return 结果
     */
    public int deleteJlFileByFileIds(Long[] fileIds);

    /**
     * 删除文件管理信息
     * 
     * @param fileId 文件管理主键
     * @return 结果
     */
    public int deleteJlFileByFileId(Long fileId);


    /**
     * 公开/取消文件
     * @param jlFile
     */
    void openFile(JlFile jlFile);
}
