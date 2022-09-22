import 'package:flutter/material.dart';

import 'component/news.dart';
import 'component/hotNews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> macth = <String>[
    "Bayern Munchen vs Victoria Plzen",
    "Marseille vs Sporting CP",
    "Atletico Madrid vs Club Brugge",
    "Ajax vs Napoli",
    "Eintracht Frnkfurt vs Tottenham",
    "Inter Milan vs Barcelona CF",
    "Real Madrid vs Shakhtar Donetsk",
    "Chelsea FC vs AC Milan",
    "Sevilla vs Dortmund",
    "Benfica vs PSG",
  ];

  final List<String> time = <String>[
    "Selasa, 4/10 23.45",
    "Selasa, 4/10 23.45",
    "Selasa, 4/10 23.45",
    "Rabu, 5/10 02.00",
    "Rabu, 5/10 02.00",
    "Rabu, 5/10 23.45",
    "Rabu, 5/10 23.45",
    "Kamis, 6/10 02.00",
    "Kamis, 6/10 02.00",
    "Kamis, 6/10 02.00",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.amber,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'LATEST NEWS',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'open sans',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'MACTH DAY',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'open sans',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                const HotNews(),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const News();
                    },
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Text(
                              macth[index],
                              style: const TextStyle(
                                fontSize: 17,
                                fontFamily: 'open sans',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            time[index],
                            style: const TextStyle(
                              fontSize: 13,
                              fontFamily: 'open sans',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: macth.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
