import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/app-images.dart';
import 'package:task/constants/widgets/custom-button.dart';
import 'package:task/constants/widgets/custom-input.dart';
import 'package:task/views/book_a_walk/screen.dart';
import 'package:task/views/home/widgets/carousel-header.dart';
import 'package:task/views/home/widgets/carousel-item.dart';

class DashboardTabView extends StatefulWidget {
  const DashboardTabView({ Key? key }) : super(key: key);

  @override
  _DashboardTabViewState createState() => _DashboardTabViewState();
}

class _DashboardTabViewState extends State<DashboardTabView> {
  CarouselController carouselController = CarouselController();
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(top: size.height * 0.06),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05, left: size.width * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Home', style: AppFonts.heading1),
                            SizedBox(
                              height: SizeConfig.heightMultiplier!,
                            ),
                            Text('Explore dog walkers', style: AppFonts.body1),
                          ],
                        ),
                        CustomButton(text: 'Book a Walk', onpressed: () => Navigator.of(context).pushNamed(BookAWalkScreen.routeName), width: size.width * 0.2, icon: Icon(Icons.add, color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier! * 4,
                    ),
                    CustomInput(
                      label: 'Location',
                      prefixIcon: Icon(Icons.location_on, color: Colors.grey.shade400,),
                      suffixIcon: Icon(Icons.location_city, color: Colors.grey.shade400,),
                      hint: 'Kiyv Ukraine',
                      onSaved: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier! * 4,
              ),
              Column(
                children: [
                  CarouselHeader(title: 'Near You', linkText: 'View all',),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 2, left: size.width * 0.05),
                    child: CarouselSlider(
                        carouselController: carouselController,
                        options: CarouselOptions(
                          height: size.height * 0.27,
                          viewportFraction: 0.9,
                          enableInfiniteScroll: false,
                          // enlargeCenterPage: true,
                          initialPage: 0,
                          onPageChanged: (index, reason) {
                          },
                        ),
                        items: [
                          CarouselItem(image: AppImages.firstSlide),
                          CarouselItem(image: AppImages.firstSlide),
                        ]),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier! * 2, horizontal: size.width * 0.05),
                child: Divider(
                  color: Colors.grey.shade700,
                ),
              ),
              Column(
                children: [
                  CarouselHeader(title: 'Suggested', linkText: 'View all',),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 2, left: size.width * 0.05),
                    child: CarouselSlider(
                        carouselController: carouselController,
                        options: CarouselOptions(
                          height: size.height * 0.27,
                          viewportFraction: 0.9,
                          enableInfiniteScroll: false,
                          disableCenter: true,
                          // enlargeCenterPage: true,
                          initialPage: 0,
                          onPageChanged: (index, reason) {
                          },
                        ),
                        items: [
                          CarouselItem(image: AppImages.secondSlide),
                          CarouselItem(image: AppImages.secondSlide),
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier! * 4,
              ),
            ]
          ),
        ),
      );
  }
}