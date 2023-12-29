package tp3.medicsapp.service.impl;

import org.springframework.stereotype.Service;
import tp3.medicsapp.entities.Drug;
import tp3.medicsapp.repository.DrugRepository;
import tp3.medicsapp.service.DrugService;

@Service
public class DrugServiceImpl implements DrugService {
    private final DrugRepository drugRepository;

    public DrugServiceImpl(DrugRepository drugRepository) {
        this.drugRepository = drugRepository;
    }

    public Drug getDrugById(Long drugnumber){
        return drugRepository.findById(drugnumber).orElseThrow();
    }

    public Drug insertDrug(Drug drug) {
        Drug d1 = new Drug(101, 8888, "Doliprane", "2g", "FormeDuMedicament", "ReferenceMedicament", 5, 3, 7, 10, 15, 20, "Créateur", "DernièreMiseAJour", 1);
        Drug d2 = new Drug(102, 9999, "Smecta", "5g", "FormeDuMedicament", "ReferenceMedicament", 5, 3, 7, 10, 15, 20, "Créateur", "DernièreMiseAJour", 1);

        return drugRepository.save(drug);

    }
    public Drug updateDrug(Long drugnumber, Drug drugUpdate){
        Drug d = getDrugById(drugnumber);
        d.setStatus(drugUpdate.getStatus());

        return drugRepository.save(d);
    }
    public void retrieveDrug(Long drugnumber){
        Drug drug = getDrugById(drugnumber);
        drugRepository.delete(drug);
    }

}
