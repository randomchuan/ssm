package team.edge.util;


/**
 * @author jack
 * @date 2018/9/11
 * @// TODO: 2018/9/11 用户表单验证
 */
public class UserFormValidator {
//    @Override
//    public boolean supports(Class<?> clazz) {
//        // 判定此 Class 对象所表示的类或接口与指定的 Class 参数所表示的类或接口是否相同，或是否是其超类或超接口。
//        // 如果是则返回 true；否则返回 false。
//        // 如果该 Class 表示一个基本类型，且指定的 Class 参数正是该 Class 对象，
//        // 则该方法返回 true；否则返回 false。
//        return User.class.isAssignableFrom(clazz);
//    }
//
//    @Override
//    public void validate(Object target, Errors errors) {
//        User user = (User) target;
//        ValidationUtils.rejectIfEmpty(errors, "name", "name.required");
//        // 在Errors对象上调用一个reject、或者rejectValue方法，
//        // 调用reject，会往FieldError添加一个ObjectError和rejectValue。
//        // 大多时候，只给方法传入一个错误码，Spring会查找错误码获取相应错误消息，
//        // 当然可以传入一个默认消息，当没有找到时使用。
//        String name = user.getName();
//        if (StringUtils.isEmpty(name)) {
//            errors.rejectValue("name", "name.required", "姓名不能为空！");
//        }
//    }
}
