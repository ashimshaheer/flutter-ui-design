import 'package:flutter/material.dart';

class infoscreen extends StatefulWidget {
  infoscreen({super.key});

  @override
  State<infoscreen> createState() => _infoscreenState();
}

class _infoscreenState extends State<infoscreen> {
  bool light = true;

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
                    trailing: Switch(
                      value: light,
                      onChanged: (bool value) {
                        setState(() {
                          light = value;
                        });
                      },
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
