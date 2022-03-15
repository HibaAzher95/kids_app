import 'package:flutter/material.dart';

class LettPage extends StatefulWidget {
  const LettPage({Key? key}) : super(key: key);

  @override
  State<LettPage> createState() => _LettPageState();
}

class _LettPageState extends State<LettPage> {

  List a = [
    'assets/images/a.jpg',
    'assets/images/b.jpg',
    'assets/images/c.jpg',
    'assets/images/d.jpg',
    'assets/images/e.jpg',
    'assets/images/f.jpg',
    'assets/images/g.jpg',
    'assets/images/h.jpg',
    'assets/images/i.jpg',
    'assets/images/j.jpg',
    'assets/images/k.jpg',
    'assets/images/l.jpg',
    'assets/images/m.jpg',
    'assets/images/n.jpg',
    'assets/images/o.jpg',
    'assets/images/p.jpg',
    'assets/images/q.jpg',
    'assets/images/r.jpg',
    'assets/images/s.jpg',
    'assets/images/t.jpg',
    'assets/images/u.jpg',
    'assets/images/v.jpg',
    'assets/images/w.jpg',
    'assets/images/x.jpg',
    'assets/images/y.jpg',
    'assets/images/z.jpg',
  ]; //image

  List c=[
    0xFF7CE77F,
    0xFFF5FDC1,
    0xFFFFA9A9,
    0xFFCED0F9,
    0xFFFCD4AD,
    0xFFD2FFB4,
    0xFFFFE290,
    0xFFFECDFB,
    0xFFCED0F9,
    0xFF7CE77F,
    0xFFF5FDC1,
    0xFFFFA9A9,
    0xFFCED0F9,
    0xFFFCD4AD,
    0xFFD2FFB4,
    0xFFFFE290,
    0xFFFECDFB,
    0xFFCED0F9,
    0xFF7CE77F,
    0xFFF5FDC1,
    0xFFFFA9A9,
    0xFFCED0F9,
    0xFFFCD4AD,
    0xFFD2FFB4,
    0xFFFFE290,
    0xFFFECDFB,
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
              child: Text('Letters',
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
        List<Widget>.generate(26, (index){
          return GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 180,
                      width: 180,
                      child: Image.asset(a[index])),
                  SizedBox(height: 20,),

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

/*
ClipRRect(
borderRadius : BorderRadius.all(Radius.circular(12))
 child: Image.asset(a[index]),
)
 */