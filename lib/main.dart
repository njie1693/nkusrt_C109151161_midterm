import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),

  ];
  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(title: Text('C109151161'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'School',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
              label: 'Target',
            ),

          ],
          onTap: (index) { setState(() {
            _currentindex=index;
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children:<Widget>[
          //先放個標題

          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,color:Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 28,top:25),
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage:AssetImage('images/f1.jpg'),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 28,top:25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("蘇柏愷",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.white),),
                    Padding(padding:EdgeInsets.only(top: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on,color: Colors.white,),
                          Text("Taiwan  Kaohsiung",style: TextStyle(fontSize: 25,color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top:50)),
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(20, 0, 10, 50),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Colors.amberAccent,
                    offset: Offset(6, 6)),
                ],),
              child:Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top:15)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      Text("Name:蘇柏愷",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.calendar_month),
                      Text("Data of Birth:2001 10 6",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.mail),
                      Text("Email:C109151161@nkust.edu.tw",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      Text("Address: 高雄市小港區XX路XX號",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      Text("Phone: 09XXXXXXXX",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                ],
              )
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  final String s2='我是蘇柏愷，來自高雄市，出生在一個很平凡的小家庭，'
      '父母用民主的方式管教我們，希望我們能夠獨立自主、主動學習，並能朝自我的興趣及目標發展。'
      '對軟體的應用及語言程式撰寫的熱愛，即有幸依個人興趣如願在高雄科技大學資訊工程學系就讀並建立自己專業能力。'
      '父母親只對我們要求兩件事，第一是保持健康，第二是不要犯罪。'
      '因為沒有健康的身體，再大的抱負也無法發揮出來。'
      '又因為家境並不富裕，所以必須專心於課業上，學得一技之長'
      '，將來才能自立更生。'
      '就讀於高雄科技大學資訊工程系，我目前我有修習過Java Python C等程式語言，目前主要往電腦網路 網路攻擊檢測學習研究';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("自傳 ",
                style: TextStyle(fontSize:28,
                    fontWeight:FontWeight.bold,color:Colors.white)),
          ),
          Container(
            child: Text(s2,
              style: TextStyle(fontSize: 24,color: Colors.white),),
          )
        ]
    )
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("目前目標:",style: TextStyle(fontSize: 20,color: Colors.white),),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                width: 200,
                child: ListView(
                  children: [
                    Text('1.	語言學習：閱讀英語書籍，學習英語常用會話，練習五十音的發音，每周翻譯一篇日語文章，增強外語能力。\n2.	運動習慣養成：做任何事都需要一些體力，有好的體力學習也能夠更專注。\n3.修完修也修不到的**通識課\n4.機械學習\n5.linux作業系統',style:TextStyle(color: Colors.white,fontSize:20 ),),
                  ],
                ),
              ),
            ],),
        ],
      ),);

  }
}

