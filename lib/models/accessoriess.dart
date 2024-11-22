// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class Accessories {
  final int accessoriesId;
  final double price;
  final int series;
  final String size;
  final double rating;
  final String category;
  final String accessoriesName;
  final String imageURL;
  bool isFavorated;
  final String description;
  bool isSelected;

  Accessories({
    required this.accessoriesId,
    required this.price,
    required this.category,
    required this.accessoriesName,
    required this.size,
    required this.rating,
    required this.series,
    required this.imageURL,
    this.isFavorated = false,
    required this.description,
    this.isSelected = false,
  });

  // Getter untuk format harga dalam Rupiah
  String get formattedPrice => NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp ',
        decimalDigits: 0,
      ).format(price);

  // Daftar contoh accessories
  static List<Accessories> accessoriesList = [
    Accessories(
      accessoriesId: 0,
      price: 22000.0,
      category: 'Indoor',
      accessoriesName: 'Gelang',
      size: 'Small',
      rating: 4.5,
      series: 34,
      imageURL: 'assets/images/accessories_one.png',
      isFavorated: true,
      description: 'Gelang yang indah dan menawan hati',
    ),
    Accessories(
      accessoriesId: 1,
      price: 11000.0,
      category: 'Outdoor',
      accessoriesName: 'Tas Selempang',
      size: 'Medium',
      rating: 4.8,
      series: 56,
      imageURL: 'assets/images/accessories_two.png',
      description: 'Tas yang indah dan mewah yang memperindah penampilan',
    ),
    Accessories(
      accessoriesId: 2,
      price: 18000.0,
      category: 'Indoor',
      accessoriesName: 'Jam',
      size: 'Large',
      rating: 4.7,
      series: 34,
      imageURL: 'assets/images/accessories_three.png',
      description: 'Jam untuk mengingatkan kita waktu di dunia ini',
    ),
    Accessories(
      accessoriesId: 3,
      price: 24000.0,
      category: 'Recommended',
      accessoriesName: 'Parfum Chanel',
      size: 'Large',
      rating: 4.1,
      series: 66,
      imageURL: 'assets/images/accessories_four.png',
      isFavorated: true,
      description: 'Membuat kita wangi seharian',
    ),
    Accessories(
      accessoriesId: 4,
      price: 24000.0,
      category: 'Outdoor',
      accessoriesName: 'Parfum Dolge',
      size: 'Medium',
      rating: 4.4,
      series: 36,
      imageURL: 'assets/images/accessories_five.png',
      description: 'Tahan seharian di badan sepanjang hari',
    ),
  ];

  // Mendapatkan daftar aksesori yang difavoritkan
  static List<Accessories> getFavoritedAccessoriess() {
    return accessoriesList.where((item) => item.isFavorated).toList();
  }

  // Mendapatkan daftar aksesori yang telah ditambahkan ke keranjang
  static List<Accessories> addedToCartAccessoriess() {
    return accessoriesList.where((item) => item.isSelected).toList();
  }
}
