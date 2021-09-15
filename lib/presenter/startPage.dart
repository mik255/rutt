


import 'dart:ui';
import 'package:flutter/material.dart';


class StartPage extends StatefulWidget {
  const StartPage({Key ?key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment(-0.94, 1.0),
                  end: Alignment(0.9, -0.83),
                  colors: [const Color(0xff00757b), const Color(0xff004b73)],
                  stops: [0.0, 1.0],
                ),
              ),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                child: new Container(

                  decoration: new BoxDecoration(color: Colors.black54,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'rutt',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 80,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(flex: 1,),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, "/driverHomePage");
                        }, child: Text('Quero Cadastrar um Viajem')),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ElevatedButton(onPressed: (){
                          //Navigator.pushNamed(context, "/passagerHomePage");
                        }, child: Text('Quero Fazer uma Reserva')),
                      )),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
