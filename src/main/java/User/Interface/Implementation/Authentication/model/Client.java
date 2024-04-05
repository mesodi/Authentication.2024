package User.Interface.Implementation.Authentication.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "client")
public class Client {

    @Id
    private String clientId;


    @Column(name = "client_name")
    private String clientName;

    @Column(name = " client_phone")
    private String clientPhone;

    @Column(name = " client_email")
    private String clientEmail;

    @Column(name = "clientIndustry")
    private String clientIndustry;


    public String getClientEmail() {
        return clientEmail;
    }
}
