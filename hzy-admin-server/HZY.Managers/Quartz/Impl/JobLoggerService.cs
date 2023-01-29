﻿using HZY.EntityFramework.Repositories.Admin.Core;
using HZY.Models.Entities.Quartz;

namespace HZY.Managers.Quartz.Impl
{
    /// <summary>
    /// Job 运行 日志
    /// </summary>
    public class JobLoggerService : IJobLoggerService
    {
        private readonly IAdminRepository<QuartzJobTaskLog> _quartzJobTaskLogRepository;

        public JobLoggerService(IAdminRepository<QuartzJobTaskLog> quartzJobTaskLogRepository)
        {
            _quartzJobTaskLogRepository = quartzJobTaskLogRepository;
        }

        public List<QuartzJobTaskLog> FindListById(Guid tasksId, int page, int size)
        {
            return _quartzJobTaskLogRepository.SelectNoTracking
                .Where(w => w.JobTaskId == tasksId)
                .Skip((page - 1) * size)
                .Take(size)
                .ToList()
                ;
        }

        public void Write(QuartzJobTaskLog jobLoggerInfo)
        {
            if (jobLoggerInfo == null) return;

            _quartzJobTaskLogRepository.InsertOrUpdate(jobLoggerInfo);
        }
    }
}
