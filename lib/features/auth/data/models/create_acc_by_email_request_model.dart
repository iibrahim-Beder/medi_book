// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:medi_book/features/auth/domain/entities/create_acc_by_email_entitie.dart';

part 'create_acc_by_email_request_model.g.dart';

@JsonSerializable()
class CreateAccByEmailRequestModel extends CreateAccByEmailEntitie {
  final int accountID;
  final String email;
  @JsonKey(name: 'userName')
  final String name;
  @JsonKey(name: 'phoneNumber')
  final String phone;
  final String passWord;

  CreateAccByEmailRequestModel(
      {
      required this.accountID,
      required this.email,
      required this.name,
      required this.phone,
      required this.passWord})
      : super(email: email, name: name, phone: phone, passWord: passWord);

  factory CreateAccByEmailRequestModel.fromEntitie(
      CreateAccByEmailEntitie createAccByEmailEntitie) {
    return CreateAccByEmailRequestModel(
      accountID: 0,
      email: createAccByEmailEntitie.email,
      name: createAccByEmailEntitie.name,
      phone: createAccByEmailEntitie.phone,
      passWord: createAccByEmailEntitie.passWord,
    );
  }

  Map<String, dynamic> toJson() => _$CreateAccByEmailRequestModelToJson(this);
}
