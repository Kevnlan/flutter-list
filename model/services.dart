import 'package:flutter_application_test/screen/prospect/model/datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'services.g.dart';

@JsonSerializable(explicitToJson: true)
class ProspectList {
  bool success;
  List<Data> data;

  ProspectList({this.success, this.data});

  factory ProspectList.fromJson(Map<String, dynamic> json) =>
      _$ProspectListFromJson(json);

  Map<String, dynamic> toJson() => _$ProspectListToJson(this);
}
