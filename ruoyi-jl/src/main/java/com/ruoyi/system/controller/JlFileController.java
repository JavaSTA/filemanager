package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.JlFile;
import com.ruoyi.system.service.IJlFileService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 文件管理Controller
 * 
 * @author HZL
 * @date 2023-07-17
 */
@RestController
@RequestMapping("/ruoyi-jl/file")
public class JlFileController extends BaseController
{
    @Autowired
    private IJlFileService jlFileService;

    /**
     * 查询文件管理列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:list')")
    @GetMapping("/list")
    public TableDataInfo list(JlFile jlFile)
    {
        startPage();
        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
        return getDataTable(list);
    }

    /**
     * 导出文件管理列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:export')")
    @Log(title = "文件管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, JlFile jlFile)
    {
        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
        ExcelUtil<JlFile> util = new ExcelUtil<JlFile>(JlFile.class);
        util.exportExcel(response, list, "文件管理数据");
    }

    /**
     * 获取文件管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:query')")
    @GetMapping(value = "/{fileId}")
    public AjaxResult getInfo(@PathVariable("fileId") Long fileId)
    {
        return success(jlFileService.selectJlFileByFileId(fileId));
    }

    /**
     * 新增文件管理
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:add')")
    @Log(title = "文件管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody JlFile jlFile)
    {
        return toAjax(jlFileService.insertJlFile(jlFile));
    }

    /**
     * 修改文件管理
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:edit')")
    @Log(title = "文件管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody JlFile jlFile)
    {
        return toAjax(jlFileService.updateJlFile(jlFile));
    }

    /**
     * 删除文件管理
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:remove')")
    @Log(title = "文件管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fileIds}")
    public AjaxResult remove(@PathVariable Long[] fileIds)
    {
        return toAjax(jlFileService.deleteJlFileByFileIds(fileIds));
    }
}
