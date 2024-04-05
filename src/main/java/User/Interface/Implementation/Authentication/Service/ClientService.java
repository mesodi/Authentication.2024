package User.Interface.Implementation.Authentication.Service;

import User.Interface.Implementation.Authentication.model.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientService {


    private  final ClientRepository clientRepository;

    @Autowired
    public ClientService(ClientRepository clientRepository) {

        this.clientRepository = clientRepository;
    }






    }
}
