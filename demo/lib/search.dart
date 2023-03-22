import 'package:flutter/material.dart';
import 'package:demo/article_page.dart';

// class Search extends StatelessWidget {
//   const Search({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Article> articles = [
    Article(
        title: 'Article 1',
        author: 'Amy',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 2',
        author: 'Bob',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 3',
        author: 'Cathy',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 4',
        author: 'David',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 5',
        author: 'Eve',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 6',
        author: 'Frank',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 7',
        author: 'George',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 8',
        author: 'Hannah',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 9',
        author: 'Ivan',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
    Article(
        title: 'Article 10',
        author: 'John',
        source: 'Google',
        publishedAt: 'today',
        url: 'www.abc.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Search')),
      ),
      body: Column(
        children: [
          Center(
              child: Text('News',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 32,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 50),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 18),
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, color: Colors.black),
                suffixIcon: Icon(Icons.arrow_forward_ios, color: Colors.black),
                filled: true,
                fillColor: Colors.grey,
                border: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ))),
          Expanded(
              child: ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Article $index'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ArticleScreen(article: articles[index]),
                          ),
                        );
                      },
                    );
                  }))
        ],
      ),
    );
  }
}
