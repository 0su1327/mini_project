package idiots.mini_project.controller.api;

import idiots.mini_project.dto.ResponseDto;
import idiots.mini_project.model.Admin;
import idiots.mini_project.service.AdminService;
import idiots.mini_project.model.Role;
import idiots.mini_project.model.User;
import idiots.mini_project.service.AdminService;
import idiots.mini_project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class AdminApiController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/api/admin") //JSON 언어를 받아온다.
    public ResponseDto<Integer> join(@RequestBody Admin admin) {
        admin.setRole(Role.ADMIN);
        adminService.join(admin);
        return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
    }

    @PostMapping("/api/admin/login")
    public ResponseDto<Integer> 로그인(@RequestBody Admin admin, HttpSession session) {

        System.out.println("AdminApiController : login 호출됨");
        Admin principal = adminService.login(admin);
        System.out.println(principal);

        if(principal != null) {
            session.setAttribute("principal", principal);
        }

        return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
    }
}
