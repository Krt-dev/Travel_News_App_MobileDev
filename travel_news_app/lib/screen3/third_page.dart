import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_news_app/app_styles.dart';
import 'package:travel_news_app/screen3/post_data.dart';
import 'package:travel_news_app/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        kBorderRadius,
                      ),
                      child: Image.network(
                        'https://pbs.twimg.com/media/F9Z8rZjbsAAxxTf?format=jpg&name=900x900',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lacey Macey',
                              style: kPoppinsBold.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'Pokemon Gym leader',
                              style: kPoppinsRegular.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            maxWidth: SizeConfig.blockSizeHorizontal! * 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kBorderRadius,
                            ),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Text(
                'Currently an Elite Four at BlueBerry Academy..',
                style: kPoppinsMedium.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 3,
                  vertical: SizeConfig.blockSizeVertical! * 3.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius,
                  ),
                  color: kDarkBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '454k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.40k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Following',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Lacey\'s Post',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'View All',
                    style: kPoppinsMedium.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: postList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(
                        bottom: SizeConfig.blockSizeVertical! * 2.5,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3),
                                  color: kDarkBlue.withOpacity(0.051),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              child: Image.network(
                                 postList[index]['postPic'].toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeVertical! * 2.5,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postList[index]['postType'],
                                  style: kPoppinsRegular.copyWith(
                                    color: kDarkBlue,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Text(
                                  postList[index]['postTitle'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsSemibold.copyWith(
                                    color: kDarkBlue,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/calendar_icon.svg',
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  1.5,
                                        ),
                                        Text(
                                         postList[index]['postDate'].toString(),
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/time_icon.svg',
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  1.5,
                                        ),
                                        Text(
                                          postList[index]['postTime'].toString(),
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular From Lacey',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 143,
                      width: 248,
                      margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          kBorderRadius,
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}