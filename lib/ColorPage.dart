import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {


  List b = [
    'assets/images/black.jpg',
    'assets/images/blue.jpg',
    'assets/images/brown.jpg',
    'assets/images/green.jpg',
    'assets/images/orange.jpg',
    'assets/images/pink.jpg',
    'assets/images/purple.jpg',
    'assets/images/red.jpg',
    'assets/images/yellow.jpg',
    'assets/images/gray.jpg',
  ]; //image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Colors',
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
        List<Widget>.generate(10, (index){
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
                  SizedBox(height: 40,),
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
