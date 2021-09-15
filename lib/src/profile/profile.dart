import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:parkway_projects_task/src/app_theme.dart';
import 'package:parkway_projects_task/src/components/rounded_button.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 55.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/profile.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFBFBFB),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Alex Murray',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Gap(10),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            ProfileDetailInfoComponent(
                              info: '5\$',
                              label: '/ hr',
                            ),
                            VerticalDivider(),
                            ProfileDetailInfoComponent(
                              info: '10',
                              label: 'km',
                            ),
                            VerticalDivider(),
                            ProfileDetailInfoComponent(
                              info: '4.4',
                              label: '\u2605',
                            ),
                            VerticalDivider(),
                            ProfileDetailInfoComponent(
                              info: '450',
                              label: 'walks',
                            ),
                          ],
                        ),
                      ),
                      Gap(20),
                      Divider(),
                      Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ProfileTabButton(
                            isEnabled: true,
                            label: 'About',
                          ),
                          ProfileTabButton(
                            isEnabled: false,
                            label: 'Location',
                          ),
                          ProfileTabButton(
                            isEnabled: false,
                            label: 'Reviews',
                          )
                        ],
                      ),
                      Gap(20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Age',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              Gap(5),
                              Text(
                                '30 years',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Gap(45),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Experience',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              Gap(5),
                              Text(
                                '11 months',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                      Gap(20),
                      //can do this better on my own with a stateful widget
                      ReadMoreText(
                        'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
                        trimLines: 3,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: ParkwayColors.greyLabel),
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      Gap(20),
                      RoundedButtonWidget(label: 'Check schedule', onTap: () {})
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileTabButton extends StatelessWidget {
  const ProfileTabButton(
      {Key? key, required this.isEnabled, required this.label})
      : super(key: key);

  final bool isEnabled;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isEnabled ? Colors.black : Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Text(
          label,
          style: const TextStyle(
              color: ParkwayColors.greyLabel, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class ProfileDetailInfoComponent extends StatelessWidget {
  const ProfileDetailInfoComponent(
      {Key? key, required this.info, required this.label})
      : super(key: key);

  final String info;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: info,
          style: TextStyle(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: ' ' + label,
                style: TextStyle(color: ParkwayColors.greyLabel),
                children: []),
          ]),
    );
  }
}
