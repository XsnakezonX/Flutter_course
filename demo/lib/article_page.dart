import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({
    super.key,
    required article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Article')),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text('Article',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Title'),
                        subtitle: Text('Author'),
                        trailing: Column(
                          children: [Text('Date'), Text('Date')],
                        ),
                      );
                    })),
            Text('This article is of source x'),
          ],
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String author;
  final String source;
  final String publishedAt;
  final String url;
  Article(
      {this.title = '',
      this.author = '',
      this.source = '',
      this.publishedAt = '',
      this.url = ''});
}
