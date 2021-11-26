import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Pasta'),
      ),
      body: Container(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.topCenter,
              height: 340,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/pasta.jpg"),
                ),
              ),
            ),
            Positioned(
              top: 290,
              child: Container(
                padding: EdgeInsets.all(10),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.timer),
                          Text(
                            " +10 min",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Pasta Al Pomodoro \n"
                                "with Basil",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    CupertinoIcons.minus
                                ),
                                SizedBox(width: 5.0,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: new BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(child: Text('1', style: TextStyle(color: Colors.white),),),
                                ),
                                SizedBox(width: 5.0,),
                                Icon(
                                    CupertinoIcons.plus
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          color: Colors.grey.withOpacity(0.3),
                          textColor: Colors.black,
                          onPressed: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Column(children: [Text(' 320\n gram', style: TextStyle(height: 1.35),)],),
                              SizedBox(width: 45),
                              Column(children: [Text(' 740\n kcal', style: TextStyle(height: 1.35),)],),
                              SizedBox(width: 45),
                              Column(children: [Text(' 10\n belki', style: TextStyle(height: 1.35),)],),
                              SizedBox(width: 45),
                              Column(children: [Text(' 10\n zhr', style: TextStyle(height: 1.35),)],),
                              SizedBox(width: 44),
                              Column(children: [Text(' 155\n ugl', style: TextStyle(height: 1.35),)],),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      " is simply dummy text of the printing and typesetting"
                          " industry. Lorem Ipsum has been the industry's standard dummy ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 1000,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.bag),
                          Text('40 min, \$6.30', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
