package idiots.mini_project.controller.api;

import idiots.mini_project.dto.ResponseDto;
import idiots.mini_project.model.Role;
import idiots.mini_project.model.User;
import idiots.mini_project.service.AdminService;
import idiots.mini_project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserApiController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private UserService userService;


    @PostMapping("/api/user") //JSON 언어를 받아온다.
    public ResponseDto<Integer> join(@RequestBody User user) {
        user.setRole(Role.USER);
        userService.join(user);
        return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
    }

}
