import 'package:flutter/material.dart';
// import 'package:demo/article.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({Key? key, required this.article}) : super(key: key);

  final Article article;

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
            const SizedBox(height: 50),
            Center(
                child: Text(article.title,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 32,
                        fontWeight: FontWeight.bold))),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Author'),
                Text('Date'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(article.author),
                Text(article.publishedAt),
              ],
            ),
            const SizedBox(height: 20),
            Text('This article is brought to you by ${article.source}'),
            const SizedBox(height: 20),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                // a rounded button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text(
                    'Click here to Read more',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
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
