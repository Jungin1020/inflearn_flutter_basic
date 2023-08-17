import 'menu.dart';

class MenuRepository {
  List<Menu> getMenus() {
    return [
      Menu(
        id: 0,
        name: 'Noodle with Chicken',
        price: 22,
        weight: 250,
        calories: 244,
        ingredients: ['Chicken', 'Egg', 'Mushrooms', 'Garlic', 'Olive Oil'],
        imageUrl:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Fsearch%3Fq%3Ddish&psig=AOvVaw0R4dbuQWfoJ5jlrloXyarr&ust=1687424156141000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJDGv_3-0_8CFQAAAAAdAAAAABAI',
      ),
      Menu(
        id: 1,
        name: 'Baked vegetables',
        price: 12,
        weight: 460,
        calories: 340,
        ingredients: ['Chicken', 'Egg', 'Mushrooms', 'Garlic', 'Olive Oil'],
        imageUrl:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Fsearch%3Fq%3Ddish&psig=AOvVaw0R4dbuQWfoJ5jlrloXyarr&ust=1687424156141000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJDGv_3-0_8CFQAAAAAdAAAAABAI',
      ),
      Menu(
        id: 2,
        name: 'Rice with Meat',
        price: 8,
        weight: 300,
        calories: 164,
        ingredients: ['Chicken', 'Egg', 'Mushrooms', 'Garlic', 'Olive Oil'],
        imageUrl:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Fsearch%3Fq%3Ddish&psig=AOvVaw0R4dbuQWfoJ5jlrloXyarr&ust=1687424156141000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJDGv_3-0_8CFQAAAAAdAAAAABAI',
      ),
    ];
  }
}
