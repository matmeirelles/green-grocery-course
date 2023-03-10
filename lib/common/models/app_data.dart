import 'package:green_grocery_course/common/models/item_model.dart';

ItemModel apple = ItemModel(
  name: 'Apple',
  imgUrl: 'assets/fruits/apple.png',
  measureUnit: 'kg',
  price: 4.99,
  description: 'The best apple in the region',
);

ItemModel grape = ItemModel(
  name: 'Grape',
  imgUrl: 'assets/fruits/grape.png',
  measureUnit: 'kg',
  price: 9.99,
  description: 'The best grape in the region',
);

ItemModel guava = ItemModel(
  name: 'Guava',
  imgUrl: 'assets/fruits/guava.png',
  measureUnit: 'kg',
  price: 5.99,
  description: 'The best guava in the region',
);

ItemModel kiwi = ItemModel(
  name: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  measureUnit: 'kg',
  price: 13.99,
  description: 'The best kiwi in the region',
);

ItemModel mango = ItemModel(
  name: 'Mango',
  imgUrl: 'assets/fruits/mango.png',
  measureUnit: 'un',
  price: 1.50,
  description: 'The best mango in the region',
);

ItemModel papaya = ItemModel(
  name: 'Papaya',
  imgUrl: 'assets/fruits/papaya.png',
  measureUnit: 'un',
  price: 2.50,
  description: 'The best papaya in the region',
);

List<ItemModel> fruits = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];
