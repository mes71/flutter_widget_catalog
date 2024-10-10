import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/data/model/main/main_model.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  static const String tag = '/';

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: buildListViewWidget(mainList),
    );
  }
}

ListView buildListViewWidget(List<MainModel> ls) {
  return ListView.separated(
      itemBuilder: (context, index) => buildMainListItem(context, ls[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: ls.length);
}

Widget buildMainListItem(BuildContext context, MainModel model) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: model.color,
    ),
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: ListTile(
      title: Text(
        model.title,
        style: TextStyle(fontSize: 18),
      ),
      onTap: () {
        Navigator.pushNamed(context, model.route);
      },
    ),
  );
}
