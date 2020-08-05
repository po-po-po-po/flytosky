package com.fly.sky.enums;

/**
 * @Auther wangzekun
 * @Date 2020/8/3 14:05
 * @Description
 */
public enum  AirlinesEnum {
    CA("1","CA","中国国际航空"),
    MU("2","MU","中国东方航空"),
    CZ("3","CZ","中国南方航空"),
    SC("4","SC","山东航空");
    private String id;
    private String code;
    private String name;
    AirlinesEnum(String String,String code,String name) {
        this.id = id;
        this.code = code;
        this.name = name;
    }
    public String getId() {
        return id;
    }
    public String getCode() {
        return code;
    }
    public String getName() {
        return name;
    }


    public static String getAirlineCode(String id){
        String airlineCode="";
        for (AirlinesEnum e: AirlinesEnum.values()){
            if(e.getId().equals(id)){
                airlineCode = e.getCode();
                break;
            }
        }
        return airlineCode;
    }
}
