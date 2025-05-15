package net.chenlin.dp.quartz.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.chenlin.dp.common.entity.Page;
import net.chenlin.dp.common.entity.Query;
import net.chenlin.dp.quartz.dao.QuartzJobLogMapper;
import net.chenlin.dp.quartz.entity.QuartzJobLogEntity;
import net.chenlin.dp.quartz.manager.QuartzJobLogManager;

/**
 * 定时任务日志
 *
 * @author ZhouChenglin
 * @email yczclcn@163.com
 * @url www.chenlintech.com
 * @date 2017年8月20日 下午11:10:11
 */
@Component("quartzJobLogManager")
public class QuartzJobLogManagerImpl implements QuartzJobLogManager {

	@Autowired
	private QuartzJobLogMapper quartzLobLogMapper;
	
	@Override
	public List<QuartzJobLogEntity> listForPage(Page<QuartzJobLogEntity> page, Query query) {
		return quartzLobLogMapper.listForPage(page, query);
	}

	@Override
	public int saveQuartzJobLog(QuartzJobLogEntity log) {
		return quartzLobLogMapper.save(log);
	}

	@Override
	public int batchRemove(Long[] id) {
		return quartzLobLogMapper.batchRemove(id);
	}

	@Override
	public int batchRemoveAll() {
		return quartzLobLogMapper.batchRemoveAll();
	}

}
