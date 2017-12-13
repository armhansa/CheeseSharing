package model;

public class Sheet {
    private int idSheet;
    private String title;
    private String faculty;
    private String category;
    private String description;
    private int viewCount;
    private String usersUsername;
    
    public Sheet() {
        
    }

    public int getIdSheet() {
        return idSheet;
    }

    public void setIdSheet(int idSheet) {
        this.idSheet = idSheet;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public String getUsersUsername() {
        return usersUsername;
    }

    public void setUsersUsername(String usersUsername) {
        this.usersUsername = usersUsername;
    }
    
}
