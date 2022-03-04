import 'package:equatable/equatable.dart';

class Image extends Equatable {
  final String url;
  final String publicId;

  const Image(this.url, this.publicId);

  Image.from(Map<String, dynamic> json)
  : url = json['url'],
    publicId = json['publicID'];

  static const none = Image('', '');

  @override
  List<Object?> get props => [url];
}