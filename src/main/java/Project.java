/**
 * Created by Dominic on 21-Aug-16.
 */
public class Project {
    String _name;
    String _url;
    Integer _stars;
    Integer _forks;
    String _language;
    String _description;

    public String getName() {
        return _name;
    }

    public void setName(String _name) {
        this._name = _name;
    }

    public String getUrl() {
        return _url;
    }

    public void setUrl(String _url) {
        this._url = _url;
    }

    public Integer getStars() {
        return _stars;
    }

    public void setStars(Integer _stars) {
        this._stars = _stars;
    }

    public Integer getForks() {
        return _forks;
    }

    public void setForks(Integer _forks) {
        this._forks = _forks;
    }

    public String getLanguage() {
        return _language;
    }

    public void setLanguage(String _language) {
        this._language = _language;
    }

    @Override
    public String toString() {
        return "Project{" +
                "_name='" + _name + '\'' +
                ", _url='" + _url + '\'' +
                ", _stars='" + _stars + '\'' +
                ", _forks='" + _forks + '\'' +
                ", _language='" + _language + '\'' +
                ", _description='" + _description + '\'' +
                '}';
    }

    public String getDescription() {
        return _description;
    }

    public void setDescription(String _description) {
        this._description = _description;
    }


}
