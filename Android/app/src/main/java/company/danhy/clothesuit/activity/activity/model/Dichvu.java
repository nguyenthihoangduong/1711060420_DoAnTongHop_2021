package company.danhy.clothesuit.activity.activity.model;

import java.io.Serializable;

public class Dichvu implements Serializable {
    public int id;
    public String tendichvu;
    public String hinhanhdichvu;

    public Dichvu(int id, String tendichvu, String hinhanhdichvu) {
        this.id = id;
        this.tendichvu = tendichvu;
        this.hinhanhdichvu = hinhanhdichvu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTendichvu() {
        return tendichvu;
    }

    public void setTendichvu(String tendichvu) {
        this.tendichvu = tendichvu;
    }

    public String getHinhanhdichvu() {
        return hinhanhdichvu;
    }

    public void setHinhanhdichvu(String hinhanhdichvu) {
        this.hinhanhdichvu = hinhanhdichvu;
    }
}
