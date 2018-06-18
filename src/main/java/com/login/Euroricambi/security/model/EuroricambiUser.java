package com.login.Euroricambi.security.model;

import com.login.Euroricambi.wsdl.ContactInfo;

public class EuroricambiUser {

//    <cInfo xmlns:a="http://schemas.datacontract.org/2004/07/TerrasoftData" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
//        <a:AccountId i:nil="true"/>
//        <a:ClientCabinetToken>RTST+pxHq1hRwdu0zmAxhH95/k5lDFv/Twg1atQgavwQ0l+iAC+e7g==</a:ClientCabinetToken>
//        <a:ClientStoreCityId>ae8a8d87-2fc8-4cc3-ba8f-ec59f94f039c</a:ClientStoreCityId>
//        <a:ClientStoreCityName>Відділ маркетингу</a:ClientStoreCityName>
//        <a:ContactId>33aa7d78-29a3-4f11-8022-8620999b53f7</a:ContactId>
//        <a:Email i:nil="true"/>
//        <a:FirstName>Соломія</a:FirstName>
//        <a:IsCompanyManager>true</a:IsCompanyManager>
//        <a:LastName>Сиділо</a:LastName>
//        <a:Login>Сиділо Соломія</a:Login>
//        <a:MobilePhone i:nil="true"/>
//        <a:SurName i:nil="true"/>
//    </cInfo>

    private String accountId;
    private String clientCabinetToken;
    private String clientStoreCityId;
    private String clientStoreCityName;
    private String contactId;
    private String email;
    private String firstName;
    private boolean isCompanyManager;
    private String lastName;
    private String login;
    private String mobilePhone;
    private String surName;


    private EuroricambiUser(String accountId, String clientCabinetToken, String clientStoreCityId, String clientStoreCityName, String contactId, String email, String firstName, boolean isCompanyManager, String lastName, String login, String mobilePhone, String surName) {
        this.accountId = accountId;
        this.clientCabinetToken = clientCabinetToken;
        this.clientStoreCityId = clientStoreCityId;
        this.clientStoreCityName = clientStoreCityName;
        this.contactId = contactId;
        this.email = email;
        this.firstName = firstName;
        this.isCompanyManager = isCompanyManager;
        this.lastName = lastName;
        this.login = login;
        this.mobilePhone = mobilePhone;
        this.surName = surName;
    }


    public static EuroricambiUser newUserInstance(ContactInfo info) {
        return new EuroricambiUser(
                info.getAccountId().getValue(),
                info.getClientCabinetToken().getValue(),
                info.getClientStoreCityId().getValue(),
                info.getClientStoreCityName().getValue(),
                info.getContactId(),
                info.getEmail().getValue(),
                info.getFirstName().getValue(),
                info.isIsCompanyManager(),
                info.getLastName().getValue(),
                info.getLogin().getValue(),
                info.getMobilePhone().getValue(),
                info.getSurName().getValue()
        );
    }

    public static EuroricambiUser newAdminInstance() {
        return new EuroricambiUser(
                null,
                null,
                null,
                null,
                null,
                "",
                "ADMIN",
                false,
                "ADMIN",
                "admin",
                null,
                "ADMIN"
        );
    }

    public String getClientCabinetToken() {
        return clientCabinetToken;
    }

    public void setClientCabinetToken(String clientCabinetToken) {
        this.clientCabinetToken = clientCabinetToken;
    }

    public String getClientStoreCityId() {
        return clientStoreCityId;
    }

    public void setClientStoreCityId(String clientStoreCityId) {
        this.clientStoreCityId = clientStoreCityId;
    }

    public String getClientStoreCityName() {
        return clientStoreCityName;
    }

    public void setClientStoreCityName(String clientStoreCityName) {
        this.clientStoreCityName = clientStoreCityName;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getContactId() {
        return contactId;
    }

    public void setContactId(String contactId) {
        this.contactId = contactId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public boolean isCompanyManager() {
        return isCompanyManager;
    }

    public void setCompanyManager(boolean companyManager) {
        isCompanyManager = companyManager;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }
}
