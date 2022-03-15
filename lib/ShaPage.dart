import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class ShaPage extends StatefulWidget {
  const ShaPage({Key? key}) : super(key: key);

  @override
  State<ShaPage> createState() => _ShaPageState();
}

class _ShaPageState extends State<ShaPage> {

  List b = [
    'assets/images/circle.jpg',
    'assets/images/squar.jpg',
    'assets/images/rectangle.jpg',
    'assets/images/triangle.jpg',
    'assets/images/star2.jpg',
  ]; //image

  List a= [
    'circle',
    'square',
    'rectangle',
    'triangle',
    'star',
  ];//text

  List c=[
    0xFF7CE77F,
    0xFFF5FDC1,
    0xFFFFA9A9,
    0xFFCED0F9,
    0xFFFCD4AD,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Numbers',
              ),
            ),
          ],
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          Container(
            child: IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/HomePage');
              },
              icon:Icon(Icons.arrow_forward_ios,size: 15,),
            ),
          ),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Problems & Proposals'),
              leading: Icon(
                Icons.warning_outlined,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('App evaluation'),
              leading: Icon(
                Icons.star,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Exit'),
              leading: Icon(
                Icons.exit_to_app_outlined,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        padding: EdgeInsets.all(20),
        children:
        List<Widget>.generate(5, (index){
          return GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(b[index])),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      TextButton(
                        child: Text(a[index],
                          style: TextStyle(
                              fontSize: 20,color: Colors.black),),
                        onPressed: (){
                          Navigator.pushNamed(context, c[index]);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          );
        }
        ),
      ),
    );
  }
}
