import request from '@/utils/request'

// 查询借阅记录列表
export function listBorrow(query) {
  return request({
    url: '/ruoyi-jl/borrow/listdto',
    method: 'get',
    params: query
  })
}

// 查询借阅审核列表
export function examineList(query) {
  return request({
    url: '/ruoyi-jl/borrow/examinelist',
    method: 'get',
    params: query
  })
}

// 查询借阅记录详细
export function getBorrow(id) {
  return request({
    url: '/ruoyi-jl/borrow/' + id,
    method: 'get'
  })
}

// 新增借阅记录
export function addBorrow(fileId,deptId) {
  return request({
    url: '/ruoyi-jl/borrow',
    method: 'post',
    data: {
      fileId: fileId,
      deptId: deptId
    }
  })
}



// 修改借阅记录
export function updateBorrow(id,status) {
  return request({
    url: '/ruoyi-jl/borrow',
    method: 'put',
    data: {
      id: id,
      status: status
    }
  })
}

// 删除借阅记录
export function delBorrow(id) {
  return request({
    url: '/ruoyi-jl/borrow/' + id,
    method: 'delete'
  })
}
