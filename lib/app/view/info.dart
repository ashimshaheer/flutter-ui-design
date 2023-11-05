import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/controller/info_controll.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({super.key});

  final InfoToggleSwich controller = Get.put(InfoToggleSwich());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('additional information'),
            ),
            body: ListView(
              children: [
                const ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share Sukaan Spp'),
                  trailing: Icon(Icons.arrow_right),
                ),
                const ListTile(
                  leading: Icon(Icons.language),
                  title: Text('change language'),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                    leading: const Icon(Icons.chat),
                    title: const Text('chatsapp Chat Support'),
                    trailing: Obx(
                      () => Switch(
                          value: controller.light.value,
                          onChanged: (bool value) {
                            controller.toggleSwichFunction(value);
                          }),
                    )),
                const ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Privacy Policy'),
                ),
                const ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text('Rate Us'),
                ),
                const ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('sign out'),
                ),
              ],
            )));
  }
}
