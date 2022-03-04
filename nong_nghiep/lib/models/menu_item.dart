class MenuItem {
  final String text;

  const MenuItem({required this.text});
}

class MenuItems {
  static const List<MenuItem> items = [
    itemRemove,
    itemReport,
    itemSave
  ];

  static const itemRemove = MenuItem(
    text: 'Xoá bình luận'
  );
  static const itemReport = MenuItem(
    text: 'Báo cáo'
  );
  static const itemSave = MenuItem(
    text: 'Lưu bình luận'
  );
}