class Rating {
  final int total;
  final double star;

  Rating(this.total, this.star);

  Rating.from(Map<String, dynamic> json)
  : total = json['total'],
    star = json['star'].toDouble();
}