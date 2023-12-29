package tp3.medicsapp.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data @NoArgsConstructor @AllArgsConstructor
public class Drug {

    private int catnumber;
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int drugnumber;
    private String dci;
    private String dosage;
    private String form;
    private String reference;
    private int cases;
    private int posts;
    private int centers;
    private int eps1;
    private int eps2;
    private int eps3;
    private String createdby;
    private String lastupdatedby;
    private int status;
}
