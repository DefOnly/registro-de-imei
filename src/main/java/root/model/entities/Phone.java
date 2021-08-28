/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package root.model.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author kevin
 */
@Entity
@Table(name = "phones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Phone.findAll", query = "SELECT p FROM Phone p"),
    @NamedQuery(name = "Phone.findByImeiCode", query = "SELECT p FROM Phone p WHERE p.imeiCode = :imeiCode"),
    @NamedQuery(name = "Phone.findByMarca", query = "SELECT p FROM Phone p WHERE p.marca = :marca"),
    @NamedQuery(name = "Phone.findByModelo", query = "SELECT p FROM Phone p WHERE p.modelo = :modelo"),
    @NamedQuery(name = "Phone.findByOSystem", query = "SELECT p FROM Phone p WHERE p.oSystem = :oSystem"),
    @NamedQuery(name = "Phone.findByYear", query = "SELECT p FROM Phone p WHERE p.year = :year")})
public class Phone implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2147483647)
    @Column(name = "imei_code")
    private String imeiCode;
    @Size(max = 2147483647)
    @Column(name = "marca")
    private String marca;
    @Size(max = 2147483647)
    @Column(name = "modelo")
    private String modelo;
    @Size(max = 2147483647)
    @Column(name = "o_system")
    private String oSystem;
    @Size(max = 2147483647)
    @Column(name = "year")
    private String year;

    public Phone() {
    }

    public Phone(String imeiCode) {
        this.imeiCode = imeiCode;
    }

    public String getImeiCode() {
        return imeiCode;
    }

    public void setImeiCode(String imeiCode) {
        this.imeiCode = imeiCode;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getOSystem() {
        return oSystem;
    }

    public void setOSystem(String oSystem) {
        this.oSystem = oSystem;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (imeiCode != null ? imeiCode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Phone)) {
            return false;
        }
        Phone other = (Phone) object;
        if ((this.imeiCode == null && other.imeiCode != null) || (this.imeiCode != null && !this.imeiCode.equals(other.imeiCode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "root.model.entities.Phone[ imeiCode=" + imeiCode + " ]";
    }
    
}
