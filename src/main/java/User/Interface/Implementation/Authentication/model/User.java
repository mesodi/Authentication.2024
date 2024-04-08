package User.Interface.Implementation.Authentication.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Table(name = "user")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
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

}
