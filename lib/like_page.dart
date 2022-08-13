import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

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

  var numberList = [
    '# 1',
    '# 1',
    '# 1',
    '# 1',
    '# 1',

  ];

  var titleList = [
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',
    '2022학년도 2학기 부산대학교 학점교류 ',

  ];

  var dateList = [
    '2022.07.24',
    '2022.07.24',
    '2022.07.24',
    '2022.07.24',
    '2022.07.24',

  ];

  var majorList = [
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',
    '컴퓨터공학과',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text('Notice',
        //   style: TextStyle(
        //       color: Colors.black
        //   ),
        // ),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.search),
            color: Colors.grey,
          ),
          IconButton(onPressed: () {
            Scaffold.of(context).openEndDrawer();
          }, icon: Icon(Icons.settings),
            color: Colors.grey,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(
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
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              child: SizedBox(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: const Color(0xff005BAC), width: 1.3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity((0.5)),
                              spreadRadius: 0,
                              blurRadius: 11,
                              offset: Offset(3, 7)
                            )
                          ]

                      ),
                      child: SizedBox(
                        height: 140,
                        width: 370,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(numberList[index],
                                      style: TextStyle(
                                        fontSize: 20
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(titleList[index],
                                      style: TextStyle(
                                          fontSize: 17,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(dateList[index],
                                      style: TextStyle(
                                        fontSize: 11
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 91,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: Color(0xff005BAC),
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Color(0xff005BAC), width: 1)
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width: 13,),
                                            Text(majorList[index],
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.favorite),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text('37')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

