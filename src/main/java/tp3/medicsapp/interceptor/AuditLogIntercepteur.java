package tp3.medicsapp.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import tp3.medicsapp.service.auditLogService;
import tp3.medicsapp.entities.auditLog;
import tp3.medicsapp.repository.auditLogRepository;

import java.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Component
public class AuditLogIntercepteur implements HandlerInterceptor {
    private final Logger LOG = LoggerFactory.getLogger(AuditLogIntercepteur.class);

    @Autowired
    private auditLogService auditlogservice;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
       String action = request.getMethod();
       String userId = request.getHeader("IdUser");
       LocalDateTime timeAction = LocalDateTime.now();
       LOG.info("in PreHandle methode of auditloginter");

       auditlogservice.creerauditLog(action, userId, timeAction);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        String action = request.getMethod();
        String userId = request.getHeader("IdUser");
        LocalDateTime timeAction = LocalDateTime.now();
        LOG.info("in postHandle methode of auditloginter");


        auditlogservice.creerauditLog(action, userId, timeAction);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        String action = request.getMethod();
        String userId = request.getHeader("IdUser");
        LocalDateTime timeAction = LocalDateTime.now();
        LOG.info("in aftercompletion methode of auditloginter");


        auditlogservice.creerauditLog(action, userId, timeAction);
    }
}
