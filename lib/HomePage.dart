import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List a = [
    'Numbers',
    'Letters',
    'Animals',
    'Shaps',
    'Colors',
    'Other things',
  ];

  List b = [
    'assets/images/numbers.jpg',
    'assets/images/letters.jpg',
    'assets/images/animals.png',
    'assets/images/shapss.jpg',
    'assets/images/colors.jpg',
    'assets/images/six.png',

  ]; //image

List c = [
  '/NumPage',
  '/LettPage',
  '/AniPage',
  '/ShaPage',
  '/ColorPage',
  '/OtherPage',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Kids Learning'),
          ],
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/FirstPage');},
            icon:const Icon(Icons.arrow_forward_ios,size: 15,),
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
      body: GridView.count(
        primary: false,
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        padding: const EdgeInsets.all(20),
        children:
          List<Widget>.generate(6, (index){
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
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      TextButton(
                        child: Text(a[index],
                           style: const TextStyle(
                               fontSize: 20,color: Colors.black),),
                        onPressed: (){
                          Navigator.pushNamed(context, c[index]);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
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
 TextButton(

                            onPressed: (){
                              Navigator.pushNamed(context, '/NumYear');
                            },
                          ),
 */