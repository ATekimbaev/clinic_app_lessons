import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice/core%20/app_fonts.dart';
import 'package:practice/resources/resources.dart';
import 'package:practice/ui/main_page/profile_page.dart';

class BottmNavBar extends StatefulWidget {
  const BottmNavBar({super.key});

  @override
  State<BottmNavBar> createState() => _BottmNavBarState();
}

class _BottmNavBarState extends State<BottmNavBar> {
  List<Widget> body = [
    ProfilePage(),
    MyWidget(index: 1),
    MyWidget(index: 2),
    MyWidget(index: 3),
  ];

  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Страница в разработке'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                )
              ],
            ),
          );
        },
        child: Container(
          height: 64,
          width: 64,
          decoration: const BoxDecoration(
            color: Color(0xff4A86CC),
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.car,
                height: 32,
              ),
              Text(
                'Вызов',
                style: AppFonts.w600s17.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.account_circle_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.featured_play_list_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.list_alt_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.man_sharp,
            ),
          ),
        ],
        // Применение стилей к элементам BottomNavigationBarItem

        selectedLabelStyle: AppFonts.w700s10.copyWith(
          color: const Color(0xff4A86CC),
        ),
        unselectedLabelStyle: AppFonts.w500s10.copyWith(
          color: const Color(0xffA3A3A3),
        ),
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          index.toString(),
          style: AppFonts.w700s34,
        ),
      ),
    );
  }
}
