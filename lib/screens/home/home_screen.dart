import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          alignment: Alignment.center,
          icon: SvgPicture.asset('assets/icons/search.svg'),
        )
      ],
    );
  }
}
