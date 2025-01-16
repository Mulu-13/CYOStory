import 'package:cyoa_app/pages/Story.dart';
import 'package:flutter/material.dart';

class Listofstories extends StatelessWidget {
  Listofstories({super.key, required this.age});
  final String age;
  final Map<String, List<Map<String, String>>> storyMap = {
    "kids": [
      {
        "title": "The Magic Garden",
        "imageUrl": "background.png",
        "description":
            "Explore a magical garden filled with talking animals and colorful flowers.",
      },
      {
        "title": "Adventure with a Bunny",
        "imageUrl": "background.png",
        "description": "Follow a curious bunny into a wonderland of surprises.",
      },
      {
        "title": "The Friendly Dragon",
        "imageUrl": "background.png",
        "description": "Befriend a dragon and embark on a flying adventure.",
      },
    ],
    "teens": [
      {
        "title": "Mystery in the City",
        "imageUrl": "background.png",
        "description":
            "Unravel the secrets hidden in a bustling city with riddles and codes.",
      },
      {
        "title": "The Lost Map",
        "imageUrl": "background.png",
        "description":
            "Discover an ancient map leading to a treasure beyond imagination.",
      },
      {
        "title": "Haunted Manor",
        "imageUrl": "background.png",
        "description":
            "Explore a spooky mansion and uncover its ghostly tales.",
      },
    ],
    "adults": [
      {
        "title": "The Forgotten Ruins",
        "imageUrl": "background.png",
        "description":
            "Delve into ancient ruins and uncover secrets of a lost civilization.",
      },
      {
        "title": "Castle of Shadows",
        "imageUrl": "background.png",
        "description":
            "Navigate a mysterious castle filled with dark history and hidden paths.",
      },
      {
        "title": "The Traveler's Diary",
        "imageUrl": "background.png",
        "description":
            "Find a diary that tells the tale of an adventurer’s perilous journey.",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final book = storyMap[age];
    return Scaffold(
      appBar: AppBar(
        title: Text(age),
      ),
      body: book != null
          ? ListView.builder(
              itemCount: storyMap[age]?.length,
              itemBuilder: (context, index) {
                return Card(
                  // Added Card for visual separation
                  elevation: 2, // Add a subtle shadow
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Image.asset(
                      book[index]["imageUrl"] ?? "",
                      width: 50,
                      height: 80,
                      fit:
                          BoxFit.cover, // Important for consistent image sizing
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.error), // Handle image loading errors
                    ),
                    title: Text(book[index]["title"] ?? "",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      book[index]["description"] ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ), // Limit description lines
                    onTap: () {
                      // Handle book tap (e.g., navigate to details screen)
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return StoryPage(title: book[index]['title'] ?? "");
                      }));
                    },
                  ),
                );
              },
            )
          : Center(
              child: Text(
                "No stories available for $age.",
                style: const TextStyle(fontSize: 18),
              ),
            ),
    );
  }
}
