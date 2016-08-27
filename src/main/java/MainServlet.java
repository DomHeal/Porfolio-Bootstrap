import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Dominic on 21-Aug-16.
 */
@WebServlet(urlPatterns = "/v2")
public class MainServlet extends HttpServlet{

    private ArrayList<Project> projectList;
    private ProjectHandler projectHandler;

    @Override
    public void init(ServletConfig cfg) throws ServletException {
        ServletContext ctx = cfg.getServletContext();
        StdSchedulerFactory factory = (StdSchedulerFactory) ctx.getAttribute(QuartzListener.QUARTZ_FACTORY_KEY);
        Scheduler scheduler = null;
        try {
            scheduler = factory.getScheduler();
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("simple").withSchedule(
                CronScheduleBuilder.cronSchedule("0 0/1 * 1/1 * ? *")).startNow().build();
            scheduler.rescheduleJob(new TriggerKey("simple"), trigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
        projectHandler = new ProjectHandler();
        projectList = projectHandler.generateAndSortProjectList();
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.setAttribute("projects", projectHandler.getProjectList());
            req.getRequestDispatcher("indexv2.jsp").forward(req, resp);
    }
}
