package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.Address;
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

    public Address selectAddrById(Integer id) {
        return mapper.selectAddrById(id);
    }
}
