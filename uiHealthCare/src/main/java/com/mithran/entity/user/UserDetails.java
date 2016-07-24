/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mithran.entity.user;

import com.mithran.entity.pet.PetProfileDetails;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author ArunRamya
 */
@Entity
@Table(name = "pr_user_profile")
public class UserDetails implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id_num")
    private Long userSeq;
    @Column(name = "first_name_var")
    private String firstName;
    @Column(name = "last_name_var")
    private String lastName;
    @Column(name = "display_name_var")
    private String displayName;
    @Column(name = "gender_var")
    private String gender;
    @Temporal(TemporalType.DATE)
    @Column(name = "dob_dt")
    private Date dob;
    @Column(name = "addr_var")
    private String addr;
    @Column(name = "primary_mail_id_var", unique = true)
    private String primaryMailId;
    @Column(name = "secondary_mail_id_var")
    private String secondaryMailId;
    @Column(name = "primary_contact_no_var")
    private String primaryContactNumber;
    @Column(name = "secondary_contact_no_var")
    private String secondaryContactNumber;
    @Column(name = "password_var")
    private String userPassword;
    @Column(name = "alt_address_var", length = 50)
    private String altAddress;
    @Column(name = "qualification_var", length = 20)
    private String qualification;
    @Column(name = "qualification_det_var")
    private String qualificationDetail;
    @Column(name = "city")
    private String city;
    @Column(name = "state")
    private String state;
    @Column(name = "country")
    private String country;
    @Column(name = "pet_group_id_num")
    private String petGroupId;
    @Lob
    @Column(name = "user_image")
    private byte[] userImage;
@Column(name = "user_status")
    private boolean userStatus;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<UserRole> userRole = new HashSet<UserRole>(0);

    //Mapping
    @OneToMany(mappedBy = "userDtls", fetch = FetchType.EAGER)
    private Set<PetProfileDetails> petDtls;

    public UserDetails() {

    }

    /**
     * @return the userSeq
     */
    public Long getUserSeq() {
        return userSeq;
    }

    /**
     * @param userSeq the userSeq to set
     */
    public void setUserSeq(Long userSeq) {
        this.userSeq = userSeq;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the displayName
     */
    public String getDisplayName() {
        return displayName;
    }

    /**
     * @param displayName the displayName to set
     */
    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the dob
     */
    public Date getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(Date dob) {
        this.dob = dob;
    }

    /**
     * @return the addr
     */
    public String getAddr() {
        return addr;
    }

    /**
     * @param addr the addr to set
     */
    public void setAddr(String addr) {
        this.addr = addr;
    }

    /**
     * @return the primaryMailId
     */
    public String getPrimaryMailId() {
        return primaryMailId;
    }

    /**
     * @param primaryMailId the primaryMailId to set
     */
    public void setPrimaryMailId(String primaryMailId) {
        this.primaryMailId = primaryMailId;
    }

    /**
     * @return the primaryContactNumber
     */
    public String getPrimaryContactNumber() {
        return primaryContactNumber;
    }

    /**
     * @param primaryContactNumber the primaryContactNumber to set
     */
    public void setPrimaryContactNumber(String primaryContactNumber) {
        this.primaryContactNumber = primaryContactNumber;
    }

    /**
     * @return the userPassword
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     * @param userPassword the userPassword to set
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     * @return the secondaryMailId
     */
    public String getSecondaryMailId() {
        return secondaryMailId;
    }

    /**
     * @param secondaryMailId the secondaryMailId to set
     */
    public void setSecondaryMailId(String secondaryMailId) {
        this.secondaryMailId = secondaryMailId;
    }

    /**
     * @return the secondaryContactNumber
     */
    public String getSecondaryContactNumber() {
        return secondaryContactNumber;
    }

    /**
     * @param secondaryContactNumber the secondaryContactNumber to set
     */
    public void setSecondaryContactNumber(String secondaryContactNumber) {
        this.secondaryContactNumber = secondaryContactNumber;
    }

    /**
     * @return the qualification
     */
    public String getQualification() {
        return qualification;
    }

    public String getQualificationDetail() {
        return qualificationDetail;
    }

    /**
     * @return the altAddress
     */
    public String getAltAddress() {
        return altAddress;
    }

    /**
     * @param altAddress the altAddress to set
     */
    public void setAltAddress(String altAddress) {
        this.altAddress = altAddress;
    }

    /**
     * @param qualification the qualification to set
     */
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public void setQualificationDetail(String qualificationDetail) {
        this.qualificationDetail = qualificationDetail;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getCountry() {
        return country;
    }

    public String getPetGroupId() {
        return petGroupId;
    }

    public void setPetGroupId(String petGroupId) {
        this.petGroupId = petGroupId;
    }

    @Override
    public String toString() {
        return "UserDetails{" + "userSeq=" + userSeq + ", firstName=" + firstName + ", "
                + "lastName=" + lastName + ", displayName=" + displayName + ", gender="
                + gender + ", dob=" + dob + ", addr=" + addr + ", primaryMailId=" + primaryMailId + ","
                + " secondaryMailId=" + secondaryMailId + ", primaryContactNumber=" + primaryContactNumber
                + ", secondaryContactNumber=" + secondaryContactNumber + ", userPassword=" + userPassword + ", "
                + "qualification=" + qualification + ",city=" + city + ",state=" + state + ",country=" + country + '}';
    }

    /**
     * @return the userImage
     */
    public byte[] getUserImage() {
        return userImage;
    }

    /**
     * @param userImage the userImage to set
     */
    public void setUserImage(byte[] userImage) {
        this.userImage = userImage;
    }

    /**
     * @return the petDtls
     */
    public Set<PetProfileDetails> getPetDtls() {
        return petDtls;
    }

    /**
     * @param petDtls the petDtls to set
     */
    public void setPetDtls(Set<PetProfileDetails> petDtls) {
        this.petDtls = petDtls;
    }

    public Set<UserRole> getUserRole() {
        return userRole;
    }

    public void setUserRole(Set<UserRole> userRole) {
        this.userRole = userRole;
    }

    /**
     * @return the userStatus
     */
    public boolean isUserStatus() {
        return userStatus;
    }

    /**
     * @param userStatus the userStatus to set
     */
    public void setUserStatus(boolean userStatus) {
        this.userStatus = userStatus;
    }


}
