import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;

  const CardIconMenu(this.iconMenuList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.5,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    print('${iconMenuList[index].title} 눌렀다.');
                  },
                  child: Container(
                    height: 35,
                    child: Row(
                      children: [
                        Icon(
                          iconMenuList[index].iconData,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(iconMenuList[index].title),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
