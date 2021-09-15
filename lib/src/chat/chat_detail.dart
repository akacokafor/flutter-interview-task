import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({Key? key}) : super(key: key);

  static const routeName = 'chatDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const Gap(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alex Murray',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                      Gap(2),
                      Text(
                        'Online',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.phone,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Message(
                        message:
                            'Hey, Alex! Nice to meet you! I’d like to hire a walker and you’re perfect one for me. Can you help me out?',
                        isLocal: Random().nextBool());
                  },
                  separatorBuilder: (context, index) => Random().nextBool()
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              '1 April 12:00',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        )
                      : Container(
                          height: 6,
                        ),
                  itemCount: 5),
            ),
            const Gap(10),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  icon: const Icon(Icons.add_rounded),
                  label: Container(),
                ),
                const Gap(16),
                const Flexible(
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Aa', suffixIcon: Icon(Icons.mic)),
                    ),
                  ),
                )
              ],
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  final String message;
  final bool isLocal;

  const Message({Key? key, required this.message, required this.isLocal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          margin: EdgeInsets.only(
              right: isLocal ? 0 : 36.4.w, left: isLocal ? 36.4.w : 0),
          decoration: BoxDecoration(
            color: isLocal
                ? Theme.of(context).colorScheme.primary
                : const Color(0xFFECEEF1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment:
                isLocal ? MainAxisAlignment.end : MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Text(
                    message,
                    style:
                        TextStyle(color: isLocal ? Colors.white : Colors.black),
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
