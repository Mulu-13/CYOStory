import 'package:cyoa_app/pages/Story.dart';
import 'package:flutter/material.dart';

class Teens extends StatelessWidget {
  Teens({super.key});

  final List<Book> books = [
    Book(
      title: "The Secret Garden",
      description:
          "A young girl discovers a hidden garden and her life changes.",
      imageUrl:
          "https://m.media-amazon.com/images/I/51wXw0q7j3L._AC_UF894,1000_QL80_.jpg", // Replace with actual image URLs
    ),
    Book(
      title: "Pride and Prejudice",
      description:
          "A classic tale of love and social class in 19th-century England.",
      imageUrl:
          "https://m.media-amazon.com/images/I/71Q1tPupXoL._AC_UF894,1000_QL80_.jpg",
    ),
    Book(
      title: "To Kill a Mockingbird",
      description:
          "A powerful story about racial injustice and childhood in the American South.",
      imageUrl:
          "https://m.media-amazon.com/images/I/81gehY4s7ZL._AC_UF894,1000_QL80_.jpg",
    ),
    Book(
      title: "1984",
      description:
          "A dystopian novel about a totalitarian regime and the suppression of individual thought.",
      imageUrl:
          "https://m.media-amazon.com/images/I/71b699+hqkL._AC_UF894,1000_QL80_.jpg",
    ),
    // Add more books here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stories List"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Material(
              // Use Material for InkWell effect on the whole container
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return StoryPage(title: book.title);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        // Hero animation for image
                        tag: 'book_image_${book.title}', // Unique tag
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "image.jpg",
                            width: 100, // Slightly larger image
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.title,
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.w600, // Slightly lighter bold
                                fontSize: 20, // Further increased font size
                                color:
                                    Colors.blueGrey[900], // Darker text color
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              book.description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String description;
  final String imageUrl;

  Book(
      {required this.title, required this.description, required this.imageUrl});
}

class MyApp extends StatelessWidget {
  final List<Book> books = [
    Book(
      title: "The Secret Garden",
      description:
          "A young girl discovers a hidden garden and her life changes.",
      imageUrl:
          "https://m.media-amazon.com/images/I/51wXw0q7j3L._AC_UF894,1000_QL80_.jpg", // Replace with actual image URLs
    ),
    Book(
      title: "Pride and Prejudice",
      description:
          "A classic tale of love and social class in 19th-century England.",
      imageUrl:
          "https://m.media-amazon.com/images/I/71Q1tPupXoL._AC_UF894,1000_QL80_.jpg",
    ),
    Book(
      title: "To Kill a Mockingbird",
      description:
          "A powerful story about racial injustice and childhood in the American South.",
      imageUrl:
          "https://m.media-amazon.com/images/I/81gehY4s7ZL._AC_UF894,1000_QL80_.jpg",
    ),
    Book(
      title: "1984",
      description:
          "A dystopian novel about a totalitarian regime and the suppression of individual thought.",
      imageUrl:
          "https://m.media-amazon.com/images/I/71b699+hqkL._AC_UF894,1000_QL80_.jpg",
    ),
    // Add more books here...
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Book List"),
        ),
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return Card(
              // Added Card for visual separation
              elevation: 2, // Add a subtle shadow
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Image.network(
                  book.imageUrl,
                  width: 50,
                  height: 80,
                  fit: BoxFit.cover, // Important for consistent image sizing
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.error), // Handle image loading errors
                ),
                title: Text(book.title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(
                  book.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ), // Limit description lines
                onTap: () {
                  // Handle book tap (e.g., navigate to details screen)
                  print("Tapped on ${book.title}");
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on ${book.title}')));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
