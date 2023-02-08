import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/color_config.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.lightGold,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ColorConfig.pink,
                            ColorConfig.lightGold,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      child: InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: ColorConfig.darkGreen,
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event Name',
                        style: TextStyle(
                          color: ColorConfig.darkGreen,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'By Who',
                        style: TextStyle(
                          color: ColorConfig.darkGreen,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Freebies',
                        style: TextStyle(
                          color: ColorConfig.darkGreen,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorConfig.darkGreen,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  Icon(
                                    Icons.card_giftcard_outlined,
                                    color: ColorConfig.pink,
                                    size: 50,
                                  ),
                                  Text(
                                    'x 1',
                                    style: TextStyle(
                                      color: ColorConfig.pink,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 8,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: DraggableScrollableSheet(
                  initialChildSize: 0.04,
                  minChildSize: 0.04,
                  maxChildSize: 0.6,
                  builder: (context, scrollController) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(8, 10, 8, 0),
                            padding: EdgeInsets.fromLTRB(16, 32, 16, 8),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32),
                                topLeft: Radius.circular(32),
                              ),
                              color: ColorConfig.darkGreen,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'FAQ',
                                  style: TextStyle(
                                    color: ColorConfig.pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text('Book', style: TextStyle(color: ColorConfig.pink),),
                                  color: ColorConfig.lightGold,
                                  minWidth: MediaQuery.of(context).size.width,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: MediaQuery.of(context).size.width * 0.42,
                            child: CircleAvatar(
                              backgroundColor: ColorConfig.darkGreen,
                              child: Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: ColorConfig.lightGold,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
