package tp3.medicsapp;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tp3.medicsapp.entities.Drug;
import tp3.medicsapp.repository.DrugRepository;

import java.util.List;

@SpringBootApplication
public class MedicsAppApplication implements CommandLineRunner {
	@Autowired //Pour demander au spring d'injecter un objet de trye drugRepository
	private DrugRepository drugRepository;
	public static void main(String[] args) {
		SpringApplication.run(MedicsAppApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		//drugRepository.save(new Drug(101, 1001, "Doliprane", "2g", "FormeDuMedicament", "ReferenceMedicament", 5, 3, 7, 10, 15, 20, "Créateur", "DernièreMiseAJour", 1));
		List<Drug> drugs = drugRepository.findAll();
		drugs.forEach(d ->{
			System.out.println(d.toString());
		});


	}
}
