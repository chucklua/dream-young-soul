package net.chenlin.dp.quartz.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.chenlin.dp.common.entity.Page;
import net.chenlin.dp.common.entity.Query;
import net.chenlin.dp.quartz.dao.QuartzJobMapper;
import net.chenlin.dp.quartz.entity.QuartzJobEntity;
import net.chenlin.dp.quartz.manager.QuartzJobManager;

/**
 * 定时任务
 *
 * @author ZhouChenglin
 * @email yczclcn@163.com
 * @url www.chenlintech.com
 * @date 2017年8月20日 下午11:47:19
 */
@Component("quartzJobManager")
public class QuartzJobManagerImpl implements QuartzJobManager {

	@Autowired
	private QuartzJobMapper quartzJobMapper;
	
	@Override
	public List<QuartzJobEntity> listNormalJob() {
		return quartzJobMapper.list();
	}

	@Override
	public List<QuartzJobEntity> listForPage(Page<QuartzJobEntity> page, Query query) {
		return quartzJobMapper.listForPage(page, query);
	}

	@Override
	public int saveQuartzJob(QuartzJobEntity job) {
		return quartzJobMapper.save(job);
	}

	@Override
	public QuartzJobEntity getQuartzJobById(Long jobId) {
		return quartzJobMapper.getObjectById(jobId);
	}

	@Override
	public int updateQuartzJob(QuartzJobEntity job) {
		return quartzJobMapper.update(job);
	}

	@Override
	public int batchRemoveQuartzJob(Long[] id) {
		return quartzJobMapper.batchRemove(id);
	}

	@Override
	public int batchUpdate(Long[] jobId, Integer status) {
		Query query = new Query();
		query.put("jobIdList", jobId);
		query.put("status", status);
		return quartzJobMapper.batchUpdate(query);
	}

}
