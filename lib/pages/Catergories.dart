import 'package:cyoa_app/pages/ListOfStories.dart';
import 'package:flutter/material.dart';

class Catergories extends StatelessWidget {
  const Catergories({super.key});

  @override
  Widget build(BuildContext context) {
    final cyoaMapTigrinya = {
      'Kids': {
        'title': Text("1",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700)),
        'subtitle': Text("ንሕጻናት",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black)), // For Kids
        'description': Text("ዝማኖታዊ ጀብዱታት ጀምሩ!",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color:
                    Colors.grey.shade700)), // Embark on fantastical adventures!
        'badge': Text("ተጻወቱ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white)), // Fun (literal translation is play)
        'badgeColor': Colors.red.shade400,
        'link': 'Kids.dart',
        'onPressed': () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Listofstories(
                age: 'kids',
              );
            },
          ));
        }
      },
      'Teens': {
        'title': Text("2",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700)),
        'subtitle': Text("ንመንእሰያት",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black)), // For Teens
        'description': Text("ፍሉያት ኩነታት ዳህስሱ ከቢድ ውሳኔታት ድማ ወስኑ!",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey
                    .shade700)), // Explore unique scenarios and make tough choices!
        'badge': Text("መርምሩ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white)), // Explore
        'badgeColor': Colors.blue.shade300,
        'link': 'Teens.dart',
        'onPressed': () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Listofstories(
                age: 'teens',
              );
            },
          ));
        }
      },
      'Adults': {
        'title': Text("3",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700)),
        'subtitle': Text("ንዓበይቲ",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black)), // For Adults
        'description': Text("ምስጢራት ፈትሑ ንሕይወትኩም ድማ ቅርጹ!",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey
                    .shade700)), // Unravel mysteries and shape your own destiny!
        'badge': Text("ውሳኔ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white)), // Decide
        'badgeColor': Colors.purple.shade400,
        'link': 'Adults.dart',
        'onPressed': () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Listofstories(
                age: 'adults',
              );
            },
          ));
        }
      },
    };

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("CYOStory"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's Play",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[800]),
              ),
              Text(
                "Play your own story",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Stack(
              //   children: [
              //     Material(
              //       // elevation: 5,
              //       child: Container(
              //         margin: EdgeInsets.only(top: 40),
              //         padding: EdgeInsets.all(20),
              //         width: size.width,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.all(Radius.circular(10)),
              //             gradient: LinearGradient(colors: <Color>[
              //               Colors.amber.shade500,
              //               Colors.yellow.shade500,
              //               Colors.amber
              //             ])),
              //         child: Column(
              //           spacing: 1,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "1",
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Colors.grey.shade700),
              //             ),
              //             Text(
              //               "For Kids",
              //               style: TextStyle(
              //                   fontSize: 24,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black),
              //             ),
              //             Text(
              //               "Play you own story",
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Colors.grey.shade700),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     Positioned(
              //       right: 25,
              //       child: CircleAvatar(
              //           backgroundColor: Colors.cyanAccent,
              //           radius: 40,
              //           child: Padding(
              //             padding: EdgeInsets.all(10),
              //             child: Text(
              //               "Fun",
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Colors.grey.shade700),
              //             ),
              //           )),
              //     ),
              //   ],
              // ),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                    spacing: 30,
                    children: cyoaMapTigrinya.entries
                        .map(
                          (content) => ElevatedButton(
                            onPressed:
                                content.value['onPressed'] as VoidCallback,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40),
                                  padding: EdgeInsets.all(20),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(colors: <Color>[
                                      Colors.amber.shade500,
                                      Colors.yellow.shade500,
                                      Colors.amber
                                    ]),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      content.value['title'] as Widget,
                                      content.value['subtitle'] as Widget,
                                      content.value['description'] as Widget,
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 25,
                                  // Adjust vertical positioning as needed
                                  child: CircleAvatar(
                                    backgroundColor:
                                        content.value['badgeColor'] as Color,
                                    radius: 40,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: content.value['badge'] as Widget,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList()),
              )
            ],
          ),
        )),
      ),
    );
  }
}
