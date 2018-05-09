package org.wildfly.swarm.examples.gradle;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.Date;

/**
 * @author helio frota
 *
 */
@Path("/")
public class HelloRest {
    public static int  count =0;
    @GET
    @Produces(MediaType.APPLICATION_JSON)

    public String hello() {

        count++;
        return new Date().toString()+ " "+count;
    }

}
