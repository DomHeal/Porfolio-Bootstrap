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
 * Created by Dominic on 27-Aug-16.
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

    protected ArrayList<Project> generateAndSortProjectList() {
        if (projectList == null){
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
            for(int i = 0 ; i < obj.length(); i++){
                JSONObject test = obj.getJSONObject(i);
                Project project = new Project();
                project.setName((String)test.get("name"));
                project.setDescription((String)test.get("description"));
                project.setForks((Integer)test.get("forks_count"));
                project.setStars((Integer)test.get("watchers_count"));
                project.setLanguage((String)test.get("language"));
                project.setUrl((String)test.get("svn_url"));
                projectList.add(project);
            }
            in.close();
            sortProjectList(projectList);
            System.out.println("project Updated");
        } catch (IOException e) {

        }
        return projectList;
    }


    private ArrayList<Project> sortProjectList(ArrayList<Project> projectList) {
        Collections.sort(projectList, new Comparator<Project>() {
            @Override
            public int compare(Project project1, Project project2)
            {
                Integer project1Total = project1.getForks() + project1.getStars();
                Integer project2Total = project2.getStars() + project2.getForks();
                return  project1Total.compareTo(project2Total);
            }
        });
        Collections.reverse(projectList);
        return projectList;
    }


}
