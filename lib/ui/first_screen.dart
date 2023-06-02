import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice/core%20/app_fonts.dart';
import 'package:practice/core%20/common_widgets/profile_widget.dart';
import 'package:practice/models/profile_model.dart';
import 'package:practice/resources/resources.dart';
import 'package:practice/ui/login_screen.dart';

import '../core /common_widgets/app_button.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  List<ProfileModel> models = [
    ProfileModel(
      image: Images.hospital,
      text: 'Записывайтесь на прием к самым лучшим специалистам',
    ),
    ProfileModel(
      image: Images.board,
      text:
          'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
    ),
    ProfileModel(
      image: Images.speech,
      text:
          'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
    ),
    ProfileModel(
      image: Images.bell,
      text: 'Получайте уведомления о приеме или о поступивших сообщениях',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          'Профиль',
          style: AppFonts.w600s17,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Зачем нужен профиль?',
              style: AppFonts.w500s22,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: models.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ProfileWidget(
                  model: models[index],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: AppButton(
                title: 'Войти',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
