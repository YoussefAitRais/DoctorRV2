package code.Doctor.Model;

public class User  {

    private String name;
    private String password;
    private String email;
    private String phone;
    private String address;
    private String role;

    public User(String name, String password, String email, String phone, String address) {
        this.name = name;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = "user";
    }

    public User() {

    }



    public User(String name, String password, String email, String phone, String address, Object o, String role) {
    }

    public User(String name, String password, String email, String phone, String address, String role) {
    }

    public String getName() {
        return name;

    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;

    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }

}



