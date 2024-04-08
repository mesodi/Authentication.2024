package User.Interface.Implementation.Authentication.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "user")
public class User {

    @Id
    private String userId;
    @Column(name = "user_name")
    private String userName;

    @Column(name = " user_phone")
    private String userPhone;

    @Column(name = " user_email")
    private String userEmail;

    @Column(name = "userIndustry")
    private String userIndustry;

    public User(String userId, String userName, String userPhone, String userEmail, String userIndustry) {
        this.userId = userId;
        this.userName = userName;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userIndustry = userIndustry;
    }

    public User() {

    }

    public String getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public String getUserIndustry() {
        return userIndustry;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public void setUserIndustry(String userIndustry) {
        this.userIndustry = userIndustry;
    }
}
