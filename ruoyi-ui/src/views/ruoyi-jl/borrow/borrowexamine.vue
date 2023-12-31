<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="文件名" prop="fileName">
        <el-input
          v-model="queryParams.fileName"
          placeholder="请输入文件名"
          clearable
          @keyup.enter.native="hanleQuery"
        />
      </el-form-item>
      <el-form-item label="借阅人" prop="userName">
        <el-input
          v-model="queryParams.userName"
          placeholder="请输入借阅人"
          clearable
          @keyup.enter.native="hanleQuery"
        />
      </el-form-item>
      <el-form-item label="申请时间">
        <el-date-picker
          v-model="daterangeCreateTime"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
        ></el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-table v-loading="loading" :data="borrowList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="借阅ID" align="center" prop="id" /> -->
      <el-table-column label="借阅文件" align="center" prop="fileName" />
      <el-table-column label="借阅用户" align="center" prop="userName" />
      <!-- <el-table-column label="部门" align="center" prop="deptName" /> -->
      <el-table-column label="借阅状态" align="center" prop="status" >
        <template slot-scope="scope">
          <dict-tag :options="dict.type.borrow_status" :value="scope.row.status"/>
        </template>
      </el-table-column>
      <el-table-column label="申请时间" align="center" prop="createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime) }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            v-if="scope.row.status == 1"
            size="mini"
            type="text"
            icon="el-icon-edit"
          >审批通过</el-button>
          <el-button
            v-if="scope.row.status == 0"
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="examineSubmit(scope.row,1)"
            v-hasPermi="['ruoyi-jl:borrow:examineSubmit']"
          >同意借阅</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['ruoyi-jl:borrow:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改借阅记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="文件ID" prop="fileId">
          <el-input v-model="form.fileId" placeholder="请输入文件ID" />
        </el-form-item>
        <el-form-item label="用户ID" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入用户ID" />
        </el-form-item>
        <el-form-item label="部门ID" prop="deptId">
          <el-input v-model="form.deptId" placeholder="请输入部门ID" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listBorrow, getBorrow, delBorrow, addBorrow, updateBorrow,examineList } from "@/api/ruoyi-jl/borrow";

export default {
  name: "Borrow",
  dicts: ['borrow_status'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 借阅记录表格数据
      borrowList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 文件状态时间范围
      daterangeCreateTime: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        fileId: null,
        userId: null,
        deptId: null,
        status: null,
        createTime: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        fileId: [
          { required: true, message: "文件ID不能为空", trigger: "blur" }
        ],
        userId: [
          { required: true, message: "用户ID不能为空", trigger: "blur" }
        ],
        deptId: [
          { required: true, message: "部门ID不能为空", trigger: "blur" }
        ],
        status: [
          { required: true, message: "借阅状态不能为空", trigger: "change" }
        ],
        createTime: [
          { required: true, message: "申请时间不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询借阅记录列表 */
    getList() {
      this.loading = true;
      this.queryParams.params = {};
      if (null != this.daterangeCreateTime && '' != this.daterangeCreateTime) {
        this.queryParams.params["beginCreateTime"] = this.daterangeCreateTime[0];
        this.queryParams.params["endCreateTime"] = this.daterangeCreateTime[1];
      }
      examineList(this.queryParams).then(response => {
        this.borrowList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        fileId: null,
        userId: null,
        deptId: null,
        status: null,
        createTime: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.daterangeCreateTime=[];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加借阅记录";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getBorrow(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改借阅记录";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateBorrow(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addBorrow(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除借阅记录编号为"' + ids + '"的数据项？').then(function() {
        return delBorrow(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    //同意借阅
    examineSubmit(row,param) {
      const id = row.id;
      const status = param;
      const userName = row.userName;
      const fileName = row.fileName;
      if(status == 1){
        this.$modal.confirm('确定同意"' + userName + '"借阅"' +fileName+ '"文件？').then(function() {
          return updateBorrow(id,status);
        }).then(() => {
          this.getList();
          this.$modal.msgSuccess("审批通过");
        }).catch(() => {});
      }
  },
    /** 导出按钮操作 */
    handleExport() {
      this.download('ruoyi-jl/borrow/export', {
        ...this.queryParams
      }, `borrow_${new Date().getTime()}.xlsx`)
    },
      // 文件下载处理
    handleDownload(row) {
      var name = row.fileName;
      var url = row.filePath;
      var suffix = url.substring(url.lastIndexOf("."), url.length);
      const a = document.createElement('a')
      a.setAttribute('download', name + suffix)
      a.setAttribute('target', '_blank')
      a.setAttribute('href', url)
      a.click()
    }
  }

};
</script>
