package syssalvadoranadventures.el;

import java.util.ArrayList;

public class User {
     private int idUser;
    private String name;
    private String lastName;
    private String telephone;
    private String login;
    private String password;
    private int idRol;
    private String photo;
    
    //Atributos no mapeados
    private int top_aux;
    private Rol rol;
    private String confirmPassword_aux;
    private ArrayList<TouristPlace>touristPlaces;
    
    public User(){
        
    }//Constructor vacio
    
    //Se llena el constructor con los atributos que van mapeados
    public User(int idUser, String name, String telephone, String login, String password, int idRol, String photo) {
        this.idUser = idUser;
        this.name = name;
        this.telephone = telephone;
        this.login = login;
        this.password = password;
        this.idRol = idRol;
        this.photo = photo;
    }
    
    //Getters and Setters
    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getTop_aux() {
        return top_aux;
    }

    public void setTop_aux(int top_aux) {
        this.top_aux = top_aux;
    }

    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }

    public String getConfirmPassword_aux() {
        return confirmPassword_aux;
    }

    public void setConfirmPassword_aux(String confirmPassword_aux) {
        this.confirmPassword_aux = confirmPassword_aux;
    }

    public ArrayList<TouristPlace> getTouristPlaces() {
        return touristPlaces;
    }

    public void setTouristPlaces(ArrayList<TouristPlace> touristPlaces) {
        this.touristPlaces = touristPlaces;
    }
}
