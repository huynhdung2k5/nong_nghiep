import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/models/menu_item.dart';

class RatingTile extends StatelessWidget {
  const RatingTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'Việt Anh ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('09/02/2021', style: Get.textTheme.overline,),
          leading: const CircleAvatar(
            backgroundColor: Colors.pink,
          ),
          trailing: PopupMenuButton<MenuItem>(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              ...MenuItems.items.map(buildItem).toList(),
            ]
          )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RatingBar(
            initialRating: 4,
            itemCount: 5,
            allowHalfRating: false,
            itemSize: 20,
            ignoreGestures: true,
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              half: const Icon(
                Icons.star,
              ),
              empty: const Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ),
            onRatingUpdate: (_){},
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          child: Text("Phân bón rất hiệu quả, mình rất thích, 4 sao."),
        ),
      ],
    );
  }
  PopupMenuItem<MenuItem> buildItem(MenuItem itemX) => PopupMenuItem(
    child: Text(itemX.text),
  );
}