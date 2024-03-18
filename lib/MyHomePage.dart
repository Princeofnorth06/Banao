import 'package:flutter/material.dart';
import 'package:prince/box.dart';
import 'package:prince/navi.dart';
import 'package:prince/scroll.dart';
import 'package:prince/text1.dart';
import 'package:prince/text2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size ss = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFEEF3FD),
      appBar: AppBar(
        leading: Image.asset(
          'images/icon1.png',
          color: Colors.black.withOpacity(0.5),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_sharp)),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 5),
            child: Image.asset('images/Icon.png',
                color: Colors.black.withOpacity(0.6)),
          ),
        ],
        toolbarHeight: ss.height * 56 / 640,
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: ss.width * 16 / 360),
                child: Text1(
                  t: 'Hello, Priya!',
                  s: ss.height * 20 / 640,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ss.width * 16 / 360),
                child: Text2(
                    t: 'What do you wanna learn today?',
                    s: ss.height * 12 / 640),
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: EdgeInsets.only(left: ss.width * 14 / 360),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Box1(
                            t: 'Programs',
                            i: 'images/bm.png',
                            h: ss.height * 48 / 640,
                            w: ss.width * 160 / 360),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Box1(
                              t: 'Get help',
                              i: 'images/hc.png',
                              h: ss.height * 48 / 640,
                              w: ss.width * 160 / 360),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Box1(
                            t: 'Learn',
                            i: 'images/op.png',
                            h: ss.height * 48 / 640,
                            w: ss.width * 160 / 360),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Box1(
                              t: 'DD Tracker',
                              i: 'images/to.png',
                              h: ss.height * 48 / 640,
                              w: ss.width * 160 / 360),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ss.width * 16 / 360, top: 40),
                child: const Column(
                  children: [
                    Scroll(
                      i: 'images/im.png',
                      i2: 'images/im2.png',
                      i3: null,
                      t1: 'Lifestyle',
                      t2: 'A complete guide for your new born baby',
                      t3: '16 lessons',
                      t4: "Program for You",
                      t5: '12 lessons',
                      t6: 'Understa\nbehaviou',
                      t7: 'Working Par',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Scroll(
                      i: 'images/women.png',
                      i2: 'images/im3.png',
                      i3: 'images/book.png',
                      t1: 'BABYCARE',
                      t2: 'Understanding of human behaviour',
                      t3: '13 Feb, Sunday',
                      t4: "Events and experiences",
                      t5: "13 Feb, Sund",
                      t6: 'Understa\nbehaviou',
                      t7: "BABYCARE",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Scroll(
                      i: 'images/women.png',
                      i2: 'images/im3.png',
                      i3: 'images/lock.png',
                      t1: 'BABYCARE',
                      t2: 'Understanding of human behaviour',
                      t3: '3 min',
                      t4: "Lessons for you",
                      t5: "1 min",
                      t6: 'Understan\nbehaviour',
                      t7: "BABYCARE",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          height: 70,
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavBar(),
        ),
      ]),
    ));
  }
}
