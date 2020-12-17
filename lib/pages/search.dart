import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  final List countryList;

  Search(this.countryList);
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        primaryColor: Colors.blueGrey,
        brightness: DynamicTheme.of(context).brightness);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where(
              (element) =>
                  element['country'].toString().toLowerCase().startsWith(query),
            )
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        suggestionList[index]['country'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Image.network(
                        suggestionList[index]['countryInfo']['flag'],
                        height: 50,
                        width: 60,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CONFIRMED : ' +
                              suggestionList[index]['cases'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.cyan),
                        ),
                        Text(
                          'RECOVERED: ' +
                              suggestionList[index]['recovered'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        Text(
                          'ACTIVES : ' +
                              suggestionList[index]['active'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent),
                        ),
                        Text(
                          'CRITICALS : ' +
                              suggestionList[index]['critical'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                        Text(
                          'TODAY-CASES : ' +
                              suggestionList[index]['todayCases'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.cyan),
                        ),
                        Text(
                          'TODAY-DEATHS : ' +
                              suggestionList[index]['todayDeaths'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Text(
                          'TOTAL-DEATH: ' +
                              suggestionList[index]['deaths'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.grey[100]
                                  : Colors.grey[900]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where(
              (element) =>
                  element['country'].toString().toLowerCase().startsWith(query),
            )
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        suggestionList[index]['country'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Image.network(
                        suggestionList[index]['countryInfo']['flag'],
                        height: 50,
                        width: 60,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CONFIRMED : ' +
                              suggestionList[index]['cases'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.cyan),
                        ),
                        Text(
                          'RECOVERED: ' +
                              suggestionList[index]['recovered'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        Text(
                          'ACTIVES : ' +
                              suggestionList[index]['active'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent),
                        ),
                        Text(
                          'CRITICALS : ' +
                              suggestionList[index]['critical'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                        Text(
                          'TODAY-CASES : ' +
                              suggestionList[index]['todayCases'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.cyan),
                        ),
                        Text(
                          'TODAY-DEATHS : ' +
                              suggestionList[index]['todayDeaths'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Text(
                          'TOTAL-DEATH: ' +
                              suggestionList[index]['deaths'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.grey[100]
                                  : Colors.grey[900]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
