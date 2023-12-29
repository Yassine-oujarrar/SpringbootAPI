package tp3.medicsapp.WebConfig;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import tp3.medicsapp.interceptor.AuditLogIntercepteur;
import tp3.medicsapp.interceptor.DrugIntercepteur;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private AuditLogIntercepteur auditIntercepteur;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(auditIntercepteur);
    }
}
