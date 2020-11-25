import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'twitter demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'twitter demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _countCheck() {
  //   if( _counter > 5 || _counter < -5 ){
  //     _counter = 0;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              title: Text(""),
            ),
          ],
          // type: BottomNavigationBarType.fixed,
          // onTap: (){},
          // currentINdex: (),
          border: new Border(
            top: BorderSide(
              width: 1,
              color: Colors.black12,
            ),
          ),
          iconSize: 35,
        ), 
      tabBuilder: (context,index){
        switch(index) {
          case 0:
          return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(
              child: Homepage(),
            );
          });
          case 1:
          return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(
              child: NextPage(),
            );
          });
        }
      },
    );
  }
}

      // body: Padding(
      //   // padding: EdgeInsets.only(top: 50),
      //   padding: EdgeInsets.only(top: 40),
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         decoration: BoxDecoration(
      //           border: new Border(
      //             bottom: BorderSide(
      //               width: 1,
      //               color: Colors.black12,
      //             )
      //           ),
      //         ),
      //         child: Row( 
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             FlatButton(
      //               onPressed: (){}, 
      //               child: Image(
      //                 image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      //                 width: 40,
      //                 height: 40,
      //               ),
      //             ),
      //             Image.asset("assets/twitter.png",width: 50,height: 50,),
      //             FlatButton(
      //               onPressed: (){}, 
      //               child: Image.asset("assets/tweet.png",width: 30,height: 30,),
      //             ),
      //             // floatingActionButton: FloatingActionButton(
                //   onPressed: (){},
                //   child: Image.asset("assets/tweet.png",width: 30,height: 30,),
                //    ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 30),
      //       Text("aaaaa"),
      //     ],
      //   ),
      // ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         title: Text(""),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         title: Text(""),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.notifications),
      //         title: Text(""),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.mail),
      //         title: Text(""),
      //       ),
      //     ],
      //     type: BottomNavigationBarType.fixed,
      // ),

// class HomepageState extends StatefulWidget {
//   HomepageState({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   Homepage createState() => Homepage();
// }

class Homepage extends StatelessWidget {
  var Listitem = [];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: EdgeInsets.only(top:25),
            child: AppBar(
              automaticallyImplyLeading: false, // hides leading widget
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){}, 
                    child: Image(image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),width: 40,height: 40,),
                  ),
                  Image.asset("assets/twitter.png",width: 50,height: 50,),
                  FlatButton(
                    onPressed: (){}, 
                    child: Image.asset("assets/tweet.png",width: 30,height: 30,),
                  ),
                ],
              ),
            ),
          ),
        ),

      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: (){}, 
                    child: Image(image:NetworkImage('http://img-o.starrypages.net/img/nureyon/html-2.png'),width: 50,height: 50,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Listitem[0].username' + "   " + "@userID"),
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:10),
                        child: Text("ラブストーリーは筑前煮\nあぁぁぁ"), 
                      ),
                    ],
                  )
                ],
              ),
            ),
            // itemCount: Listitem.length,
          );
        },
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          color: Colors.greenAccent,
          child: Center(
            child: IconButton(
              icon: Icon(Icons.queue_play_next, color: Colors.black, size:50,),
              splashColor: Colors.amber,
              padding: EdgeInsets.all(0),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}