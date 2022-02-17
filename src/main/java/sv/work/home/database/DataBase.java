package sv.work.home.database;

import lombok.Data;
import sv.work.home.entity.Pizza;

import java.util.ArrayList;
import java.util.List;

@Data
public class DataBase {
    private static List<Pizza> pizzas = new ArrayList<>();
}
