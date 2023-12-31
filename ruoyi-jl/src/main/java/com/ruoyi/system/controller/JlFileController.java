package com.ruoyi.system.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysDept;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.core.page.PageDomain;
import com.ruoyi.common.core.page.TableSupport;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.JlFileDTO;
import com.ruoyi.system.service.ISysDeptService;
import com.ruoyi.system.service.ISysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.JlFile;
import com.ruoyi.system.service.IJlFileService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.util.UriUtils;

/**
 * 文件管理Controller
 *
 * @author HZL
 * @date 2023-07-17
 */
@Slf4j
@RestController
@RequestMapping("/ruoyi-jl/file")
public class JlFileController extends BaseController {
    @Autowired
    private IJlFileService jlFileService;

    @Autowired
    private ISysDeptService sysDeptService;

    @Autowired
    private ISysUserService sysUserService;


    /**
     * 查询文件列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:list')")
    @GetMapping("/list")
    public TableDataInfo list(JlFile jlFile) {
        //设置分页
        //startPage();
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        System.out.println(jlFile);
        //查询文件列表
        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
        //由于JlFile类没有用户和部门名字，只有Id，需要设计一个JlFileDTO类，继承JlFile，并添加用户名和部门名属性
        List<JlFileDTO> listDTO = new ArrayList<>();
        //遍历list集合，在循环中为DTO填充值，并add到listDTO中
        for (JlFile file : list) {
            JlFileDTO jlFileDTO = new JlFileDTO();
            BeanUtils.copyProperties(file, jlFileDTO);
            SysDept sysDept = sysDeptService.selectDeptById(file.getDeptId());
            jlFileDTO.setDeptName(sysDept.getDeptName());
            SysUser sysUser = sysUserService.selectUserById(file.getUserId());
            jlFileDTO.setUserName(sysUser.getNickName());
            listDTO.add(jlFileDTO);
        }
        int num = listDTO.size();
        listDTO = listDTO.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(listDTO);
        resData.setTotal(num);
        return resData;
    }

    /**
     * 根据Id查询私人文件
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:privatelist')")
    @GetMapping("/privateList")
    public TableDataInfo privateList(JlFile jlFile) {
        //设置分页
        //startPage();
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        //获取当前登录Id，
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        jlFile.setUserId(user.getUserId());
        jlFile.setFileType(0L);
        System.out.println(jlFile);
        //查询文件列表
        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
        //由于JlFile类没有用户和部门名字，只有Id，需要设计一个JlFileDTO类，继承JlFile，并添加用户名和部门名属性
        List<JlFileDTO> listDTO = new ArrayList<>();
        //遍历list集合，在循环中为DTO填充值，并add到listDTO中
        for (JlFile file : list) {
            JlFileDTO jlFileDTO = new JlFileDTO();
            BeanUtils.copyProperties(file, jlFileDTO);
            SysDept sysDept = sysDeptService.selectDeptById(file.getDeptId());
            jlFileDTO.setDeptName(sysDept.getDeptName());
            SysUser sysUser = sysUserService.selectUserById(file.getUserId());
            jlFileDTO.setUserName(sysUser.getNickName());
            listDTO.add(jlFileDTO);
        }

        int num = listDTO.size();
        listDTO = listDTO.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(listDTO);
        resData.setTotal(num);
        return resData;
    }

    /**
     * 查询部门文件列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:deptlist')")
    @GetMapping("/deptlist")
    public TableDataInfo deptList(JlFile jlFile) {
        //设置分页
        //startPage();
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        //获取当前登录Id，
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        jlFile.setDeptId(user.getDeptId());
        jlFile.setFileType(1L);
        System.out.println(jlFile);
        //查询文件列表
        List<JlFile> list = jlFileService.selectDeptFileList(jlFile);
        //由于JlFile类没有用户和部门名字，只有Id，需要设计一个JlFileDTO类，继承JlFile，并添加用户名和部门名属性
        List<JlFileDTO> listDTO = new ArrayList<>();
        //遍历list集合，在循环中为DTO填充值，并add到listDTO中
        for (JlFile file : list) {
            JlFileDTO jlFileDTO = new JlFileDTO();
            BeanUtils.copyProperties(file, jlFileDTO);
            SysDept sysDept = sysDeptService.selectDeptById(file.getDeptId());
            jlFileDTO.setDeptName(sysDept.getDeptName());
            SysUser sysUser = sysUserService.selectUserById(file.getUserId());
            jlFileDTO.setUserName(sysUser.getNickName());
            listDTO.add(jlFileDTO);
        }

        int num = listDTO.size();
        listDTO = listDTO.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(listDTO);
        resData.setTotal(num);
        return resData;
    }


    /**
     * 查询公共文件列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:publiclist')")
    @GetMapping("/publiclist")
    public TableDataInfo publicList(JlFile jlFile) {
        //设置分页
        //startPage();
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        System.out.println(jlFile.toString());
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        jlFile.setFileType(2L);
        System.out.println(jlFile);
        //查询文件列表
        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
        //由于JlFile类没有用户和部门名字，只有Id，需要设计一个JlFileDTO类，继承JlFile，并添加用户名和部门名属性
        List<JlFileDTO> listDTO = new ArrayList<>();
        //遍历list集合，在循环中为DTO填充值，并add到listDTO中
        for (JlFile file : list) {
            JlFileDTO jlFileDTO = new JlFileDTO();
            BeanUtils.copyProperties(file, jlFileDTO);
            SysDept sysDept = sysDeptService.selectDeptById(file.getDeptId());
            jlFileDTO.setDeptName(sysDept.getDeptName());
            SysUser sysUser = sysUserService.selectUserById(file.getUserId());
            jlFileDTO.setUserName(sysUser.getNickName());
            listDTO.add(jlFileDTO);
        }

        int num = listDTO.size();
        listDTO = listDTO.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(listDTO);
        resData.setTotal(num);
        return resData;
    }

    /**
     * 查询归档文件列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:borrowlist')")
    @GetMapping("/borrowlist")
    public TableDataInfo borrowList(JlFile jlFile) {
        //设置分页
        //startPage();
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        System.out.println(jlFile.toString());
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        jlFile.setFileType(1L);
        jlFile.setStatus(1L);
        System.out.println(jlFile);
        //查询文件列表
        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
        //由于JlFile类没有用户和部门名字，只有Id，需要设计一个JlFileDTO类，继承JlFile，并添加用户名和部门名属性
        List<JlFileDTO> listDTO = new ArrayList<>();
        //遍历list集合，在循环中为DTO填充值，并add到listDTO中
        for (JlFile file : list) {
            JlFileDTO jlFileDTO = new JlFileDTO();
            BeanUtils.copyProperties(file, jlFileDTO);
            SysDept sysDept = sysDeptService.selectDeptById(file.getDeptId());
            jlFileDTO.setDeptName(sysDept.getDeptName());
            SysUser sysUser = sysUserService.selectUserById(file.getUserId());
            jlFileDTO.setUserName(sysUser.getNickName());
            listDTO.add(jlFileDTO);
        }

        int num = listDTO.size();
        listDTO = listDTO.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(listDTO);
        resData.setTotal(num);
        return resData;
    }

    /**
     * 导出文件管理列表
     */
//    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:export')")
//    @Log(title = "文件管理", businessType = BusinessType.EXPORT)
//    @PostMapping("/export")
//    public void export(HttpServletResponse response, JlFile jlFile)
//    {
//        List<JlFile> list = jlFileService.selectJlFileList(jlFile);
//        ExcelUtil<JlFile> util = new ExcelUtil<JlFile>(JlFile.class);
//        util.exportExcel(response, list, "文件管理数据");
//    }

    /**
     * 获取文件管理详细信息
     */
//    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:query')")
//    @GetMapping(value = "/{fileId}")
//    public AjaxResult getInfo(@PathVariable("fileId") Long fileId)
//    {
//        return success(jlFileService.selectJlFileByFileId(fileId));
//    }

    /**
     * 新增文件管理
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:add')")
    @Log(title = "文件管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody JlFile jlFile) {
        System.out.println("文件信息如下：");
        System.out.println(jlFile.toString());
        LoginUser loginUser = getLoginUser();
        Long userId = loginUser.getUserId();
        jlFile.setUserId(userId);
        jlFile.setStatus(0L);
        return toAjax(jlFileService.insertJlFile(jlFile));
    }

    /**
     * 修改文件管理
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:file:put')")
    @Log(title = "文件管理", businessType = BusinessType.UPDATE)
    @PutMapping("/updateFile")
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
    public AjaxResult remove(@PathVariable Long[] fileIds) {
        return toAjax(jlFileService.deleteJlFileByFileIds(fileIds));
    }

}
