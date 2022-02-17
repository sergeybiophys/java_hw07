package sv.work.home.entity;

import lombok.Data;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@Data
public class Pizza {

    private static Integer autoIncrement = 0;
    private Integer id;
    private  String name;
    private Float price;
    private String image;



    public Pizza(String name, String image, Float price)
    {
        this.id = ++autoIncrement;
        this.name = name;
        this.image = image;
        this.price = price;

    }
}
