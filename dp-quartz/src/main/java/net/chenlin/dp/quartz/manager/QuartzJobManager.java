package net.chenlin.dp.quartz.manager;

import java.util.List;

import net.chenlin.dp.common.entity.Page;
import net.chenlin.dp.common.entity.Query;
import net.chenlin.dp.quartz.entity.QuartzJobEntity;

/**
 * 定时任务
 *
 * @author ZhouChenglin
 * @email yczclcn@163.com
 * @url www.chenlintech.com
 * @date 2017年8月20日 下午11:46:30
 */
public interface QuartzJobManager {

	List<QuartzJobEntity> listForPage(Page<QuartzJobEntity> page, Query query);
	
	List<QuartzJobEntity> listNormalJob();
	
	int saveQuartzJob(QuartzJobEntity job);
	
	QuartzJobEntity getQuartzJobById(Long jobId);
	
	int updateQuartzJob(QuartzJobEntity job);
	
	int batchRemoveQuartzJob(Long[] id);
	
	int batchUpdate(Long[] jobId, Integer status);
	
}
