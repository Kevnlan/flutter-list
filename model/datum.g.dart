// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'] as int,
    userId: json['userId'] as int,
    countryId: json['countryId'] as int,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    amountSpeculated: json['amountSpeculated'] as int,
    sectorId: json['sectorId'] as String,
    referralId: json['referralId'] as int,
    officeTypeId: json['officeTypeId'] as int,
    officeId: json['officeId'] as int,
    relationOfficerId: json['relationOfficerId'] as int,
    comments: json['comments'] as String,
    status: json['status'] as int,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    channelId: json['channelId'] as String,
    agentId: json['agentId'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'countryId': instance.countryId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'phone': instance.phone,
      'amountSpeculated': instance.amountSpeculated,
      'sectorId': instance.sectorId,
      'referralId': instance.referralId,
      'officeTypeId': instance.officeTypeId,
      'officeId': instance.officeId,
      'relationOfficerId': instance.relationOfficerId,
      'comments': instance.comments,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'channelId': instance.channelId,
      'agentId': instance.agentId,
    };
