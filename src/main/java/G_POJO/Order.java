package G_POJO;

import java.util.Date;

public class Order {
    private Integer id;

    private Integer number;

    private Integer userId;

    private Integer companyId;

    private Date createTime;

    private Integer sightId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getSightId() {
        return sightId;
    }

    public void setSightId(Integer sightId) {
        this.sightId = sightId;
    }
}