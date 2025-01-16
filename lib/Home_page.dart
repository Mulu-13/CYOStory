import 'package:cyoa_app/pages/teens.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   title: Text(
      //     "CYOAdventure",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 30,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Unlock Your Story",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Interactive stories where you decide what happens next",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  "Hero Image/Animation",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Who is ready to start an adventure?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Teens()));
                    },
                    child: Text(
                      "Kids",
                      style: TextStyle(fontSize: 16),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    onPressed: () {},
                    child: Text(
                      "Teens",
                      style: TextStyle(fontSize: 16),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    onPressed: () {},
                    child: Text(
                      "Adults",
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
            SizedBox(height: 30),
            // "Why Choose Us" Section
            Text(
              "Why Use this App?",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _whyUs(
                    text: "Variety of stories",
                    icon: Icons.collections_bookmark),
                _whyUs(
                    text: "Choose your own adventure", icon: Icons.play_arrow),
                _whyUs(text: "Interactive experience", icon: Icons.touch_app),
                _whyUs(
                    text: "New stories added weekly", icon: Icons.new_releases),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // Navigate back to the age selection (or refresh the page)
                },
                child: Text("Start your Adventure")),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   height: 60,
      //   child: Container(
      //     padding: EdgeInsets.all(1),
      //     child: Text(
      //       "© 2024 CYOA App. All Rights Reserved",
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              size: 30,
            )),
        BottomNavigationBarItem(
            label: "Stories",
            icon: Icon(
              Icons.history,
              size: 30,
            )),
        BottomNavigationBarItem(
            label: "Account",
            icon: Icon(
              Icons.person,
              size: 30,
            ))
      ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // )
    );
  }
}

class _whyUs extends StatelessWidget {
  const _whyUs({required this.icon, required this.text});
  final IconData icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 8),
          Text(text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
