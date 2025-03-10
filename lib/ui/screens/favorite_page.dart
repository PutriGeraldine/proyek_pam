import 'package:flutter/material.dart';
import 'package:pam_proyek/constants.dart';
import 'package:pam_proyek/models/accessoriess.dart';
import 'package:pam_proyek/ui/screens/widgets/accessories_widget.dart';

class FavoritePage extends StatefulWidget {
  final List<Accessories> favoritedAccessoriess;
  const FavoritePage({super.key, required this.favoritedAccessoriess});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favoritedAccessoriess.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/favorited.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your favorited Accessoriess',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height * .5,
              child: ListView.builder(
                  itemCount: widget.favoritedAccessoriess.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return AccessoriesWidget(
                        index: index, accessoriesList: widget.favoritedAccessoriess);
                  }),
            ),
    );
  }
}
