import 'package:hdorder/model/product_model.dart';

class ProductData {
  static List<ProductModel> products = [
    lobster,
    duck,
    honey,
    fish,
    goat,
    wax,
    soy,
    olive,
    mayonnaise,
    lemon,
    dip,
    tomato,
    salsa,
    chocolate,
    fishAndChips,
    fishPie,
    fishSoup,
    lobsterSoup,
    pumpkinSoup,
    tomatoSoup,
    pizzaMix,
    jellyBeans,
    lollipop,
    toffee,
    fetaSalad,
    fetaBLT,
    seafoodSalad,
    lobsterSkewer,
    lobsterSushi,
    fancyCake,
    honeyAppleCake,
    lemonCake,
    peachIceCream,
    sesameIceCream,
    strawberryIceCream,
    orangeSorbet,
    graciousBouquet,
  ];

  static ProductModel lobster = ProductModel(
    name: 'หางลอบสเตอร์',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/5/5d/Lobster_Tail.png',
    level: '44',
    isOutOfStock: false,
  );
  static ProductModel duck = ProductModel(
    name: 'ขนเป็ด',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/f/f9/Duck_Feather.png',
    level: '50',
    isOutOfStock: false,
  );
  static ProductModel honey = ProductModel(
    name: 'น้ำผึ้ง',
    imageUrl: 'https://static.wikia.nocookie.net/hayday/images/c/c6/Honey.png',
    level: '37',
    isOutOfStock: false,
  );
  static ProductModel goat = ProductModel(
    name: 'ชีสเเพะ',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/c/c8/Goat_Cheese.png',
    level: '33',
    isOutOfStock: false,
  );
  static ProductModel fish = ProductModel(
    name: 'เนื้อปลา',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/6/63/Fish_Fillet.png',
    level: '27',
    isOutOfStock: false,
  );
  static ProductModel wax = ProductModel(
    name: 'ขี้ผึ้ง',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/e/e4/Beeswax.png',
    level: '48',
  );
  static ProductModel soy = ProductModel(
    name: 'ซีอิีว',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/9/97/Soy_Sauce.png',
    level: '54',
    isOutOfStock: false,
  );
  static ProductModel olive = ProductModel(
    name: 'น้ำมันมะกอก',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/3/34/Olive_Oil.png',
    level: '60',
    isOutOfStock: false,
  );
  static ProductModel mayonnaise = ProductModel(
    name: 'มายองเนส',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/4/4e/Mayonnaise.png',
    level: '62',
    isOutOfStock: false,
  );
  static ProductModel lemon = ProductModel(
    name: 'เเยมเลมอน',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/e/ea/Lemon_Curd.png',
    level: '66',
    isOutOfStock: false,
  );
  static ProductModel dip = ProductModel(
    name: 'น้ำจิ้มมะกอก',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/3/32/Olive_Dip.png',
    level: '66',
    isOutOfStock: false,
  );
  static ProductModel tomato = ProductModel(
    name: 'ซอสมะเขือเทศ',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/0/09/Tomato_Sauce.png',
    level: '68',
    isOutOfStock: false,
  );

