package code.Doctor.Model;

public class Patient extends User{

    public Patient() {
        super();
    }
    public Patient(String name, String password, String email, String phone, String address) {
        super(name, password, email, phone, address);
    }
}
