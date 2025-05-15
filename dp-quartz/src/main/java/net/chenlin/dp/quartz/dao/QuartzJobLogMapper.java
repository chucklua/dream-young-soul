package net.chenlin.dp.quartz.dao;

import org.mybatis.spring.annotation.MapperScan;

import net.chenlin.dp.common.dao.BaseMapper;
import net.chenlin.dp.quartz.entity.QuartzJobLogEntity;

/**
 * 定时任务日志
 *
 * @author ZhouChenglin
 * @email yczclcn@163.com
 * @url www.chenlintech.com
 * @date 2017年8月20日 下午11:04:51
 */
@MapperScan
public interface QuartzJobLogMapper extends BaseMapper<QuartzJobLogEntity> {

	int batchRemoveAll();
	
}
