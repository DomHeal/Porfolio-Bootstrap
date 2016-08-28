import org.junit.Test;

import java.util.ArrayList;

import static org.junit.Assert.assertEquals;

/**
 * @author Dominic
 * @since 27-Aug-16
 * Website: www.dominicheal.com
 * Github: www.github.com/DomHeal
 */
public class TestProjectHandler {
    ProjectHandler projectHandler = new ProjectHandler();

    @Test
    public void testSortProjectList(){
        ArrayList<Project> projectsList = new ArrayList<Project>();

        Project project1 = new Project();
        project1.setForks(5);
        project1.setStars(2);
        projectsList.add(project1);

        Project project2 = new Project();
        project2.setForks(7);
        project2.setStars(3);
        projectsList.add(project2);

        Project project3 = new Project();
        project3.setForks(2);
        project3.setStars(3);
        projectsList.add(project3);

        ArrayList<Project> orderedProjectList = projectHandler.sortProjectList(projectsList);;

        assertEquals(project1,orderedProjectList.get(1));
        assertEquals(project2,orderedProjectList.get(0));
        assertEquals(project3,orderedProjectList.get(2));

    }
}
