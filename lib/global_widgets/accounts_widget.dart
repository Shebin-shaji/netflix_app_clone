import 'package:flutter/cupertino.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({
    super.key,
    this.height,
    this.width,
    required this.text,
    required this.image,
  });
  final double? height;
  final double? width;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: ColorConstants.primaryWhite, fontSize: 20),
          )
        ],
      ),
    );
  }
}
