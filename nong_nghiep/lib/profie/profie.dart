import 'package:equatable/equatable.dart';
import 'package:nong_nghiep/models/image.dart';

class Profie extends Equatable {
  final String id;
  final String fullName;
  final String phoneNumber;
  final String address;
  final String email;
  final String gender;
  final String role;
  final bool block;
  final String code;
  final Image avatar;
  final DateTime created;

  const Profie(this.id, this.fullName, this.phoneNumber, 
    this.address, this.email, this.gender, this.role, 
    this.block, this.code, this.avatar, this.created);

  Profie.from(Map<String, dynamic> json)
  : id = json["_id"],
    fullName = json["fullName"],
    phoneNumber = json["phoneNumber"],
    address = json["address"],
    email = json["email"],
    gender = json["gender"],
    role = json["role"],
    block = json["block"],
    code = json["code"],
    avatar = Image.from(json["avatar"]),
    created = DateTime.parse(json["created"]);

  static final nullProfie = Profie("", "", "", "", "", "", "", true, "", Image.none, DateTime(1970));

  @override
  List<Object?> get props => [id];
}