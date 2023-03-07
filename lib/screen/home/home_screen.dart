import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social/base/base_view_view_model.dart';
import 'package:social/res/app_colors.dart';
import 'package:social/res/style.dart';
import 'package:social/screen/home/home_binding.dart';

class HomeScreen extends BaseView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/image/home.png",
            height: 610.h,
            fit: BoxFit.contain,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Socially",
                        style: poppinsBold.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(
                        Icons.notifications,
                        size: 24.r,
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  Text(
                    "Feed",
                    style: poppinsBold.copyWith(
                      fontSize: 25.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            height: 60.h,
                            width: double.infinity,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.storyList.length + 1,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(100.r),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.gradientColor,
                                            blurRadius: 12.r,
                                            offset: const Offset(-20, 4),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 20.w),
                                        child: Image.asset(
                                          "assets/image/story.png",
                                          height: 56.w,
                                          width: 56.w,
                                          // fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  var newIndex = index - 1;
                                  return Container(
                                    margin: EdgeInsets.only(right: 20.w),
                                    child: Image.asset(
                                      "${controller.storyList[newIndex]}",
                                      width: 56.w,
                                      height: 56.w,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 39.h,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 32.h),
                                height: 288.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/image/home1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(13.r),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    100.r),
                                                child: Image.asset(
                                                  "assets/image/profile1.jpg",
                                                  height: 36.w,
                                                  width: 36.w,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Dennis Reynolds",
                                                    style:
                                                    poppinsRegular.copyWith(
                                                      fontSize: 12.sp,
                                                      color:
                                                      AppColors.whiteColor,
                                                    ),
                                                  ),
                                                  Text(
                                                    "2 hrs ago",
                                                    style:
                                                    poppinsRegular.copyWith(
                                                      fontSize: 12.sp,
                                                      color:
                                                      AppColors.textColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Image.asset(
                                            "assets/image/option_menu.png",
                                            height: 18.h,
                                            width: 5.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.all(13.r),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 9.w,
                                                vertical: 6.h,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(35.r),
                                                color:
                                                AppColors.decorationColor,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/image/like.png",
                                                    height: 18.w,
                                                    width: 18.w,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  Text(
                                                    "5.2k",
                                                    style:
                                                    poppinsRegular.copyWith(
                                                      fontSize: 12.sp,
                                                      color:
                                                      AppColors.whiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 9.w,
                                                vertical: 6.h,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(35.r),
                                                color:
                                                AppColors.decorationColor,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/image/chat.png",
                                                    height: 18.w,
                                                    width: 18.w,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  Text(
                                                    "1.1k",
                                                    style:
                                                    poppinsRegular.copyWith(
                                                      fontSize: 12.sp,
                                                      color:
                                                      AppColors.whiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 9.w,
                                                vertical: 6.h,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(35.r),
                                                color:
                                                AppColors.decorationColor,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/image/save.png",
                                                    height: 18.w,
                                                    width: 18.w,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  Text(
                                                    "312",
                                                    style:
                                                    poppinsRegular.copyWith(
                                                      fontSize: 12.sp,
                                                      color:
                                                      AppColors.whiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          // Container(
                          //   height: 288.h,
                          //   width: double.infinity,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20.r),
                          //     image: const DecorationImage(
                          //       image: AssetImage("assets/image/home1.jpg"),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          //   child: Stack(
                          //     children: [
                          //       Padding(
                          //         padding: EdgeInsets.all(13.r),
                          //         child: Row(
                          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             Row(
                          //               mainAxisAlignment: MainAxisAlignment.start,
                          //               crossAxisAlignment: CrossAxisAlignment.start,
                          //               children: [
                          //                 ClipRRect(
                          //                   borderRadius: BorderRadius.circular(100.r),
                          //                   child: Image.asset(
                          //                     "assets/image/profile1.jpg",
                          //                     height: 36.w,
                          //                     width: 36.w,
                          //                   ),
                          //                 ),
                          //                 SizedBox(
                          //                   width: 7.w,
                          //                 ),
                          //                 Column(
                          //                   mainAxisAlignment: MainAxisAlignment.start,
                          //                   crossAxisAlignment:
                          //                   CrossAxisAlignment.start,
                          //                   children: [
                          //                     Text(
                          //                       "Dennis Reynolds",
                          //                       style: poppinsRegular.copyWith(
                          //                         fontSize: 12.sp,
                          //                         color: AppColors.whiteColor,
                          //                       ),
                          //                     ),
                          //                     Text(
                          //                       "2 hrs ago",
                          //                       style: poppinsRegular.copyWith(
                          //                         fontSize: 12.sp,
                          //                         color: AppColors.textColor,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ],
                          //             ),
                          //             Image.asset(
                          //               "assets/image/option_menu.png",
                          //               height: 18.h,
                          //               width: 5.w,
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       Align(
                          //         alignment: Alignment.bottomCenter,
                          //         child: Padding(
                          //           padding: EdgeInsets.all(13.r),
                          //           child: Row(
                          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //             children: [
                          //               Container(
                          //                 padding: EdgeInsets.symmetric(
                          //                   horizontal: 9.w,
                          //                   vertical: 6.h,
                          //                 ),
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(35.r),
                          //                   color: AppColors.decorationColor,
                          //                 ),
                          //                 child: Row(
                          //                   children: [
                          //                     Image.asset(
                          //                       "assets/image/like.png",
                          //                       height: 18.w,
                          //                       width: 18.w,
                          //                     ),
                          //                     SizedBox(
                          //                       width: 8.w,
                          //                     ),
                          //                     Text(
                          //                       "5.2k",
                          //                       style: poppinsRegular.copyWith(
                          //                         fontSize: 12.sp,
                          //                         color: AppColors.whiteColor,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //               Container(
                          //                 padding: EdgeInsets.symmetric(
                          //                   horizontal: 9.w,
                          //                   vertical: 6.h,
                          //                 ),
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(35.r),
                          //                   color: AppColors.decorationColor,
                          //                 ),
                          //                 child: Row(
                          //                   children: [
                          //                     Image.asset(
                          //                       "assets/image/chat.png",
                          //                       height: 18.w,
                          //                       width: 18.w,
                          //                     ),
                          //                     SizedBox(
                          //                       width: 8.w,
                          //                     ),
                          //                     Text(
                          //                       "1.1k",
                          //                       style: poppinsRegular.copyWith(
                          //                         fontSize: 12.sp,
                          //                         color: AppColors.whiteColor,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //               Container(
                          //                 padding: EdgeInsets.symmetric(
                          //                   horizontal: 9.w,
                          //                   vertical: 6.h,
                          //                 ),
                          //                 decoration: BoxDecoration(
                          //                   borderRadius: BorderRadius.circular(35.r),
                          //                   color: AppColors.decorationColor,
                          //                 ),
                          //                 child: Row(
                          //                   children: [
                          //                     Image.asset(
                          //                       "assets/image/save.png",
                          //                       height: 18.w,
                          //                       width: 18.w,
                          //                     ),
                          //                     SizedBox(
                          //                       width: 8.w,
                          //                     ),
                          //                     Text(
                          //                       "312",
                          //                       style: poppinsRegular.copyWith(
                          //                         fontSize: 12.sp,
                          //                         color: AppColors.whiteColor,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
