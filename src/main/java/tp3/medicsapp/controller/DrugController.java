package tp3.medicsapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import tp3.medicsapp.entities.Drug;
import tp3.medicsapp.repository.DrugRepository;
import tp3.medicsapp.service.impl.DrugServiceImpl;

import java.util.List;

@RestController
public class DrugController {
    @Autowired
    private DrugRepository drugRepository;
    private final DrugServiceImpl drugService;

    public DrugController(DrugServiceImpl drugService) {
        this.drugService = drugService;
    }


    @GetMapping("/drugs")
    public List<Drug> drugs(){
        return  drugRepository.findAll();
    }
    @GetMapping("/drugs/{drugnumber}")
    public Drug findDrug(@PathVariable Long drugnumber){             //le pathVariable pour indiquer que le drugnumber qui est dans le path est le meme qui est en parametre
        return  drugRepository.findById(drugnumber).get();
    }
    @PostMapping("/drugs")
    public List<Drug> insertDrug(@RequestBody Drug drug){
        Drug drugcreer = drugService.insertDrug(drug);
        return (List<Drug>) ResponseEntity.status(HttpStatus.CREATED).body(drugcreer);
    }
    @PutMapping("/{drugnumber}")
    public List<Drug> updateDrug(@PathVariable Long drugnumber, Drug drugUpdate){
        Drug drug = drugService.updateDrug(drugnumber, drugUpdate);
        return (List<Drug>) ResponseEntity.ok(drug);
    }
    @DeleteMapping("/{drugnumber}")
    public List<Drug> retrieveDrug(@PathVariable Long drugnumber){
        drugService.retrieveDrug(drugnumber);
        return (List<Drug>) ResponseEntity.noContent().build();
    }

}
