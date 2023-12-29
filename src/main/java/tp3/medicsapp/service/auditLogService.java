package tp3.medicsapp.service;

import org.springframework.stereotype.Service;

import tp3.medicsapp.repository.auditLogRepository;
import tp3.medicsapp.entities.auditLog;

import java.time.LocalDateTime;

@Service
public class auditLogService {
    private final auditLogRepository auditlogrepository;

    public auditLogService(auditLogRepository auditlogrepository) {
        this.auditlogrepository = auditlogrepository;
    }
    public void creerauditLog(String action, String userId, LocalDateTime timeAction){
        auditLog auditlog = new auditLog();
        auditlog.setAction(action);
        auditlog.setUserId(userId);
        auditlog.setActionDate(timeAction);

        auditlogrepository.save(auditlog);

    }

}
