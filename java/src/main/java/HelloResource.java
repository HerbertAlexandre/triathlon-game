import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Path("heroes")
public class HelloResource {

    private static final Logger LOGGER = Logger.getLogger(HelloResource.class.getName() );


    public HelloResource() { }

    @GET
    @Path("getAll")
    @Produces("application/json")
    public Response getAll() throws JsonProcessingException {
        LOGGER.log(Level.INFO, "GotAll");
        InMemoryDataService.initializeHeroes();
        ArrayList<Hero> heroes = InMemoryDataService.initialHeroes;
        ObjectMapper Obj = new ObjectMapper();
        String json = Obj.writeValueAsString(heroes);
        return Response.ok().header("Access-Control-Allow-Origin", "*").entity(json).build();
    }

    @GET
    @Path("get/{id}")
    @Produces("application/json")
    public Response get(@PathParam("id") int id) throws JsonProcessingException {
        System.out.println("Got");
        InMemoryDataService.initializeHeroes();
        ArrayList<Hero> heroes = InMemoryDataService.initialHeroes;
        String json = "";
        for(Hero h : heroes){
            if (h.getId() == id){
                ObjectMapper Obj = new ObjectMapper();
                json = Obj.writeValueAsString(h);
                break;
            }
        }
        return Response.ok().header("Access-Control-Allow-Origin", "*").entity(json).build();
    }

    @GET
    @Path("delete/{id}")
    @Produces("application/json")
    public Response delete(@PathParam("id") int id) throws JsonProcessingException {
        System.out.println("Deleted");
        return Response.ok().header("Access-Control-Allow-Origin", "*").build();
    }

    @POST
    @Path("create")
    @Produces("application/json")
    public Response create(Map<String, String> name) throws JsonProcessingException {
        System.out.println("Created");
        Hero h = new Hero((int) (1000*Math.random()), name.get("name"));
        ObjectMapper Obj = new ObjectMapper();
        String json = Obj.writeValueAsString(h);
        return Response.ok().header("Access-Control-Allow-Origin", "*").entity(json).build();
    }

    @POST
    @Path("update/{id}")
    @Produces("application/json")
    public Response update(@PathParam("id") int id, Hero hero) throws JsonProcessingException {
        System.out.println("Updated");
        ObjectMapper Obj = new ObjectMapper();
        String json = Obj.writeValueAsString(hero);
        return Response.ok().header("Access-Control-Allow-Origin", "*").entity(json).build();
    }

    @OPTIONS
    @Path("create")
    public Response corsMyResource1(String name) {
        System.out.println("CreatedOPTIONS");
        return Response.ok().header("Access-Control-Allow-Headers", "Content-Type").header("Access-Control-Allow-Origin", "*").build();
    }

    @OPTIONS
    @Path("update/{id}")
    public Response corsMyResource(@PathParam("id") int id) {
        System.out.println("UpdatedOPTIONS");
        return Response.ok().header("Access-Control-Allow-Headers", "Content-Type").header("Access-Control-Allow-Origin", "*").build();
    }
}