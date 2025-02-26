package code.Doctor.Model;

public class Doctor  extends User {

    private String Specilite;


    public Doctor(String name, String password, String email, String phone, String address) {
        super(name, password, email, phone, address);
    }
    public String getSpecilite() {
        return Specilite;

    }
    public void setSpecilite(String specilite) {
        Specilite = specilite;
    }
}
