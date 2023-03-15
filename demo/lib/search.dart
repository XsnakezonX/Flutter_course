import 'package:flutter/material.dart';

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
              )))
        ],
      ),
    );
  }
}
