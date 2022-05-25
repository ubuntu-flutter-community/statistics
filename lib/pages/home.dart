import 'package:flutter/material.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(YaruIcons.information),
          onPressed: () {
            showAboutDialog(
                context: context,
                applicationName: 'Ubuntu Desktop Statistics',
                applicationVersion: '22.04',
                applicationIcon: const Icon(YaruIcons.ubuntu_logo),
                applicationLegalese: 'GNU General Public License v3.0');
          },
        ),
      ], title: const Text('Ubuntu user statistics')),
      body: YaruPage(
        children: [
          Text('https://ubuntu.com/desktop/statistics'),
          Text(
              'So here all the details laid on the page will go here, and then in-depth graphs and more details can be viewed on a left-hand tab, similar to the yaru_widgets example')
        ],
      ),
    );
  }
}
