package cn.itcast.jk.dao;

import java.util.Map;

import cn.itcast.jk.domain.UrRo;

/**
 * @Description:
 * @Author: nutony
 * @Company: http://java.itcast.cn
 * @CreateDate: 2014年10月9日
 */
public interface UrRoDao extends BaseDao<UrRo> {
    public void updateState(Map<?, ?> map); // 修改状态
}
