import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewPage();
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  var titleList = [
    '1',
    '1',
    '1',
    '1',
    '1',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Text('Notice',
            style: TextStyle(
              color: Colors.black
            ),),
            Text('Tags',
            style: TextStyle(
              color: Colors.grey
            ),)
          ],
        ),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.settings)),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                SizedBox(
                  height: 70,
                  child: Text(titleList[index],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

