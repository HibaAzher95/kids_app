import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AniPage extends StatefulWidget {
  const AniPage({Key? key}) : super(key: key);

  @override
  State<AniPage> createState() => _AniPageState();
}

class _AniPageState extends State<AniPage> {

  List a = [
    'assets/images/lion.png',
    'assets/images/bear.png',
    'assets/images/racoon.png',
    'assets/images/giraffe.png',
    'assets/images/horse.png',
    'assets/images/pngwing.com (9).png',
    'assets/images/tiger.png',
    'assets/images/elephant.png',
  ]; //image

  List b= [
    'Lion',
    'Bear',
    'Racoon',
    'Giraffe',
    'Horse',
    'Monkey',
    'tiger',
    'elephant',
  ];//text

  List c=[
    0xFFFFE290,
    0xFFCED0F9,
    0xFFCED0F9,

    0xFFFFA9A9,
    0xFFFCD4AD,
    0xFFD2FFB4,
    0xFFFECDFB,
    0xFFFFE290,
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
              child: Text('Animals',
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
      body: ListView.separated(
        itemCount: a.length,
        itemBuilder: (BuildContext context, int index) {
          return  Expanded(
            child: Stack(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 63),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(b[index],style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              Container(
                                height: 170,
                                width: 170,
                                child: IconButton(
                                  onPressed: () {
                                    AssetsAudioPlayer.newPlayer().open(
                                      Audio("assets/hiba.mp3"),
                                      autoStart: true,
                                      showNotification: true,
                                    );
                                  },
                                  icon: Icon( Icons.volume_up_outlined,
                                    size: 100,color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(20),
                          height: 160,
                          width: 350,
                          decoration:(
                              BoxDecoration(
                                color: new Color(c[index]),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(12)
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 170,
                            width: 170,
                            child: Image.asset(a[index])
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
        return SizedBox();
      },
      ),
    );
  }
}
