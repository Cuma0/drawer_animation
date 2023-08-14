import 'utils/color_scheme.dart';
import 'package:flutter/material.dart';

import 'drawer_data.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.65;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double slide = rightSlide * _animationController.value;
        double scale = 1 - (_animationController.value * 0.15);
        double radius = _animationController.value * 50;
        return Stack(
          children: [
            // Drawer
            Scaffold(
              backgroundColor: ColorSchemeLight.instance!.darkBlue,
              body: const DrawerData(),
            ),
            //Main Page
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(radius),
                ),
                child: Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                        onPressed: () => _toggleAnimation(),
                        icon: AnimatedIcon(
                          icon: AnimatedIcons.menu_close,
                          progress: _animationController,
                        ),
                      ),
                      title: Text(
                        "Animated Drawer",
                        style: TextStyle(
                            color: ColorSchemeLight.instance!.lightBlue),
                      ),
                    ),
                    body: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "What's\nup!",
                        style: TextStyle(
                            fontSize: 56, fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
            )
          ],
        );
      },
    );
  }
}
