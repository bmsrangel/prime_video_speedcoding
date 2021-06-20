import 'package:flutter/material.dart';

import 'pages/start_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              floating: true,
              pinned: true,
              title: Container(
                height: 25.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/prime-video-white.png'),
                  ),
                ),
              ),
              bottom: TabBar(
                labelPadding: const EdgeInsets.only(bottom: 15.0),
                indicatorColor: Colors.white,
                tabs: [
                  Text('Página Inicial'),
                  Text('Séries'),
                  Text('Filmes'),
                  Text('Infantil'),
                ],
              ),
            ),
          ],
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              StartPage(),
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.green),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFF01A6DF),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download_outlined),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13.0,
              backgroundColor: Color(0xFF1D80AB),
              child: Icon(Icons.person),
            ),
            label: 'Minha área',
          ),
        ],
      ),
    );
  }
}
