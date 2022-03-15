import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class NumPage extends StatefulWidget {
  const NumPage({Key? key}) : super(key: key);

  @override
  State<NumPage> createState() => _HomePageState();
}

class _HomePageState extends State<NumPage> {

  List a = [
    'assets/images/one.png',
    'assets/images/two.png',
    'assets/images/three.png',
    'assets/images/four.png',
    'assets/images/five.png',
    'assets/images/six.png',
    'assets/images/seven.png',
    'assets/images/eight.png',
    'assets/images/nine.png',
  ]; //image

  List b= [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
  ];//text

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
  ];//colors

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Numbers'),
          ],
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          Container(
               child: IconButton(
                 onPressed: (){
                   Navigator.pushNamed(context, '/HomePage');},
                    icon:const Icon(Icons.arrow_forward_ios,size: 15,),
                 ),
             ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: const Text('Problems and Proposals'),
              leading: const Icon(Icons.warning_outlined,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('App evaluation'),
              leading: const Icon(Icons.star,),
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
                          padding: const EdgeInsets.only(left: 63),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(b[index],
                                style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              Container(
                                  height: 170,
                                  width: 170,
                                  child: IconButton(
                                    onPressed: () {
                                      print('kkkkk');
                                      AssetsAudioPlayer.newPlayer().open(
                                        Audio("assets/song.mp3"),
                                        //autoStart: true,
                                        //showNotification: true,
                                      );
                                    },
                                    icon: const Icon( Icons.volume_up_outlined,
                                       size: 100,color: Colors.black54,
                                        ),
                              ),
                              ),
                            ],
                          ),
                            margin: const EdgeInsets.all(20),
                            height: 160,
                            width: 350,
                            decoration:(
                              BoxDecoration(
                                color: Color(c[index]),
                                borderRadius: const BorderRadius.all(
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
          return const SizedBox();
      },
      ),
    );
  }
}

/*
 AssetsAudioPlayer.newPlayer().open(
            Audio("d[index]"),
            autoStart: true,
            showNotification: true,
          );
 */