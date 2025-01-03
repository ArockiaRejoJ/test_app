import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/rides_container.dart';
import '../widgets/stories_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of tab labels
  final List<String> _list = ["RIDES", "STORIES", "MARKET", "GARAGE"];
  int selectedTabIndex = 0;

  // Scroll controllers for nested scrolling
  late ScrollController _parentScrollController;
  late ScrollController _childScrollController;
  bool isChildScrollable = false;

  @override
  void initState() {
    super.initState();
    _parentScrollController = ScrollController();
    _childScrollController = ScrollController();

    // Handle parent scroll behavior
    _parentScrollController.addListener(() {
      if (_parentScrollController.position.atEdge &&
          _parentScrollController.position.pixels ==
              _parentScrollController.position.maxScrollExtent) {
        // Enable child scroll on reaching bottom
        if (selectedTabIndex == 0 || selectedTabIndex == 1) {
          setState(() {
            isChildScrollable = true;
          });
        }
      }
    });

    // Handle child scroll behavior
    _childScrollController.addListener(() {
      if (_childScrollController.position.atEdge &&
          _childScrollController.position.pixels == 0) {
        // Re-enable parent scroll on reaching top
        setState(() {
          isChildScrollable = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // Clean up controllers
    _parentScrollController.dispose();
    _childScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Main UI structure
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [red, Colors.orange]),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            leading: const Icon(Icons.menu),
            title: const Text('Arockia Rejo'),
            actions: [
              const CircleAvatar(
                minRadius: 20,
                maxRadius: 20,
                backgroundImage: AssetImage('assets/images/hp_pay_logo.png'),
              ),
              SizedBox(width: 10.w),
              const Icon(Icons.notifications),
              SizedBox(width: 10.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Text(
                  'SOS',
                  style: TextStyle(
                      color: red, fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) => false,
        child: SingleChildScrollView(
          controller: _parentScrollController,
          physics: isChildScrollable
              ? const NeverScrollableScrollPhysics()
              : const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Event Banner section
              Container(
                height: 160.h,
                width: 320.w,
                margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Bike.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: '8 DAY BIKE TRIP TO LEH LADAKH ',
                      fontWeight: FontWeight.w700,
                      textColor: white,
                      fontSize: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: yellow),
                      child: CustomText(
                        text: 'Register Now',
                        fontWeight: FontWeight.bold,
                        textColor: white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              // Events section header
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'EVENTS FOR YOU',
                  style: TextStyle(
                      color: black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              // Event details container
              Container(
                height: 160.h,
                width: 320.w,
                margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/Bike.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 10.w),
                        decoration: BoxDecoration(
                          color: yellow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.r),
                            bottomLeft: Radius.circular(15.r),
                          ),
                        ),
                        child: CustomText(
                          text: 'Invited',
                          fontWeight: FontWeight.bold,
                          textColor: white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'HAYABUSA \n2019 HYDERABAD \nRIDERS MEETUP',
                      fontWeight: FontWeight.w700,
                      textColor: white,
                      fontSize: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: yellow),
                      child: CustomText(
                        text: '2000-8000 INR',
                        fontWeight: FontWeight.bold,
                        textColor: white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              // Tab navigation menu
              SizedBox(
                height: 35.h,
                width: 360.w,
                child: ListView.builder(
                  itemCount: _list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 17.w),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedTabIndex = index;
                          if (selectedTabIndex == 2 || selectedTabIndex == 3) {
                            isChildScrollable = false;
                          }
                        });
                      },
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: CustomText(
                        text: _list[index],
                        fontWeight: selectedTabIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                        textColor: selectedTabIndex == index ? black : grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              // Tab-specific content
              Container(
                height: 570.h,
                width: 360.w,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                color: selectedTabIndex == 2
                    ? red
                    : selectedTabIndex == 3
                        ? blue
                        : Colors.transparent,
                child: selectedTabIndex == 0 || selectedTabIndex == 1
                    ? ListView.builder(
                        controller: _childScrollController,
                        physics: isChildScrollable
                            ? const ScrollPhysics()
                            : const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) => selectedTabIndex == 0
                            ? const RidesContainer()
                            : StoriesContainer(
                                number: index + 1,
                              ))
                    : Center(
                        child: CustomText(
                          text: _list[selectedTabIndex],
                          fontWeight: FontWeight.bold,
                          textColor: black,
                          fontSize: 16,
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