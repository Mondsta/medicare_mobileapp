// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicare_application/theme/custom_app_theme.dart';

import '../../../../animation/fadeanimation.dart';
import '../../../../utils/constants.dart';
import '../../../../models/shoe_model.dart';
import '../../../../view/detail/detail_screen.dart';
import '../../../data/dummy_data.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndexOfCategory = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: 10),
        lastCategoriesWidget(width, height),
      ],
    );
  }

  // Last Categories Widget Components
  lastCategoriesWidget(width, height) {
    return Container(
      width: width,
      height: height / 4,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: availableobat.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            ShoeModel model = availableobat[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => DetailScreen(
                      model: model,
                      isComeFromMoreSection: true,
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: width / 2.24,
                height: height / 4.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 140,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: AppConstantsColor.darkTextColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 26,
                      left: 25,
                      child: FadeAnimation(
                        delay: 1.5,
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-15 / 360),
                          child: Container(
                            width: width / 3,
                            height: height / 9,
                            child: Hero(
                              tag: model.model,
                              child: Image(
                                image: AssetImage(model.imgAddress),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 124,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text("${model.name} ${model.model}",
                                style: AppThemes.homeGridNameAndModel),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 145,
                      left: 45,
                      child: FadeAnimation(
                        delay: 2.2,
                        child: Container(
                          width: width / 4,
                          height: height / 42,
                          child: FittedBox(
                            child: Text(
                              "\IDR ${model.price.toStringAsFixed(2)}",
                              style: AppThemes.homeGridPrice
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}