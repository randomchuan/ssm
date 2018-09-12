package team.edge.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * @author jack
 * @date 2018/9/9
 */
public class OrderDetail implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private Integer userId;
    private Integer productId;
    private Integer status;
    private Date createTime;
    private String productName;
    private String userName;
    private String address;
    private String phone;
    private String describe;
    private String newPrice;

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", userId=" + userId +
                ", productId=" + productId +
                ", status=" + status +
                ", createTime=" + createTime +
                ", productName='" + productName + '\'' +
                ", userName='" + userName + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", describe='" + describe + '\'' +
                ", newPrice='" + newPrice + '\'' +
                '}';
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(String newPrice) {
        this.newPrice = newPrice;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