  static ProductModel salsa = ProductModel(
    name: 'ซัลซ่า',
    imageUrl: 'https://static.wikia.nocookie.net/hayday/images/1/1e/Salsa.png',
    level: '77',
    isOutOfStock: false,
  );
  static ProductModel chocolate = ProductModel(
    name: 'ช็อกโกแลต',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/d/df/Chocolate.png',
    level: '54',
    isOutOfStock: false,
  );
  static ProductModel fishAndChips = ProductModel(
    name: 'ฟิชเเอนด์ชิปส์',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/e/ea/Fish_and_Chips.png',
    level: '41',
    isOutOfStock: false,
  );
  static ProductModel fishPie = ProductModel(
    name: 'พายปลา',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/e/ec/Fish_Pie.png',
    level: '28',
    isOutOfStock: false,
  );
  static ProductModel fishSoup = ProductModel(
    name: 'ซุปปลา',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/b/be/Fish_Soup.png',
    level: '53',
    isOutOfStock: false,
  );
  static ProductModel lobsterSoup = ProductModel(
    name: 'ซุปลอบสเตอร์',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/5/59/Lobster_Soup.png',
    level: '46',
    isOutOfStock: false,
  );
  static ProductModel pumpkinSoup = ProductModel(
    name: 'ซุปฟักทอง',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/5/59/Pumpkin_Soup.png',
    level: '49',
    isOutOfStock: false,
  );
  static ProductModel tomatoSoup = ProductModel(
    name: 'ซุปมะเขือเทศ',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/d/dc/Tomato_Soup.png',
    level: '47',
    isOutOfStock: false,
  );
  static ProductModel pizzaMix = ProductModel(
    name: 'พิซซ่าทะเล',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/5/5f/Frutti_di_Mare_Pizza.png',
    level: '45',
    isOutOfStock: false,
  );
  static ProductModel jellyBeans = ProductModel(
    name: 'เยลลี่รูปถั่ว',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/e/ed/Jelly_Beans.png',
    level: '60',
    isOutOfStock: false,
  );
  static ProductModel lollipop = ProductModel(
    name: 'อมยิ้ม',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/5/58/Lollipop.png',
    level: '57',
    isOutOfStock: false,
  );
  static ProductModel toffee = ProductModel(
    name: 'ทอฟฟี่',
    imageUrl: 'https://static.wikia.nocookie.net/hayday/images/2/29/Toffee.png',
    level: '52',
    isOutOfStock: false,
  );
  static ProductModel fetaSalad = ProductModel(
    name: 'สลัดชีสเฟตา',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/9/96/Feta_Salad.png',
    level: '58',
    isOutOfStock: false,
  );
  static ProductModel fetaBLT = ProductModel(
    name: 'สลัด BLT',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/e/eb/BLT_Salad.png',
    level: '58',
    isOutOfStock: false,
  );
  static ProductModel seafoodSalad = ProductModel(
    name: 'สลัดซีฟู้ด',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/6/69/Seafood_Salad.png',
    level: '64',
    isOutOfStock: false,
  );
  static ProductModel lobsterSkewer = ProductModel(
    name: 'ลอบสเตอร์ย่าง',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/6/62/Lobster_Skewer.png',
    level: '48',
    isOutOfStock: false,
  );
  static ProductModel fancyCake = ProductModel(
    name: 'เค้กแฟนซี',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/d/dd/Fancy_Cake.png',
    level: '54',
    isOutOfStock: false,
  );
  static ProductModel honeyAppleCake = ProductModel(
    name: 'เค้กแอปเปิ้ลน้ำผึ้ง',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/1/16/Honey_Apple_Cake.png',
    level: '42',
    isOutOfStock: false,
  );
  static ProductModel lemonCake = ProductModel(
    name: 'เค้กเลม่อน',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/6/6c/Lemon_Cake.png',
    level: '68',
    isOutOfStock: false,
  );
  static ProductModel peachIceCream = ProductModel(
    name: 'ไอศครีมพีช',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/7/72/Peach_Ice_Cream.png',
    level: '83',
    isOutOfStock: false,
  );
  static ProductModel sesameIceCream = ProductModel(
    name: 'ไอศครีมรสงา',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/7/77/Sesame_Ice_Cream.png',
    level: '50',
    isOutOfStock: false,
  );
  static ProductModel strawberryIceCream = ProductModel(
    name: 'ไอศครีมสตรอเบอร์รี่',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/8/8d/Strawberry_Ice_Cream.png',
    level: '34',
    isOutOfStock: false,
  );
  static ProductModel orangeSorbet = ProductModel(
    name: 'เชอร์เบตส้ม',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/1/11/Orange_Sorbet.png',
    level: '78',
    isOutOfStock: false,
  );
  static ProductModel lobsterSushi = ProductModel(
    name: 'ซูชิลอบสเตอร์',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/7/7b/Lobster_Sushi.png',
    level: '59',
    isOutOfStock: false,
  );
  static ProductModel graciousBouquet = ProductModel(
    name: 'ช่อดอกไม้สวยงาม',
    imageUrl:
        'https://static.wikia.nocookie.net/hayday/images/8/82/Gracious_Bouquet.png',
    level: '73',
    isOutOfStock: false,
  );
}
