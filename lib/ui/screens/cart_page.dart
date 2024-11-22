import 'package:flutter/material.dart';
import 'package:pam_proyek/constants.dart';
import 'package:pam_proyek/models/accessoriess.dart';

class CartPage extends StatefulWidget {
  final List<Accessories> addedToCartAccessoriess;
  const CartPage({super.key, required this.addedToCartAccessoriess});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.addedToCartAccessoriess.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    child: Image.asset('assets/images/add-cart.png'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Your Cart is Empty',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: widget.addedToCartAccessoriess.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return AccessoriesWidget(
                              index: index,
                              accessoriesList: widget.addedToCartAccessoriess);
                        }),
                  ),
                  Column(
                    children: [
                      const Divider(thickness: 0.8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Totals',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            widget.addedToCartAccessoriess
                                .map((item) => item.price)
                                .reduce((a, b) => a + b)
                                .toStringAsFixed(0), // Total harga
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}

class AccessoriesWidget extends StatelessWidget {
  final int index;
  final List<Accessories> accessoriesList;

  const AccessoriesWidget({
    super.key,
    required this.index,
    required this.accessoriesList,
  });

  @override
  Widget build(BuildContext context) {
    Accessories accessories = accessoriesList[index];

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
              accessories.imageURL,
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  accessories.accessoriesName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  accessories.formattedPrice,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${accessories.rating} ★',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                accessories.isFavorated ? Icons.favorite : Icons.favorite_border,
                color: accessories.isFavorated ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
