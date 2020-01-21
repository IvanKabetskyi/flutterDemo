import 'package:json_annotation/json_annotation.dart';
import 'package:my_app/src/data/models/User/user.dart';

part 'current_carrier.g.dart';

@JsonSerializable()
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
  String physicalAdditionalAddressLine;
  String physicalCity;
  String physicalState;
  String physicalZip;
  String physicalCountry;
  String billingAddressLine;
  String billingAdditionalAddressLine;
  String billingCity;
  String billingState;
  String billingZip;
  String billingCountry;
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
  List<String> carrierRelations;
  List<String> reversedCarrierRelations;

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

  factory Carrier.fromJson(Map<String, dynamic> json) =>
      _$CarrierFromJson(json);

  Map<String, dynamic> toJson() => _$CarrierToJson(this);
}
