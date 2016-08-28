import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * @author Dominic
 * @since 25-Aug-16
 * Website: www.dominicheal.com
 * Github: www.github.com/DomHeal
 */
public class UpdateJob implements Job {
    /*
     * Overriding method implementation to update the projects
     */
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        ProjectHandler.getInstance().generateAndSortProjectList();
    }
}
