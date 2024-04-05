package User.Interface.Implementation.Authentication.repository;

import User.Interface.Implementation.Authentication.model.Client;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepository extends JpaRepository<Client, String> {
}
