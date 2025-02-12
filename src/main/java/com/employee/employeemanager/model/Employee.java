package com.employee.employeemanager.model;

public class Employee {

    private String fullName , email , poste;
    private int salaire;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public int getSalaire() {
        return salaire;
    }

    public void setSalaire(int salaire) {
        this.salaire = salaire;
    }

    public Employee(String fullName, String email, String poste, int salaire) {
        this.fullName = fullName;
        this.email = email;
        this.poste = poste;
        this.salaire = salaire;
    }
}
