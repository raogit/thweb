package com.tianhong.domain.path;

public class BasePath {
    private Integer id;

    private String basePath;

    private String platForm;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBasePath() {
        return basePath;
    }

    public void setBasePath(String basePath) {
        this.basePath = basePath == null ? null : basePath.trim();
    }

    public String getPlatForm() {
        return platForm;
    }

    public void setPlatForm(String platForm) {
        this.platForm = platForm == null ? null : platForm.trim();
    }
}