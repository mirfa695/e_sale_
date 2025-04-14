import 'package:e_sale/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorConstants.secondary,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Admin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "admin@gmail.com",
                      style: TextStyle(
                        color: ColorConstants.greyColor,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            );
  }
}