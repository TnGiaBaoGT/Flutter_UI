import 'package:dashboard_tranking/constant.dart';
import 'package:dashboard_tranking/data/side_menu_data.dart';
import 'package:dashboard_tranking/model/menu_class.dart';
import 'package:flutter/material.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      color: cardBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*4,horizontal: kDefaultPadding*2),
      child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) {
            final menuData = data.menu[index];
            final isSelected = selectedIndex == index;
            return buildContainer(isSelected, index, menuData);
          },
      ),
    );
  }




  Container buildContainer(bool isSelected, int index, MenuItems menuData) {
    return Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
            decoration: BoxDecoration(
              color: isSelected ? selectionColor : null,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2,horizontal: kDefaultPadding/2),
                        child: Icon(
                          menuData.iconData,
                          color: isSelected ? Colors.black : Colors.grey,
                        ),
                      ),
                      Text(
                        menuData.title,
                        style: TextStyle(
                          color: isSelected ? Colors.black : Colors.grey,
                          fontWeight: isSelected ? FontWeight.bold : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
