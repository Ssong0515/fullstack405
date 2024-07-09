public class Phone2 {
    private String name, tel;

    public Phone2(String name, String tel) {
        this.name = name;
        this.tel = tel;
    }

    public boolean compareName(String name) {
        if (this.name.equals(name)) {
            return true;
        } else {
            return false;
        }
    }

    public String getTel(String name) {
        return tel;
    }

}
