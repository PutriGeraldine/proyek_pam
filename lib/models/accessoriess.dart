class Accessories {
  final int accessoriesId;
  final int price;
  final int series;
  final String size;
  final double rating;
  final String category;
  final String accessoriesName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Accessories(
      {required this.accessoriesId,
      required this.price,
      required this.category,
      required this.accessoriesName,
      required this.size,
      required this.rating,
      required this.series,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of accessoriess data
  static List<Accessories> accessoriesList = [
    Accessories(
        accessoriesId: 0,
        price: 22,
        category: 'Indoor',
        accessoriesName: 'Sanseviera',
        size: 'Small',
        rating: 4.5,
        series: 34,
        imageURL: 'assets/images/accessories_one.png',
        isFavorated: true,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 1,
        price: 11,
        category: 'Outdoor',
        accessoriesName: 'Philodendron',
        size: 'Medium',
        rating: 4.8,
        series: 56,
        imageURL: 'assets/images/accessories_two.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 2,
        price: 18,
        category: 'Indoor',
        accessoriesName: 'Beach Daisy',
        size: 'Large',
        rating: 4.7,
        series: 34,
        imageURL: 'assets/images/accessories_three.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 3,
        price: 30,
        category: 'Outdoor',
        accessoriesName: 'Big Bluestem',
        size: 'Small',
        rating: 4.5,
        series: 35,
        imageURL: 'assets/images/accessories_one.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 4,
        price: 24,
        category: 'Recommended',
        accessoriesName: 'Big Bluestem',
        size: 'Large',
        rating: 4.1,
        series: 66,
        imageURL: 'assets/images/accessories_four.png',
        isFavorated: true,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 5,
        price: 24,
        category: 'Outdoor',
        accessoriesName: 'Meadow Sage',
        size: 'Medium',
        rating: 4.4,
        series: 36,
        imageURL: 'assets/images/accessories_five.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 6,
        price: 19,
        category: 'Garden',
        accessoriesName: 'Plumbago',
        size: 'Small',
        rating: 4.2,
        series: 46,
        imageURL: 'assets/images/accessories_six.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 7,
        price: 23,
        category: 'Garden',
        accessoriesName: 'Tritonia',
        size: 'Medium',
        rating: 4.5,
        series: 34,
        imageURL: 'assets/images/accessories_seven.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Accessories(
        accessoriesId: 8,
        price: 46,
        category: 'Recommended',
        accessoriesName: 'Tritonia',
        size: 'Medium',
        rating: 4.7,
        series: 46,
        imageURL: 'assets/images/accessories_eight.png',
        isFavorated: false,
        decription:
            'This accessories is one of the best accessories. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Accessories> getFavoritedAccessoriess() {
    List<Accessories> travelList = Accessories.accessoriesList;
    return travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Accessories> addedToCartAccessoriess() {
    List<Accessories> selectedaccessoriess = Accessories.accessoriesList;
    return selectedaccessoriess
        .where((element) => element.isSelected == true)
        .toList();
  }
}
