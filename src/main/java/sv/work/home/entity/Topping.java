package sv.work.home.entity;

import lombok.Data;

import java.text.DecimalFormat;

@Data
public class Topping {
    private String name;
    private Float price;

    public Topping(String name, Float price){
        this.name = name;
        this.price = price;
    }

}
