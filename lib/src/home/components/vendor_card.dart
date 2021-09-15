import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VendorCard extends StatelessWidget {
  const VendorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/vendor_image.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            const Gap(10),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Mason York',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const Gap(5),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(fontWeight: FontWeight.w500),
                        children: const [
                          WidgetSpan(
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFFA1A1A1),
                              size: 12,
                            ),
                          ),
                          TextSpan(
                            text: '7 km from you',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      '\$3/h',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: const Color(0xFFFBFBFB)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
