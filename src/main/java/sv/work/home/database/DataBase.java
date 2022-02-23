package sv.work.home.database;

import lombok.Data;
import sv.work.home.entity.Pizza;
import sv.work.home.entity.Topping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Data
public class DataBase {
    private static List<Pizza> pizzas = new ArrayList<Pizza>(Arrays.asList(
            new Pizza("FourCheeses", "/resources/images/pizza-4-sira.png",230.0f),
            new Pizza("Margarita", "/resources/images/pizza-margarita.png",210.0f),
            new Pizza("Vegetarian", "/resources/images/pizza-vegetae.png",180.0f),
            new Pizza("Hawaiian", "/resources/images/pizza-gavaiskaia.png",270.0f)
    ));
    private static List<Topping> toppings = new ArrayList<Topping>(Arrays.asList(
            new Topping("olive",5.0f),
            new Topping("tomato",1.0f),
            new Topping("jalapeno ",8.0f),
            new Topping("mushroom",4.0f),
            new Topping("sausage",11.0f)

            ));
    public static List<Pizza> getAll(){
        return  pizzas;
    }
    public static void addPizza(Pizza pizza)
    {
        pizzas.add(pizza);
    }

    public static List<Topping> getToppings(){return toppings;}
    public static void addTopping(Topping topping){toppings.add(topping);}
}
