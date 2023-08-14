import 'utils/color_scheme.dart';
import 'package:flutter/material.dart';

class DrawerData extends StatelessWidget {
  const DrawerData({super.key});
  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> drawer = [
      const DrawerItem('Templates', Icons.bookmark_border),
      const DrawerItem('Categories', Icons.category_outlined),
      const DrawerItem('Analytics', Icons.analytics_outlined),
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 48, 50, 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              30,
            ),
            child: Image.asset(
              "assets/image/profile.jpeg",
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Drawer Menu',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Divider(
            color: ColorSchemeLight.instance!.lightBlue,
          ),
          ListView.builder(
              itemCount: drawer.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 12),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(drawer[index].icon),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              drawer[index].name,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorSchemeLight.instance!.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

class DrawerItem {
  final String name;
  final IconData icon;

  const DrawerItem(this.name, this.icon);
}
