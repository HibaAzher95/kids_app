import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child:
                    Container(
                    child: Row(
                      children: [
                        Container(
                          padding:EdgeInsets.only(bottom: 50),
                          child: Text('K',
                            style: TextStyle(
                              color: new Color(0xFFE95BD7),
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Container(
                          padding:EdgeInsets.only(bottom: 50),
                          child: Text('i',
                            style: TextStyle(
                              color: new Color(0xFFF8C624),
                                fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Container(
                          padding:EdgeInsets.only(bottom: 50),
                          child: Text('d',
                            style: TextStyle(
                              color: new Color(0xFFA27AE9),
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Container(
                          padding:EdgeInsets.only(bottom: 50),
                          child: Text('s',
                            style: TextStyle(
                              color: new Color(0xFFF6B2E6),
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                      ],
                    ),
                  ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/HomePage');
                    },
                  ),
                ],
              ),
             // SizedBox(width: 300,),
              Expanded(
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Image.asset(
                          'assets/images/kidslearn.jpg',
                          height: 400,
                          width: 400,
                          alignment: Alignment.bottomLeft,)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}