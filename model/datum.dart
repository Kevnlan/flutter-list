import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Data {
  int id;
  int userId;
  int countryId;
  String firstname;
  String lastname;
  String email;
  String phone;
  int amountSpeculated;
  String sectorId;
  int referralId;
  int officeTypeId;
  int officeId;
  int relationOfficerId;
  String comments;
  int status;
  String createdAt;
  String updatedAt;
  String channelId;
  String agentId;

  Data(
      {this.id,
      this.userId,
      this.countryId,
      this.firstname,
      this.lastname,
      this.email,
      this.phone,
      this.amountSpeculated,
      this.sectorId,
      this.referralId,
      this.officeTypeId,
      this.officeId,
      this.relationOfficerId,
      this.comments,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.channelId,
      this.agentId});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
