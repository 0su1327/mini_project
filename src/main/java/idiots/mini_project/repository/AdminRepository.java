package idiots.mini_project.repository;

import idiots.mini_project.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
    Admin findByFirestationnameAndFirestationpassword(String firestationname, String firestationpassword);
}
