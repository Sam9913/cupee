import 'package:card_swiper/card_swiper.dart';
import 'package:cupee/screen/page_view/widget/home_screen.dart';
import 'package:cupee/screen/page_view/widget/account_screen.dart';
import 'package:cupee/screen/page_view/widget/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe/swipe.dart';

import '../../config/color_config.dart';
import '../../widget/theme_bar.dart';
import 'controller.dart';

class PageViewScreen extends StatelessWidget {
  PageViewScreen({Key? key}) : super(key: key);

  final controller = Get.put(PageViewController());
  final SwiperController _swiperController = SwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.lightGold,
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => ThemeBar(
                index: controller.currentIndex.value,
                onSwipeLeft: controller.onSwipeLeft,
                onSwipeRight: controller.onSwipeRight,
              ),
            ),
            Expanded(
              child: Swiper(
                itemBuilder: (context, index) {
                  if(index == 0){
                    return HomeScreen();
                  }else if(index == 1){
                    return AccountScreen();
                  }else{
                    return SearchScreen();
                  }
                },
                controller: _swiperController,
                autoplay: false,
                loop: true,
                itemCount: 3,
                onIndexChanged: (index){
                  controller.currentIndex.value = index;
                },
              ),
            ),
            /*Padding(
              padding: EdgeInsets.fromLTRB(8, 24, 8, 0),
              child: RefreshIndicator(
                onRefresh: () async{},
                child: MasonryGridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(EventDetailScreen());
                      },
                      child: Container(
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
                      ),
                    );
                  },
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
