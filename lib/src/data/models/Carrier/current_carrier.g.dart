// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_carrier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Carrier _$CarrierFromJson(Map<String, dynamic> json) {
  return Carrier(
    id: json['id'] as String,
    companyName: json['companyName'] as String,
    companyPreffix: json['companyPreffix'] as String,
    url: json['url'] as String,
    phone: json['phone'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    email: json['email'] as String,
    fax: json['fax'] as String,
    physicalAddressLine: json['physicalAddressLine'] as String,
    physicalAdditionalAddressLine:
        json['physicalAdditionalAddressLine'] as String,
    physicalCity: json['physicalCity'] as String,
    physicalState: json['physicalState'] as String,
    physicalZip: json['physicalZip'] as String,
    physicalCountry: json['physicalCountry'] as String,
    billingAddressLine: json['billingAddressLine'] as String,
    billingAdditionalAddressLine:
        json['billingAdditionalAddressLine'] as String,
    billingCity: json['billingCity'] as String,
    billingState: json['billingState'] as String,
    billingZip: json['billingZip'] as String,
    billingCountry: json['billingCountry'] as String,
    mcNumber: json['mcNumber'] as String,
    usDotNumber: json['usDotNumber'] as String,
    scac: json['scac'] as String,
    webAddress: json['webAddress'] as String,
    factoringCompanyName: json['factoringCompanyName'] as String,
    factoringCompanyPhysicalAddressLine:
        json['factoringCompanyPhysicalAddressLine'] as String,
    factoringCompanyPhysicalAdditionalAddressLine:
        json['factoringCompanyPhysicalAdditionalAddressLine'] as String,
    factoringCompanyPhysicalCity:
        json['factoringCompanyPhysicalCity'] as String,
    factoringCompanyPhysicalState:
        json['factoringCompanyPhysicalState'] as String,
    factoringCompanyPhysicalZip: json['factoringCompanyPhysicalZip'] as String,
    factoringCompanyPhysicalCountry:
        json['factoringCompanyPhysicalCountry'] as String,
    factoringCompanyBillingAddressLine:
        json['factoringCompanyBillingAddressLine'] as String,
    factoringCompanyBillingAdditionalAddressLine:
        json['factoringCompanyBillingAdditionalAddressLine'] as String,
    factoringCompanyBillingCity: json['factoringCompanyBillingCity'] as String,
    factoringCompanyBillingState:
        json['factoringCompanyBillingState'] as String,
    factoringCompanyBillingZip: json['factoringCompanyBillingZip'] as String,
    factoringCompanyBillingCountry:
        json['factoringCompanyBillingCountry'] as String,
    factoringCompanyPhone: json['factoringCompanyPhone'] as String,
    factoringCompanyFax: json['factoringCompanyFax'] as String,
    factoringCompanyEmail: json['factoringCompanyEmail'] as String,
    factoringCompanyContactPerson:
        json['factoringCompanyContactPerson'] as String,
    activateFactoringCompany: json['activateFactoringCompany'] as bool,
    carrierRelations:
        (json['carrierRelations'] as List)?.map((e) => e as String)?.toList(),
    reversedCarrierRelations: (json['reversedCarrierRelations'] as List)
        ?.map((e) => e as String)
        ?.toList(),
  );
}

Map<String, dynamic> _$CarrierToJson(Carrier instance) => <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'companyPreffix': instance.companyPreffix,
      'url': instance.url,
      'phone': instance.phone,
      'user': instance.user,
      'email': instance.email,
      'fax': instance.fax,
      'physicalAddressLine': instance.physicalAddressLine,
      'physicalAdditionalAddressLine': instance.physicalAdditionalAddressLine,
      'physicalCity': instance.physicalCity,
      'physicalState': instance.physicalState,
      'physicalZip': instance.physicalZip,
      'physicalCountry': instance.physicalCountry,
      'billingAddressLine': instance.billingAddressLine,
      'billingAdditionalAddressLine': instance.billingAdditionalAddressLine,
      'billingCity': instance.billingCity,
      'billingState': instance.billingState,
      'billingZip': instance.billingZip,
      'billingCountry': instance.billingCountry,
      'mcNumber': instance.mcNumber,
      'usDotNumber': instance.usDotNumber,
      'scac': instance.scac,
      'webAddress': instance.webAddress,
      'factoringCompanyName': instance.factoringCompanyName,
      'factoringCompanyPhysicalAddressLine':
          instance.factoringCompanyPhysicalAddressLine,
      'factoringCompanyPhysicalAdditionalAddressLine':
          instance.factoringCompanyPhysicalAdditionalAddressLine,
      'factoringCompanyPhysicalCity': instance.factoringCompanyPhysicalCity,
      'factoringCompanyPhysicalState': instance.factoringCompanyPhysicalState,
      'factoringCompanyPhysicalZip': instance.factoringCompanyPhysicalZip,
      'factoringCompanyPhysicalCountry':
          instance.factoringCompanyPhysicalCountry,
      'factoringCompanyBillingAddressLine':
          instance.factoringCompanyBillingAddressLine,
      'factoringCompanyBillingAdditionalAddressLine':
          instance.factoringCompanyBillingAdditionalAddressLine,
      'factoringCompanyBillingCity': instance.factoringCompanyBillingCity,
      'factoringCompanyBillingState': instance.factoringCompanyBillingState,
      'factoringCompanyBillingZip': instance.factoringCompanyBillingZip,
      'factoringCompanyBillingCountry': instance.factoringCompanyBillingCountry,
      'factoringCompanyPhone': instance.factoringCompanyPhone,
      'factoringCompanyFax': instance.factoringCompanyFax,
      'factoringCompanyEmail': instance.factoringCompanyEmail,
      'factoringCompanyContactPerson': instance.factoringCompanyContactPerson,
      'activateFactoringCompany': instance.activateFactoringCompany,
      'carrierRelations': instance.carrierRelations,
      'reversedCarrierRelations': instance.reversedCarrierRelations,
    };
