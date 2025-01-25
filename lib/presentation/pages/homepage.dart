import 'package:flutter/material.dart';
import 'package:trip_application/location.dart';
import 'package:trip_application/presentation/widgets/homepagewidgets.dart';
import 'package:trip_application/location.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late PageController _pageController;

  void _onScroll() {
    print('scroll working');
  }

  @override
  void initState() {
    print('intializing');
    _pageController = PageController(
      initialPage: 0,
      
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          for (var i = 0; i < locations.length; i++)
            makePage(locations[i], index: i),
        ],
      ),
    ));
  }

  Widget makePage(Location location, {int index = 0}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(location.imageAsset), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [0.3, 0.9],
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.1),
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${index + 1}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/${locations.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],

              ),
              LocationDescription(location),
            ],
          ),
        ),
      ),
    );
  }
}
