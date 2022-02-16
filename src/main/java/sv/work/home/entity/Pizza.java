package sv.work.home.entity;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class Pizza {
    private static Integer autoIncrement = 0;
    private Integer id;
    private  String name;
    private DecimalFormat price;
    private String image;
    private List<Topping> toppings;


    public Pizza(String name, String image, DecimalFormat price)
    {
        this.id = ++autoIncrement;
        this.name = name;
        this.image = image;
        this.price = price;
        this.toppings = new ArrayList<Topping>();
    }
}
