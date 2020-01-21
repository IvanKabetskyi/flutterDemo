import 'dart:convert';

class Carrier {
  String id;
  String companyName;
  String companyPreffix;
  String url;
  String phone;
  User user;
  String email;
  String fax;
  String physicalAddressLine;
  Null physicalAdditionalAddressLine;
  String physicalCity;
  Null physicalState;
  String physicalZip;
  Null physicalCountry;
  String billingAddressLine;
  String billingAdditionalAddressLine;
  String billingCity;
  String billingState;
  String billingZip;
  Null billingCountry;
  String mcNumber;
  String usDotNumber;
  String scac;
  String webAddress;
  String factoringCompanyName;
  String factoringCompanyPhysicalAddressLine;
  String factoringCompanyPhysicalAdditionalAddressLine;
  String factoringCompanyPhysicalCity;
  String factoringCompanyPhysicalState;
  String factoringCompanyPhysicalZip;
  String factoringCompanyPhysicalCountry;
  String factoringCompanyBillingAddressLine;
  String factoringCompanyBillingAdditionalAddressLine;
  String factoringCompanyBillingCity;
  String factoringCompanyBillingState;
  String factoringCompanyBillingZip;
  String factoringCompanyBillingCountry;
  String factoringCompanyPhone;
  String factoringCompanyFax;
  String factoringCompanyEmail;
  String factoringCompanyContactPerson;
  bool activateFactoringCompany;
  List<Null> carrierRelations;
  List<Null> reversedCarrierRelations;

  Carrier(
      {this.id,
      this.companyName,
      this.companyPreffix,
      this.url,
      this.phone,
      this.user,
      this.email,
      this.fax,
      this.physicalAddressLine,
      this.physicalAdditionalAddressLine,
      this.physicalCity,
      this.physicalState,
      this.physicalZip,
      this.physicalCountry,
      this.billingAddressLine,
      this.billingAdditionalAddressLine,
      this.billingCity,
      this.billingState,
      this.billingZip,
      this.billingCountry,
      this.mcNumber,
      this.usDotNumber,
      this.scac,
      this.webAddress,
      this.factoringCompanyName,
      this.factoringCompanyPhysicalAddressLine,
      this.factoringCompanyPhysicalAdditionalAddressLine,
      this.factoringCompanyPhysicalCity,
      this.factoringCompanyPhysicalState,
      this.factoringCompanyPhysicalZip,
      this.factoringCompanyPhysicalCountry,
      this.factoringCompanyBillingAddressLine,
      this.factoringCompanyBillingAdditionalAddressLine,
      this.factoringCompanyBillingCity,
      this.factoringCompanyBillingState,
      this.factoringCompanyBillingZip,
      this.factoringCompanyBillingCountry,
      this.factoringCompanyPhone,
      this.factoringCompanyFax,
      this.factoringCompanyEmail,
      this.factoringCompanyContactPerson,
      this.activateFactoringCompany,
      this.carrierRelations,
      this.reversedCarrierRelations});

