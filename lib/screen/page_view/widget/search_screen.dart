import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../config/color_config.dart';
import '../../../widget/theme_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 24, 8, 0),
      child: Column(
        children: [
          ThemeTextField(labelText: '', width: MediaQuery.of(context).size.width,hintText: 'Search here...',),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async{},
              child: MasonryGridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * (((index + 1) % 2 == 0) ? 0.35 : 0.45),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConfig.darkGreen,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Idol name',
                              style: TextStyle(
                                color: ColorConfig.pink,
                              ),
                            ),
                            Text(
                              'Venue',
                              style: TextStyle(
                                color: ColorConfig.pink,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 45,
                          decoration: BoxDecoration(
                            color: ColorConfig.lightGold,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '21 Dec',
                            style: TextStyle(
                              color: ColorConfig.pink,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
