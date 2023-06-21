import 'package:basic_food_delivery_clone/data/menu.dart';
import 'package:basic_food_delivery_clone/data/menu_repo.dart';

import 'restaurant.dart';

class RestaurantRepository {
  List<Menu> menus = MenuRepository().getMenus();

  List<Restaurant> getRestaurants() {
    return [
      Restaurant(
        id: 0,
        name: 'The Mermaid Inn',
        category: 'Asian',
        categoryDetail: 'Seafood',
        description:
            'The panoramic dining at 11 Mirrors Restaurant presents a number of trademarks dishes.',
        address: '426 Amsterdam Ave, NY',
        distance: 11.1,
        stars: 4.5,
        menu: menus,
        imgUrl:
            'https://img.marieclairekorea.com/2021/05/mck_6090e6d859f68.jpg',
      ),
      Restaurant(
        id: 1,
        name: 'The Mermaid Inn',
        category: 'Asian',
        categoryDetail: 'Seafood',
        description:
            'The panoramic dining at 11 Mirrors Restaurant presents a number of trademarks dishes.',
        address: '426 Amsterdam Ave, NY',
        distance: 11.1,
        stars: 4.5,
        menu: menus,
        imgUrl:
            'https://img.marieclairekorea.com/2021/05/mck_6090e6d859f68.jpg',
      ),
    ];
  }
}
