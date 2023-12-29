package tp3.medicsapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tp3.medicsapp.entities.auditLog;
public interface auditLogRepository extends JpaRepository<auditLog ,Long > {
}
