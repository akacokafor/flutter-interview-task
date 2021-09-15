import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:parkway_projects_task/src/components/rounded_button.dart';
import 'package:sizer/sizer.dart';

import '../app_theme.dart';
import 'components/vendor_preview_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = 'home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 4.3.w, left: 4.3.w, right: 4.3.w),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const Gap(10),
                      Text(
                        'Explore dog walkers',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: ParkwayColors.greyLabel),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 27.w,
                    child: RoundedIconButtonWidget(
                        label: 'Book a walk', onTap: () {}),
                  ),
                ],
              ),
              const Gap(20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Kiyv, Ukraine',
                  prefixIcon: const Icon(Icons.location_on_outlined,
                      color: Color(0xFFA1A1A1)),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      'assets/svgs/filter.svg',
                    ),
                  ),
                ),
              ),
              const Gap(30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      VendorPreviewList(),
                      Gap(10),
                      Divider(),
                      Gap(10),
                      VendorPreviewList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//todo use this class to make the cards dynamic
class VendorDetails {
  final String name;
  final String distance;
  final String rate;
  final String age;
  final String experience;
  final String info;

  VendorDetails(
      {required this.name,
      required this.distance,
      required this.rate,
      required this.age,
      required this.experience,
      required this.info});
}
