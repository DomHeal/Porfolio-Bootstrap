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

/**
 * @author Dominic
 * @since 27-Aug-16
 * Website: www.dominicheal.com
 * Github: www.github.com/DomHeal
 */
@WebServlet(urlPatterns = "/v2",
            displayName = "Update Project Servlet",
            description = "Gathers data for the website to display from the Github REST API and initializes the cron job to update")
public class MainServlet extends HttpServlet{

    private ProjectHandler projectHandler;

    /*
     * On Initializing this servlet, this method creates a schedule cron job which will update the website with the
     * latest information from the Github REST API:
     * https://api.github.com/users/domheal/repos
     *
     */
    @Override
    public void init(ServletConfig cfg) throws ServletException {
        ServletContext ctx = cfg.getServletContext();
        StdSchedulerFactory factory = (StdSchedulerFactory) ctx.getAttribute(QuartzListener.QUARTZ_FACTORY_KEY);
        Scheduler scheduler = null;
        try {
            scheduler = factory.getScheduler();
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("simple").withSchedule(
                CronScheduleBuilder.cronSchedule("0 0/5 * 1/1 * ? *")).startNow().build();
            scheduler.rescheduleJob(new TriggerKey("simple"), trigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
        projectHandler = ProjectHandler.getInstance();
        projectHandler.generateAndSortProjectList();
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
