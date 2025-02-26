package code.Doctor.Model;

public class Doctor  extends User {

    private String Specialite;


    public Doctor(String name, String password, String email, String phone, String address, String specialite) {
        super(name, password, email, phone, address);
        this.Specialite = specialite;
    }

    public String getSpecilite() {
        return Specialite;

    }
    public void setSpecilite(String specilite) {
        Specialite = specilite;
    }
}
