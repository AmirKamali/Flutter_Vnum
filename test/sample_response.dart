
import 'test_types.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sample_response.g.dart';


@JsonSerializable()
class SampleResponse {
  
  @JsonKey(name: "carType")
  CarType carType;

  SampleResponse();
  factory SampleResponse.fromJson(Map<String, dynamic> json) =>
      _$SampleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SampleResponseToJson(this);
}