  Carrier.fromJson(Map<String, dynamic> jsonValue) {
    id = jsonValue['id'];
    companyName = jsonValue['company_name'];
    companyPreffix = jsonValue['company_preffix'];
    url = jsonValue['url'];
    phone = jsonValue['phone'];
    user =
        jsonValue['user'] != null ? new User.fromJson(jsonValue['user']) : null;
    email = jsonValue['email'];
    fax = jsonValue['fax'];
    physicalAddressLine = jsonValue['physical_address_line'];
    physicalAdditionalAddressLine =
        jsonValue['physical_additional_address_line'];
    physicalCity = jsonValue['physical_city'];
    physicalState = jsonValue['physical_state'];
    physicalZip = jsonValue['physical_zip'];
    physicalCountry = jsonValue['physical_country'];
    billingAddressLine = jsonValue['billing_address_line'];
    billingAdditionalAddressLine = jsonValue['billing_additional_address_line'];
    billingCity = jsonValue['billing_city'];
    billingState = jsonValue['billing_state'];
    billingZip = jsonValue['billing_zip'];
    billingCountry = jsonValue['billing_country'];
    mcNumber = jsonValue['mc_number'];
    usDotNumber = jsonValue['us_dot_number'];
    scac = jsonValue['scac'];
    webAddress = jsonValue['web_address'];
    factoringCompanyName = jsonValue['factoring_company_name'];
    factoringCompanyPhysicalAddressLine =
        jsonValue['factoring_company_physical_address_line'];
    factoringCompanyPhysicalAdditionalAddressLine =
        jsonValue['factoring_company_physical_additional_address_line'];
    factoringCompanyPhysicalCity = jsonValue['factoring_company_physical_city'];
    factoringCompanyPhysicalState =
        jsonValue['factoring_company_physical_state'];
    factoringCompanyPhysicalZip = jsonValue['factoring_company_physical_zip'];
    factoringCompanyPhysicalCountry =
        jsonValue['factoring_company_physical_country'];
    factoringCompanyBillingAddressLine =
        jsonValue['factoring_company_billing_address_line'];
    factoringCompanyBillingAdditionalAddressLine =
        jsonValue['factoring_company_billing_additional_address_line'];
    factoringCompanyBillingCity = jsonValue['factoring_company_billing_city'];
    factoringCompanyBillingState = jsonValue['factoring_company_billing_state'];
    factoringCompanyBillingZip = jsonValue['factoring_company_billing_zip'];
    factoringCompanyBillingCountry =
        jsonValue['factoring_company_billing_country'];
    factoringCompanyPhone = jsonValue['factoring_company_phone'];
    factoringCompanyFax = jsonValue['factoring_company_fax'];
    factoringCompanyEmail = jsonValue['factoring_company_email'];
    factoringCompanyContactPerson =
        jsonValue['factoring_company_contact_person'];
    activateFactoringCompany = jsonValue['activate_factoring_company'];
    if (jsonValue['carrier_relations'] != null) {
      carrierRelations = new List<Null>();
      jsonValue['carrier_relations'].forEach((v) {
        carrierRelations.add(json.encode(v));
      });
    }
    if (jsonValue['reversed_carrier_relations'] != null) {
      reversedCarrierRelations = new List<Null>();
      jsonValue['reversed_carrier_relations'].forEach((v) {
        reversedCarrierRelations.add(json.encode(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_name'] = this.companyName;
    data['company_preffix'] = this.companyPreffix;
    data['url'] = this.url;
    data['phone'] = this.phone;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['email'] = this.email;
    data['fax'] = this.fax;
    data['physical_address_line'] = this.physicalAddressLine;
    data['physical_additional_address_line'] =
        this.physicalAdditionalAddressLine;
    data['physical_city'] = this.physicalCity;
    data['physical_state'] = this.physicalState;
    data['physical_zip'] = this.physicalZip;
    data['physical_country'] = this.physicalCountry;
    data['billing_address_line'] = this.billingAddressLine;
    data['billing_additional_address_line'] = this.billingAdditionalAddressLine;
    data['billing_city'] = this.billingCity;
    data['billing_state'] = this.billingState;
    data['billing_zip'] = this.billingZip;
    data['billing_country'] = this.billingCountry;
    data['mc_number'] = this.mcNumber;
    data['us_dot_number'] = this.usDotNumber;
    data['scac'] = this.scac;
    data['web_address'] = this.webAddress;
    data['factoring_company_name'] = this.factoringCompanyName;
    data['factoring_company_physical_address_line'] =
        this.factoringCompanyPhysicalAddressLine;
    data['factoring_company_physical_additional_address_line'] =
        this.factoringCompanyPhysicalAdditionalAddressLine;
    data['factoring_company_physical_city'] = this.factoringCompanyPhysicalCity;
    data['factoring_company_physical_state'] =
        this.factoringCompanyPhysicalState;
    data['factoring_company_physical_zip'] = this.factoringCompanyPhysicalZip;
    data['factoring_company_physical_country'] =
        this.factoringCompanyPhysicalCountry;
    data['factoring_company_billing_address_line'] =
        this.factoringCompanyBillingAddressLine;
    data['factoring_company_billing_additional_address_line'] =
        this.factoringCompanyBillingAdditionalAddressLine;
    data['factoring_company_billing_city'] = this.factoringCompanyBillingCity;
    data['factoring_company_billing_state'] = this.factoringCompanyBillingState;
    data['factoring_company_billing_zip'] = this.factoringCompanyBillingZip;
    data['factoring_company_billing_country'] =
        this.factoringCompanyBillingCountry;
    data['factoring_company_phone'] = this.factoringCompanyPhone;
    data['factoring_company_fax'] = this.factoringCompanyFax;
    data['factoring_company_email'] = this.factoringCompanyEmail;
    data['factoring_company_contact_person'] =
        this.factoringCompanyContactPerson;
    data['activate_factoring_company'] = this.activateFactoringCompany;
    if (this.carrierRelations != null) {
      data['carrier_relations'] =
          this.carrierRelations.map((v) => json.decode(v)).toList();
    }
    if (this.reversedCarrierRelations != null) {
      data['reversed_carrier_relations'] =
          this.reversedCarrierRelations.map((v) => json.decode(v)).toList();
    }
    return data;
  }
}

class User {
  String id;
  String username;
  String usernameCanonical;
  String email;
  String emailCanonical;
  bool enabled;
  String salt;
  String password;
  Null plainPassword;
  String lastLogin;
  String confirmationToken;
  String passwordRequestedAt;
  List<Null> groups;
  String roles;

  User(
      {this.id,
      this.username,
      this.usernameCanonical,
      this.email,
      this.emailCanonical,
      this.enabled,
      this.salt,
      this.password,
      this.plainPassword,
      this.lastLogin,
      this.confirmationToken,
      this.passwordRequestedAt,
      this.groups,
      this.roles});

  User.fromJson(Map<String, dynamic> jsonValue) {
    id = jsonValue['id'];
    username = jsonValue['username'];
    usernameCanonical = jsonValue['username_canonical'];
    email = jsonValue['email'];
    emailCanonical = jsonValue['email_canonical'];
    enabled = jsonValue['enabled'];
    salt = jsonValue['salt'];
    password = jsonValue['password'];
    plainPassword = jsonValue['plain_password'];
    lastLogin = jsonValue['last_login'];
    confirmationToken = jsonValue['confirmation_token'];
    passwordRequestedAt = jsonValue['password_requested_at'];
    if (jsonValue['groups'] != null) {
      groups = new List<Null>();
      jsonValue['groups'].forEach((v) {
        groups.add(json.encode(v));
      });
    }
    roles = jsonValue['roles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['username_canonical'] = this.usernameCanonical;
    data['email'] = this.email;
    data['email_canonical'] = this.emailCanonical;
    data['enabled'] = this.enabled;
    data['salt'] = this.salt;
    data['password'] = this.password;
    data['plain_password'] = this.plainPassword;
    data['last_login'] = this.lastLogin;
    data['confirmation_token'] = this.confirmationToken;
    data['password_requested_at'] = this.passwordRequestedAt;
    if (this.groups != null) {
      data['groups'] = this.groups.map((v) => json.decode(v)).toList();
    }
    data['roles'] = this.roles;
    return data;
  }
}
