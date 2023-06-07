import 'package:flutter/material.dart';

//-----GLOBAL VARIABLES-----
const Color mainColor = Color.fromARGB(255, 255, 255, 255);

// ignore: non_constant_identifier_names
final List<DoctorsItem> DoctorsItems = [
  DoctorsItem(
      icon: Icons.monitor_heart,
      color: const Color.fromARGB(255, 188, 25, 80),
      name: 'Cardio Specialist',
      doctor: '252 Doctors'),
  DoctorsItem(
      icon: Icons.person,
      color: const Color.fromARGB(255, 54, 171, 213),
      name: 'Dental Specialist',
      doctor: '186 Doctors'),
  DoctorsItem(
      icon: Icons.remove_red_eye,
      color: const Color.fromARGB(255, 208, 216, 98),
      name: 'Eye Specialist',
      doctor: '201 Doctors'),
  DoctorsItem(
      icon: Icons.grass,
      color: const Color.fromARGB(255, 191, 106, 152),
      name: 'B Specialist',
      doctor: '201 Doctors'),
];

final List<CategoryModel> categories = [
  CategoryModel(category: 'Mountain', icon: Icons.terrain),
  CategoryModel(category: 'Forest', icon: Icons.park),
  CategoryModel(category: 'Beach', icon: Icons.beach_access),
  CategoryModel(category: 'Hiking', icon: Icons.directions_walk)
];

//-----MAIN METHOD-----
void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: MountsApp() // SplashPage()
      ));
}

//-----PAGES-----
// splash page

// landing page
class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          title: const Center(
            child: Text('Specialist Doctor',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 55, 53, 53),
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ),

          actions: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Container(
                  color: const Color.fromARGB(255, 168, 166, 166),
                  width: 50,
                  height: 20,
                  child: const Icon(Icons.sort,
                      color: Color.fromARGB(255, 59, 59, 59), size: 30),
                )),
          ], // вот тут доделать
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //AppHeader(),
            // AppSearch(),
            Expanded(child: AppMountListView()),
            // AppCategoryList(),
            AppBottomBar()
          ],
        ));
  }
}

//-----WIDGETS-----

class AppMountListView extends StatelessWidget {
  const AppMountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 215, 41, 90),
                ),
                padding: const EdgeInsets.all(15),
                child: const Column(
                  children: [
                    Icon(Icons.monitor_heart,
                        color: Color.fromARGB(255, 255, 255, 254), size: 80),
                    Text('Cardio Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    Text('252 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 83, 197, 187),
                ),
                padding: const EdgeInsets.all(15),
                // ignore: prefer_const_constructors
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/tooth.png',
                      color: const Color.fromARGB(255, 255, 255, 254),
                      width: 80,
                      height: 80,
                    ),
                    const Text('Dental Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    const Text('168 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // ignore: prefer_const_constructors
                  color: Color.fromARGB(255, 192, 211, 46),
                ),
                padding: const EdgeInsets.all(15),
                child: const Column(
                  children: [
                    Icon(Icons.remove_red_eye,
                        color: Color.fromARGB(255, 255, 255, 254), size: 80),
                    Text('Eye Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    Text('201 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // ignore: prefer_const_constructors
                  color: Color.fromARGB(255, 111, 44, 59),
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/brain.png',
                      color: const Color.fromARGB(255, 255, 255, 254),
                      width: 80,
                      height: 80,
                    ),
                    const Text('Brain Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    const Text('201 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // ignore: prefer_const_constructors
                  color: Color.fromARGB(255, 39, 191, 178),
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/lips.png',
                      color: const Color.fromARGB(255, 255, 255, 254),
                      width: 80,
                      height: 80,
                    ),
                    const Text('Mouth Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    const Text('283 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 144, 157, 46),
                ),
                padding: const EdgeInsets.all(15),
                // ignore: prefer_const_constructors
                child: Column(
                  children: const [
                    Icon(Icons.child_care,
                        color: Color.fromARGB(255, 255, 255, 254), size: 80),
                    Text('Child Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    Text('198 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 215, 41, 90),
                ),
                padding: const EdgeInsets.all(15),
                // ignore: prefer_const_constructors
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/nerve-cell.png',
                      color: const Color.fromARGB(255, 255, 255, 254),
                      width: 80,
                      height: 80,
                    ),
                    const Text('Nerve Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    const Text('178 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 39, 191, 178),
                ),
                padding: const EdgeInsets.all(15),
                // ignore: prefer_const_constructors
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/sex.png',
                      color: const Color.fromARGB(255, 255, 255, 254),
                      width: 80,
                      height: 80,
                    ),
                    const Text('Sex Specialist',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2.0)),
                    const Text('145 Doctors',
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.5)),
                  ],
                )),
          ],
        ));
  }
}

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItem(
        icon: Icons.favorite_border, label: 'Explore', isSelected: false),
    AppBottomBarItem(icon: Icons.message, label: 'Tag', isSelected: false),
    AppBottomBarItem(icon: Icons.person, label: 'Profile', isSelected: false)
  ];

  //... rest of the code omited for brevity...

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: mainColor, boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
              blurRadius: 10,
              offset: Offset.zero)
        ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(barItems.length, (index) {
              AppBottomBarItem currentBarItem = barItems[index];

              Widget barItemWidget;

              if (currentBarItem.isSelected) {
                barItemWidget = Container(
                    padding: const EdgeInsets.only(
                        left: 15, top: 5, bottom: 5, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor),
                    child: Row(children: [
                      Icon(currentBarItem.icon,
                          color: const Color.fromARGB(255, 11, 11, 11)),
                      const SizedBox(width: 5),
                      Text(currentBarItem.label,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 29, 29, 29),
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                    ]));
              } else {
                // child:
                Container(
                    color: const Color.fromARGB(255, 168, 166, 166),
                    width: 40,
                    height: 60,
                    child: barItemWidget = IconButton(
                        icon: Icon(currentBarItem.icon,
                            color: const Color.fromARGB(255, 54, 54, 54)),
                        onPressed: () {
                          setState(() {
                            for (var item in barItems) {
                              item.isSelected = item == currentBarItem;
                            }
                          });
                        }));
              }

              return barItemWidget;
            })));
  }
}

//----MODELS----

class DoctorsItem {
  IconData? icon;
  Color? color;
  String name;
  String doctor;

  DoctorsItem({this.icon, this.color, this.name = '', this.doctor = ''});
}

class CategoryModel {
  String category;
  IconData? icon;

  CategoryModel({this.category = '', this.icon});
}

class AppBottomBarItem {
  IconData? icon;
  bool isSelected;
  String label;

  AppBottomBarItem({this.icon, this.label = '', this.isSelected = false});
}
