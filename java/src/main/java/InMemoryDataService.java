import java.util.ArrayList;

public class InMemoryDataService {

    public static ArrayList<Hero> initialHeroes = new ArrayList<>();

    public static void initializeHeroes (){
        initialHeroes.add(new Hero(11, "Mr. Nice"));
        initialHeroes.add(new Hero(12, "Narco"));
        initialHeroes.add(new Hero(13, "Bombasto"));
        initialHeroes.add(new Hero(14, "Celeritas"));
        initialHeroes.add(new Hero(15, "Magneta"));
        initialHeroes.add(new Hero(16, "RubberMan"));
        initialHeroes.add(new Hero(17, "Dynama"));
        initialHeroes.add(new Hero(18, "Dr IQ"));
        initialHeroes.add(new Hero(19, "Magma"));
        initialHeroes.add(new Hero(20, "Tornado"));
    }

}
