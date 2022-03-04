import 'package:nong_nghiep/models/image.dart';

class Store {
  final String id;
  final String name;
  final String phoneNumber;
  final String address;
  final String ownerID;
  final bool authenticated;
  final Image avatar;
  final Image banner;
  final DateTime created;

  Store(this.id, this.name, this.phoneNumber, 
  this.address, this.ownerID, this.authenticated, 
  this.avatar, this.banner, this.created);

  Store.from(Map<String, dynamic> json)
  : id = json["_id"],
    name = json["storeName"],
    phoneNumber = json["phoneNumber"],
    address = json["address"],
    ownerID = json["ownerID"],
    authenticated = json["authenticated"],
    avatar = Image.from(json["avatar"]),
    banner = Image.from(json["banner"]),
    created = DateTime.parse(json["created"]);
}