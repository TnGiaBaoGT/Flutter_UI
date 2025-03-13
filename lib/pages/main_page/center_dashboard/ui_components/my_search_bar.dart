import 'package:dashboard_tranking/responsive.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(!Responsive.isDesktop(context))
             Padding(
               padding: const EdgeInsets.only(right: kDefaultPadding/2),
                 child: InkWell(
                   onTap: Scaffold.of(context).openDrawer,
                   child: const Icon(Icons.menu),
                               ),
                 ),
          if(!Responsive.isMobile(context))
          const Expanded(
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                fillColor: cardBackgroundColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                filled: true,
              ),
            ),
          ),

          if(Responsive.isMobile(context))
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: InkWell(
                      onTap: Scaffold.of(context).openEndDrawer,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset('assets/images/avatar.png',
                        width: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
