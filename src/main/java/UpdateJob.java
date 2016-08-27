import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * Created by Dominic on 25-Aug-16.
 */
public class UpdateJob implements Job {

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        ProjectHandler.getInstance().generateAndSortProjectList();
    }
}
