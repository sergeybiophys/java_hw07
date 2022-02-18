package sv.work.home.database;

import lombok.Data;
import sv.work.home.entity.Pizza;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Data
public class DataBase {
    private static List<Pizza> pizzas = new ArrayList<Pizza>(Arrays.asList(
            new Pizza("FourCheeses", "/resources/images/pizza-4-sira.png",230.0f)
    ));
    public static List<Pizza> getAll(){
        return  pizzas;
    }
    public static void addPizza(Pizza pizza)
    {
        pizzas.add(pizza);
    }
}
