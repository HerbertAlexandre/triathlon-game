package api;


import com.fasterxml.jackson.core.JsonProcessingException;
import model.User;
import service.UserService;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Path("login")
public class LoginApi {

    private static final Logger LOGGER = Logger.getLogger(LoginApi.class.getName());
    private UserService userService;

    public LoginApi() { }

    @POST
    @Path("")
    @Produces("application/json")
    public Response login(Map<String, String> credentials){

        String email = credentials.get("email");
        String password = credentials.get("password");

        //User u = userService.login(email, password);


        User u = new User(1,"2","3","4","5","6");

        //ObjectMapper Obj = new ObjectMapper();
        //String json = Obj.writeValueAsString(u);

        LOGGER.log(Level.INFO, "Login");
        return Response.ok().header("Access-Control-Allow-Origin", "*").entity(u.toJson()).build();
    }

    @OPTIONS
    @Path("")
    public Response corsLogin() {
        return Response.ok().header("Access-Control-Allow-Headers", "Content-Type").header("Access-Control-Allow-Origin", "*").build();
    }
}
