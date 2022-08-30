package idiots.mini_project.model;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Data // getter setter
@Builder
@Entity
public class User {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private int id; // 아파트 아이디


    @Column(nullable = false, length = 30)
    private String apartname;

    @Column(nullable = false, length = 30)
    private String building; // 동

    @Column(nullable = false, length = 30)
    private String unit; // 호

    @Column(nullable = false, length = 15)
    private String phonenumber;

    @Column(nullable = false, length = 30)
    private String nearest_station;

    @Enumerated(EnumType.STRING)
    private Role role;

}
