import 'juice.dart';

List<Map<String, dynamic>> postData = [
  {
    'name': 'CARROT, PINEAPPLE AND GINGER JUICE',
    'price': 3.76,
    'photoUrl':
        'https://simple-veganista.com/wp-content/uploads/2013/05/carrot-pineapple-juice-with-ginger-2-150x150.webp',
  },
  {
    'name': 'CELERY JUICE',
    'price': 5.32,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_celery-juice-recipe-and-benefits-104.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'LEMON-GINGER TURMERIC WELLNESS SHOTS',
    'price': 5.22,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_5-Ingredient-Turmeric-Wellness-Shots.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'SIMPLE GREEN JUICE',
    'price': 2.18,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_homemade-green-juice-recipe-4.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'WATERMELON JUICE',
    'price': 6.44,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_watermelon-juice-recipe-3.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'VITAMIN BOOST DETOX JUICE',
    'price': 3.27,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_Vitamin-Boost-Detox-Juice-Recipe-1.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'KIWI AGUA FRESCA',
    'price': 7.55,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_kiwi-water-2.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'SUPER-POWERED ORANGE JUICE',
    'price': 4.62,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_Carrot-Apple-Nectarine-Ginger-Lemon-Juice.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'IMMUNE-BOOSTING KICKSTART JUICE',
    'price': 2.44,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_Kick-Start-Juice-2.jpeg?auto=format,compress&cs=strip',
  },
  {
    'name': 'SPARKLING POMEGRANATE JUICE',
    'price': 2.89,
    'photoUrl':
        'https://purewows3.imgix.net/images/articles/2021_10/healthy-juice-recipes_Sparkling-Pomegranate-Juice.jpeg?auto=format,compress&cs=strip',
  }
];
List<Juice> objects = postData.map((e) => Juice.fromJason(e)).toList();
