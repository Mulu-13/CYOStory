import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key, required this.title});
  final String title;
  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  Map<String, Object> data = {
    "pages": {
      "intro": {
        "text":
            "You stand at a crossroads in a dense forest. The sun is setting, and the paths ahead are shrouded in mystery. To the left, you hear the faint sound of running water. To the right, there is an eerie silence.",
        "choices": [
          {"text": "Go left toward the sound of water", "target": "left_path"},
          {"text": "Go right into the silence", "target": "right_path"},
          {"text": "Stay and make a camp for the night", "target": "camp"}
        ]
      },
      "left_path": {
        "text":
            "You follow the sound of water and discover a sparkling stream. Nearby, you notice a small cave with glowing moss around its entrance.",
        "choices": [
          {"text": "Enter the cave", "target": "cave"},
          {"text": "Follow the stream", "target": "stream_path"},
          {"text": "Return to the crossroads", "target": "intro"}
        ]
      },
      "right_path": {
        "text":
            "The silence grows heavier as you proceed. Suddenly, you encounter a friendly wizard who greets you warmly. He offers to teach you a spell.",
        "choices": [
          {"text": "Learn the spell", "target": "learn_spell"},
          {"text": "Thank the wizard and continue", "target": "dark_forest"},
          {
            "text": "Ask the wizard for a different path",
            "target": "wizard_path"
          }
        ]
      },
      "camp": {
        "text":
            "You decide to stay put and set up camp. As the night deepens, you hear rustling noises nearby. You have a choice to investigate or stay hidden.",
        "choices": [
          {"text": "Investigate the noise", "target": "investigate_noise"},
          {"text": "Stay hidden in your camp", "target": "hidden_camp"}
        ]
      },
      "cave": {
        "text":
            "Inside the cave, you find a treasure chest surrounded by glowing runes. It looks both inviting and ominous.",
        "choices": [
          {"text": "Open the chest", "target": "treasure"},
          {"text": "Leave the cave", "target": "left_path"}
        ]
      },
      "stream_path": {
        "text":
            "Following the stream, you come across a peaceful meadow where magical creatures are grazing. One of them notices you and approaches curiously.",
        "choices": [
          {"text": "Pet the creature", "target": "magic_friend"},
          {"text": "Avoid the creature and move on", "target": "deep_forest"}
        ]
      },
      "learn_spell": {
        "text":
            "The wizard teaches you a spell of light, which can illuminate dark places. Feeling empowered, you thank him.",
        "choices": [
          {"text": "Use the spell to explore", "target": "dark_forest"},
          {"text": "Return to the crossroads", "target": "intro"}
        ]
      },
      "wizard_path": {
        "text":
            "The wizard points to a hidden path that leads to a distant castle. It seems to glow faintly in the moonlight.",
        "choices": [
          {"text": "Head toward the castle", "target": "castle_path"},
          {"text": "Stay with the wizard", "target": "wizard_company"}
        ]
      },
      "investigate_noise": {
        "text":
            "You approach the source of the noise and find a lost traveler searching for their way back. They thank you and share some supplies.",
        "choices": [
          {"text": "Guide them to the crossroads", "target": "intro"},
          {
            "text": "Part ways and continue exploring",
            "target": "hidden_treasure"
          }
        ]
      },
      "hidden_camp": {
        "text":
            "You remain hidden, and the rustling subsides. The night passes uneventfully, and you wake up feeling rested.",
        "choices": [
          {"text": "Return to the crossroads", "target": "intro"},
          {"text": "Explore the surroundings", "target": "day_exploration"}
        ]
      },
      "treasure": {
        "text":
            "You open the chest and find a golden sword that glows with a magical aura. It feels powerful in your hands.",
        "end": true
      },
      "magic_friend": {
        "text":
            "The creature forms a bond with you and offers to guide you through the forest. With its help, you feel safer and more confident.",
        "end": true
      },
      "deep_forest": {
        "text":
            "Venturing deeper into the forest, you encounter challenges that test your courage and wit. Your journey continues.",
        "end": true
      },
      "dark_forest": {
        "text":
            "Using your new spell, you navigate through the darkness and uncover ancient ruins. This could be the start of a grand adventure.",
        "end": true
      },
      "castle_path": {
        "text":
            "The path to the castle is long but rewarding. You arrive at its gates, eager to discover its secrets.",
        "end": true
      },
      "wizard_company": {
        "text":
            "The wizard shares stories of his travels and offers you a place as his apprentice. Your journey takes an unexpected turn.",
        "end": true
      },
      "hidden_treasure": {
        "text":
            "Exploring further, you find a hidden treasure buried under an old oak tree. It holds ancient coins and a mysterious map.",
        "end": true
      },
      "day_exploration": {
        "text":
            "With daylight on your side, you discover a small village nearby. Its inhabitants welcome you warmly.",
        "end": true
      }
    }
  };

  String a = 'intro';

  @override
  Widget build(BuildContext context) {
    List? choices = (data['pages'] as Map?)?[a]?['choices'] as List?;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 12,
                    child: Center(
                      child: Text(
                        (data['pages'] as Map?)?[a]?['text'] as String? ??
                            'Text not found',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Column(
                    children: choices != null
                        ? choices.map((choice) {
                            return ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    a = choice['target'];
                                    choices = (data['pages'] as Map?)?[a]
                                        ?['choices'] as List?;
                                    print(choices);
                                  });
                                },
                                child: Text(
                                  choice['text'],
                                ));
                          }).toList()
                        : [Text('hi')],
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15)),
                      onPressed: () {},
                      child: Text(
                        (data['pages'] as Map?)?[a]?['choices']?[0]['text']
                                as String? ??
                            'Text not found',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15)),
                      onPressed: () {},
                      child: Text(
                        (data['pages'] as Map?)?[a]?['choices']?[0]['text']
                                as String? ??
                            'Text not found',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ]),
          )
          // body: Scaffold()
          //   body: Column(
          //     children: [
          //       Expanded(
          //         flex: 1,
          //         child: Container(
          //           padding: EdgeInsets.all(30),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //               Container(
          //                 padding: EdgeInsets.all(30),
          //                 child: Text(
          //                     'You stumble upon an overgrown archway hidden deep within the woods. Sunlight struggles to pierce the dense foliage, casting long, eerie shadows.'),
          //               ),
          //               Column(
          //                 spacing: 20,
          //                 children: [
          //                   ElevatedButton(
          //                       onPressed: () {}, child: Text('Enter cautiously')),
          //                   ElevatedButton(
          //                       onPressed: () {}, child: Text('Turn back'))
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
