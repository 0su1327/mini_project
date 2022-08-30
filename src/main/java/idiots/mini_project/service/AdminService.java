package idiots.mini_project.service;

import idiots.mini_project.model.Admin;
import idiots.mini_project.model.User;
import idiots.mini_project.repository.AdminRepository;
import idiots.mini_project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminService {


    @Autowired
    private AdminRepository adminRepository;

    @Transactional
    public void join(Admin admin) {
        adminRepository.save(admin);
    }

    @Transactional
    public Admin login(Admin admin) {
        return adminRepository.findByFirestationnameAndFirestationpassword(admin.getFirestationname(), admin.getFirestationpassword());
    }

}
