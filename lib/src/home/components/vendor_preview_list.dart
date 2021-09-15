import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:parkway_projects_task/src/home/components/vendor_card.dart';
import 'package:sizer/sizer.dart';

class VendorPreviewList extends StatelessWidget {
  const VendorPreviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Near you',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text('View all'),
            ),
          ],
        ),
        const Gap(20),
        SizedBox(
          height: 22.3.h,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [VendorCard(), VendorCard(), VendorCard()],
          ),
        ),
      ],
    );
  }
}
