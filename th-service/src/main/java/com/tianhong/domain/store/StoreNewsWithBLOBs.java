package com.tianhong.domain.store;

public class StoreNewsWithBLOBs extends StoreNews {
    private String content;

    private String layout;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getLayout() {
        return layout;
    }

    public void setLayout(String layout) {
        this.layout = layout == null ? null : layout.trim();
    }
}