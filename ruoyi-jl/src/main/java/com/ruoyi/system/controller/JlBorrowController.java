package com.ruoyi.system.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.core.page.PageDomain;
import com.ruoyi.common.core.page.TableSupport;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.JlBorrowDTO;
import com.ruoyi.system.service.IJlFileService;
import com.ruoyi.system.service.ISysDeptService;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.BeanUtils;
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
import com.ruoyi.system.domain.JlBorrow;
import com.ruoyi.system.service.IJlBorrowService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 借阅记录Controller
 * 
 * @author HZL
 * @date 2023-07-26
 */
@RestController
@RequestMapping("/ruoyi-jl/borrow")
public class JlBorrowController extends BaseController
{
    @Autowired
    private IJlBorrowService jlBorrowService;

    @Autowired
    private IJlFileService jlFileService;

    @Autowired
    private ISysUserService sysUserService;

    @Autowired
    private ISysDeptService sysDeptService;

    /**
     * 查询借阅记录列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:list')")
    @GetMapping("/list")
    public TableDataInfo list(JlBorrow jlBorrow)
    {
        System.out.println("新增文件列表：");
        System.out.println(jlBorrow);
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        //LoginUser获取当前部门ID，通过当前登录用户的查询借阅记录列表
        LoginUser loginUser = getLoginUser();
        jlBorrow.setUserId(loginUser.getUserId());
        List<JlBorrow> jlBorrowList = jlBorrowService.selectJlBorrowList(jlBorrow);
        //使用DTO类型，new一个泛型为JlBorrowDTO的集合
        List<JlBorrowDTO> jlBorrowDTOList = new ArrayList<>();
        //遍历jlBorrowList，为DTO填充值
        for (JlBorrow borrow:jlBorrowList){
            JlBorrowDTO borrowDTO = new JlBorrowDTO();
            BeanUtils.copyProperties(borrow,borrowDTO);
            borrowDTO.setFilePath(jlFileService.selectJlFileByFileId(borrowDTO.getFileId()).getFilePath());
            borrowDTO.setFileName(jlFileService.selectJlFileByFileId(borrowDTO.getFileId()).getFileName());
            borrowDTO.setUserName(sysUserService.selectUserById(jlBorrowService.selectJlBorrowById(borrowDTO.getId()).getUserId()).getNickName());
            borrowDTO.setDeptName(sysDeptService.selectDeptById(loginUser.getDeptId()).getDeptName());
            jlBorrowDTOList.add(borrowDTO);
        }
        int num = jlBorrowDTOList.size();
        jlBorrowDTOList = jlBorrowDTOList.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(jlBorrowDTOList);
        resData.setTotal(num);
        return resData;
    }

    /**
     * 查询借阅记录列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:list')")
    @GetMapping("/listdto")
    public TableDataInfo listdto(JlBorrowDTO jlBorrowDTO)
    {
        System.out.println("新增文件列表：");
        System.out.println(jlBorrowDTO.toString());
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        //LoginUser获取当前用户ID，通过当前登录用户的查询借阅记录列表
        LoginUser loginUser = getLoginUser();
        jlBorrowDTO.setUserId(loginUser.getUserId());
        List<JlBorrowDTO> jlBorrowDTOList = jlBorrowService.selectJlBorrowDTOList(jlBorrowDTO);
        int num = jlBorrowDTOList.size();
        jlBorrowDTOList = jlBorrowDTOList.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(jlBorrowDTOList);
        resData.setTotal(num);
        return resData;
    }


    /**
     * 查询借阅审批列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:examinelist')")
    @GetMapping("/examinelist")
    public TableDataInfo examineList(JlBorrowDTO jlBorrowDTO)
    {
        System.out.println("新增文件列表：");
        System.out.println(jlBorrowDTO.toString());
        //因为使用了DTO，导致若依封装好的分页失效，参考https://cloud.tencent.com/developer/article/2031268
        PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        //LoginUser获取当前部门ID，通过当前部门查询借阅记录列表
        LoginUser loginUser = getLoginUser();
        jlBorrowDTO.setDeptId(loginUser.getDeptId());
        List<JlBorrowDTO> jlBorrowDTOList = jlBorrowService.selectJlBorrowDTOList(jlBorrowDTO);
        int num = jlBorrowDTOList.size();
        jlBorrowDTOList = jlBorrowDTOList.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo resData = new TableDataInfo();
        resData.setCode(0);
        resData.setRows(jlBorrowDTOList);
        resData.setTotal(num);
        return resData;
    }

    /**
     * 导出借阅记录列表
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:export')")
    @Log(title = "借阅记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, JlBorrow jlBorrow)
    {
        List<JlBorrow> list = jlBorrowService.selectJlBorrowList(jlBorrow);
        ExcelUtil<JlBorrow> util = new ExcelUtil<JlBorrow>(JlBorrow.class);
        util.exportExcel(response, list, "借阅记录数据");
    }

    /**
     * 获取借阅记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(jlBorrowService.selectJlBorrowById(id));
    }

    /**
     * 新增借阅记录
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:add')")
    @Log(title = "借阅记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody JlBorrow jlBorrow)
    {
        //根据不同code返回值，向前端返回不同信息
        int code = jlBorrowService.insertJlBorrow(jlBorrow);
        //如果code为401，当前登录账号的部门和借阅文件的部门相同，无需借阅，在部门文件菜单中即可下载
        if(code == 401){
            return AjaxResult.error("本部门文件，无需借阅，请到部门文件中查看");
        }
        //如果code为402，重复借阅申请
        if(code == 402){
            return AjaxResult.error("请勿重复申请借阅");
        }
        return toAjax(code);
    }

    /**
     * 修改借阅记录
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:examinelist')")
    @Log(title = "借阅记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody JlBorrow jlBorrow)
    {
        System.out.println(jlBorrow);
        return toAjax(jlBorrowService.updateJlBorrow(jlBorrow));
    }

    /**
     * 删除借阅记录
     */
    @PreAuthorize("@ss.hasPermi('ruoyi-jl:borrow:remove')")
    @Log(title = "借阅记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(jlBorrowService.deleteJlBorrowByIds(ids));
    }
}
