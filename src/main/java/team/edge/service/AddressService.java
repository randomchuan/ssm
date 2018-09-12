package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.Info;
import team.edge.mapper.AddressMapper;

/**
 * @author jack
 * @date 2018/9/10
 */
@Service
public class AddressService {
    private final AddressMapper mapper;

    @Autowired
    public AddressService(AddressMapper mapper) {
        this.mapper = mapper;
    }

    public Info selectAddrById(Integer id) {
        return mapper.selectAddrById(id);
    }
}
