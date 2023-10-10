import 'package:flutter/material.dart';
import 'package:uberclone/Drawer/Drawer.dart';
import 'package:uberclone/Home/Popular_Locations/Popular_Locations.dart';
import 'package:uberclone/rough1.dart';

import '../constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var drawerOpen = false;
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  List<String> stateList = [
    'University of Washington',
    'Woodland Park',
    'Husky Stadium',
    'Ravenna Park',
    'Henry Art Gallery'
  ];

  Widget stateNames() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 30,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: Transform.translate(
                offset: const Offset(0, 6),
                child: Text(
                  '    ${stateList[index]}    ',
                  style: const TextStyle(
                      fontSize: 14.5, fontWeight: FontWeight.w400),
                )),
          );
        },
      ),
    );
  }

  Widget closeBottomSheetButton() {
    var size10 = MediaQuery.of(context).size.height / 70;
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: EdgeInsets.only(right: size10),
        child: Container(
          height: size10 * 3,
          width: size10 * 3,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Center(
            child: Icon(
              Icons.circle_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void ShowTheBottomSheet(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;

    showModalBottomSheet(
        context: context,
        //enableDrag: false,
        //isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        )),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                    closeBottomSheetButton(),
                    SizedBox(
                      height: size10 * 1.4,
                    ),
                    Container(
                      height: size10 * 53,
                      width: double.infinity,
                      color: Colors.white,
                      child: pickUpDrop(),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget pickUpDrop() {
    var size10 = MediaQuery.of(context).size.height / 70;

    return Column(
      children: [
        SizedBox(
          height: size10,
        ),
        Container(
          height: size10 * 0.6,
          width: size10 * 5.4,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: size10 * 1.5,
        ),
        Container(
          height: size10 * 15.5,
          width: double.infinity,
          //color: Colors.grey.shade300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: size10 * 14,
                width: size10 * 5,
                color: Colors.red,
              ),
              Container(
                height: size10 * 14,
                width: size10 * 30,
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                      decoration: const InputDecoration(
                        label: Text('PICKUP'),
                        alignLabelWithHint: false,
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 17),
                        border: InputBorder.none,
                      ),
                    ),
                    Container(
                      height: 1.5,
                      width: size10 * 30,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(right: 20),
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                      decoration: const InputDecoration(
                        label: Text(
                          'DROP-OFF',
                          style: TextStyle(color: Colors.black),
                        ),
                        alignLabelWithHint: false,
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 17),
                        border: InputBorder.none,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size10 * 2,
        ),
        stateNames(),
        SizedBox(
          height: size10 * 1.5,
        ),
        Container(
          height: size10 * 1.4,
          width: double.infinity,
          color: Colors.grey.shade300,
        ),
        SizedBox(
          height: size10 * 1.5,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: size10 * 1.5),
              child: const Text(
                'POPULAR LOCATIONS',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.grey),
              ),
            )),
        SizedBox(
          height: size10 * 0.3,
        ),
        SizedBox(
          height: size10 * 20,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                PopularLocations(text: 'University of Washington'),
                paddedContainer(),
                PopularLocations(text: 'Woodland Park'),
                paddedContainer(),
                PopularLocations(text: 'Husky Stadium'),
                paddedContainer(),
                PopularLocations(text: 'Ravenna Park'),
                paddedContainer(),
                PopularLocations(text: 'Henry Art Gallery'),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget paddedContainer() {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size10 * 1.3),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey.shade300,
      ),
    );
  }

  Widget listText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 16),
    );
  }

  Widget listIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.grey.shade500,
      size: 27,
    );
  }

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;

    return Scaffold(
      key: _globalKey,
      drawer: DrawerMenu(),

      body: Stack(
        children: [
          // Map widget (Replace this with your map implementation)
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue, // Replace with your map implementation
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size10 * 5, left: size10 * 1.5),
            child: CircleAvatar(
                radius: size10 * 2.4,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {
                    _globalKey.currentState?.openDrawer();
                  },
                  child: CircleAvatar(
                    radius: size10 * 2.4 - 2,
                    backgroundColor: Colors.black,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: size10 * 2, bottom: size10 * 2),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: size10 * 3.9,
                width: size10 * 3.9,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.pin_drop_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      ShowTheBottomSheet(context);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
