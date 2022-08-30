package idiots.mini_project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
@Entity
public class Admin {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private int id;

    @Enumerated(EnumType.STRING)
    private Role role;

    @Column(nullable = false, length = 30)
    private String firestationname;

    @Column(nullable = false, length = 30)
    private String firestationpassword;

    @ManyToOne
    @JoinColumn(name="nearest_station")
    private User user;

}
