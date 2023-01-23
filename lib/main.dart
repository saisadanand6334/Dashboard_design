import 'package:flutter/material.dart';

void main() {
  runApp(const Dashdesign());
}

class Dashdesign extends StatefulWidget {
  const Dashdesign({Key? key}) : super(key: key);

  @override
  State<Dashdesign> createState() => _DashdesignState();
}

class _DashdesignState extends State<Dashdesign> {
  List x = [
    'Container1',
    'Container2',
    'Container3',
    'Container4',
    'Container5'
  ];
  List o = [
    Colors.cyan,
    Colors.greenAccent,
    Colors.purple,
    Colors.pinkAccent,
    Colors.purple
  ];
  List p = ['File Manager', 'Exercise Tips', 'Food Receipe', 'Gym', 'E-Wallet'];
  List q = [
    Icons.send_time_extension_sharp,
    Icons.tips_and_updates_outlined,
    Icons.highlight_outlined,
    Icons.cases_outlined,
    Icons.design_services_outlined
  ];
  List z = [
    'Theme 1 screens',
    'Theme 2 screens',
    'Theme 3 screens',
    'Theme 4 screens',
    'Theme 5 screens'
  ];
  List s = ['Container1', 'Container2', 'Container3', 'Container4'];
  List a = [
    Icons.phone_android,
    Icons.apps_outlined,
    Icons.travel_explore_rounded,
    Icons.dashboard
  ];
  List h = [Colors.cyan, Colors.greenAccent, Colors.purple, Colors.pinkAccent];
  List t = ['Default Theme', 'Full Apps', 'Integration', 'Dashboard'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'AllInone UI kit',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Monoton',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.toggle_on_outlined,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 50),
                  itemCount: s.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 10,
                        color: h[index],
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                a[index],
                                size: 100,
                              ),
                              Text(
                                t[index],
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ]));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Themes',
                    style: TextStyle(
                        fontFamily: 'Monoton',
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: x.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            color: o[index],
                            child: Icon(
                              q[index],
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    p[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Pacifico',
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    (z[index]),
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Kenia',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:130),
                            child: Row(
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(radius: 20,backgroundColor: o[index],
                                      child: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
