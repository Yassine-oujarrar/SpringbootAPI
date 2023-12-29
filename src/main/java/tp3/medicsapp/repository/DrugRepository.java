package tp3.medicsapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tp3.medicsapp.entities.Drug;

public interface DrugRepository extends JpaRepository<Drug,Long> {
}
