import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 * @author Dominic
 * @since 27-Aug-16
 * Website: www.dominicheal.com
 * Github: www.github.com/DomHeal
 */
public class ProjectHandler {

    private static ProjectHandler instance = null;

    public ArrayList<Project> getProjectList() {
        return projectList;
    }

    private ArrayList<Project> projectList;

    public static ProjectHandler getInstance() {
        if (instance == null) {
            instance = new ProjectHandler();
        }
        return instance;
    }

    /*
     * Connects to the GitHub API and Generates JSON Objects within an JSON Array and formatting them into
     * a Project.class. This will also sort the projects by the amount of Stars / Forks.
     * @return ArrayList<Project> an ordered ArrayList of Projects
     */
    protected ArrayList<Project> generateAndSortProjectList() {
        if (projectList == null) {
            projectList = new ArrayList<Project>();
        } else {
            projectList.clear();
        }
        try {
            URL url = new URL("https://api.github.com/users/domheal/repos");
            URLConnection connection = url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setConnectTimeout(5000);
            connection.setReadTimeout(5000);
            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String JSON = in.readLine();
            JSONArray obj = new JSONArray(JSON);
            for (int i = 0; i < obj.length(); i++) {
                JSONObject test = obj.getJSONObject(i);
                Project project = new Project();
                project.setName((String) test.get("name"));
                project.setDescription((String) test.get("description"));
                project.setForks((Integer) test.get("forks_count"));
                project.setStars((Integer) test.get("watchers_count"));
                project.setLanguage((String) test.get("language"));
                project.setUrl((String) test.get("svn_url"));
                projectList.add(project);
            }
            in.close();
            sortProjectList(projectList);
            System.out.println("project Updated");
        } catch (IOException e) {

        }
        return projectList;
    }

    /*
     * This method sorts the ArrayList by the amount of forks / stars
     * @return ArrayList<Project> an ordered ArrayList of Projects
     */
    public ArrayList<Project> sortProjectList(ArrayList<Project> projectList) {
        Collections.sort(projectList, new Comparator<Project>() {
            @Override
            public int compare(Project project1, Project project2) {
                Integer project1Total = project1.getForks() + project1.getStars();
                Integer project2Total = project2.getStars() + project2.getForks();
                return project1Total.compareTo(project2Total);
            }
        });
        Collections.reverse(projectList);
        return projectList;
    }


}
