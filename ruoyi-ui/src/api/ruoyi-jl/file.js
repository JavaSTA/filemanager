import request from '@/utils/request'

// 查询文件管理列表
export function listFile(query) {
  return request({
    url: '/ruoyi-jl/file/list',
    method: 'get',
    params: query
  })
}

// 查询私人文件列表
export function privateListFile(query) {
  return request({
    url: '/ruoyi-jl/file/privateList',
    method: 'get',
    params: query
  })
}

// 查询当前部门文件列表
export function deptListFile(query) {
  return request({
    url: '/ruoyi-jl/file/deptlist',
    method: 'get',
    params: query
  })
}

// 查询公共文件列表
export function publicListFile(query) {
  return request({
    url: '/ruoyi-jl/file/publiclist',
    method: 'get',
    params: query
  })
}

// 查询文件管理详细
export function getFile(fileId) {
  return request({
    url: '/ruoyi-jl/file/' + fileId,
    method: 'get'
  })
}

// 新增文件管理
export function addFile(data) {
  return request({
    url: '/ruoyi-jl/file',
    method: 'post',
    data: data
  })
}

// 修改文件管理
export function updateFile(data) {
  return request({
    url: '/ruoyi-jl/file',
    method: 'put',
    data: data
  })
}

// 删除文件管理
export function delFile(fileId) {
  return request({
    url: '/ruoyi-jl/file/' + fileId,
    method: 'delete'
  })
}
