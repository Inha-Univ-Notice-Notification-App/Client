import 'package:flutter/material.dart';
import 'package:inha_notice_igrus/tags.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: const Text('Notice',
        style: TextStyle(
          color: Color(0xff3B3B3B)
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Color(0xff3B3B3B),
          ),
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.settings),
                  color: Color(0xff3B3B3B),
              );
            }
          )
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            ListTile(
              leading: Text('알림설정'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}




class TagsPage extends StatefulWidget {
  const TagsPage({Key? key}) : super(key: key);

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {

  static List<int> noticeCount = [
    1,
    2,
    3,
    4,
    5,

  ];

  static List<String> noticeTitle = [
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',

  ];

  static List<String> major = [
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',

  ];

  final List<Tag> TagData = List.generate(major.length, (index) =>
      Tag(noticeCount[index], noticeTitle[index], major[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: const Text('Tags',
          style: TextStyle(
              color: Color(0xff3B3B3B)
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color(0xff3B3B3B),
          ),
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(Icons.settings),
                color: Color(0xff3B3B3B),
              );
            }
          )
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            ListTile(
              leading: Text('알림설정'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: TagData.length,
          itemBuilder: (context, index) {
            return Card(
            child: ListTile(
              title: Text(
                TagData[index].noticeTitle
              ),
            ),
            );
          }
          ),
    );
  }
}
