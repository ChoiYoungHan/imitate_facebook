import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 55,
            backgroundColor: Colors.green,
            title: Text('facebook', style: TextStyle(color: Colors.blue)),
            actions: [
              IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.add_circle_outline, color: Colors.black)
              ),
              IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.search_outlined, color: Colors.black)
              ),
              IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.message_outlined, color: Colors.black)
              )
            ]
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 55,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.home)
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.people_alt_outlined)
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.airplay_outlined)
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.person_outline_outlined)
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.notifications_none_sharp)
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.menu)
                  )
                ]
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.grey,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: 140,
                          height: 140,
                          child: Image.network(
                            'https://source.unsplash.com/random?Seoul=$index',
                            fit: BoxFit.cover,
                          )
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          height: 300,
                          color: Colors.purple,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ]
      )
    );
  }
}
