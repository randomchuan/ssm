package team.edge.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * @author jack
 * @date 2018/9/9
 */
@Data
public class User implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private String name;
    private String password;
    private Date createTime;

    @Override
    public int hashCode() {
        return Objects.hash(name, password);
    }
}
