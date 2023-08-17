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
        menus: menus,
        imgUrl:
            'https://img.marieclairekorea.com/2021/05/mck_6090e6d859f68.jpg',
      ),
      Restaurant(
        id: 1,
        name: 'Crave Fishbar',
        category: 'Asian',
        categoryDetail: 'Seafood',
        description:
            'The restaurant where you can experience the delicacies of various fish and seafood.',
        address: '426 Amsterdam Ave, NY',
        distance: 8.8,
        stars: 4.6,
        menus: menus,
        imgUrl:
            'https://mblogthumb-phinf.pstatic.net/MjAyMzAzMTNfMTEg/MDAxNjc4Njc2MDA2NzU4.lc8Yf6HikACXNhtsB4xYt8IHHFE3zaNlgeyy-K6brvUg.apbdmjXE98g-nl5pxLe4ugFB0mmleMyV2S5U7LOZc84g.JPEG.luavy/IMG_2648_복사.jpg?type=w800',
      ),
      Restaurant(
        id: 2,
        name: 'Carmine',
        category: 'Bar',
        categoryDetail: 'Seafood',
        description:
            'A cozy bar where you can enjoy a romantic atmosphere with your loved one.',
        address: '426 Amsterdam Ave, NY',
        distance: 7.4,
        stars: 3.9,
        menus: menus,
        imgUrl: 'https://t1.daumcdn.net/cfile/tistory/2310AD4851C391522D',
      ),
      Restaurant(
        id: 3,
        name: 'Good Dining',
        category: 'Asian',
        categoryDetail: 'Seafood',
        description:
            'A vegetarian restaurant located in a forest, where you can embrace the beauty of nature.',
        address: '426 Amsterdam Ave, NY',
        distance: 28.7,
        stars: 4.8,
        menus: menus,
        imgUrl:
            'https://img8.yna.co.kr/etc/inner/KR/2020/03/24/AKR20200324173300030_02_i_P4.jpg',
      ),
    ];
  }
}
