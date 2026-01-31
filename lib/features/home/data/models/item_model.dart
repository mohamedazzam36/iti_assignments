import 'package:hive/hive.dart';
part 'item_model.g.dart';

@HiveType(typeId: 0)
class ItemModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String imagePath;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final int id;
  @HiveField(4)
  bool isFav;

  ItemModel({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.id,
    this.isFav = false,
  });
}
