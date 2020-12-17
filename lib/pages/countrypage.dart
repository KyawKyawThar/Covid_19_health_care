import 'dart:convert';
import 'package:covid19healthcare/pages/search.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData;
  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=deaths');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  Future fetchCouData() async {
    fetchCouData();
  }

  @override
  void initState() {
    fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Search(countryData));
              })
        ],
        title: Text('Country Lists'),
      ),
      body: RefreshIndicator(
        onRefresh: fetchCouData,
        child: countryData == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 150,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                  countryData[index]['country'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Image.network(
                                  countryData[index]['countryInfo']['flag'],
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
                                        countryData[index]['cases'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.cyan),
                                  ),
                                  Text(
                                    'RECOVERED: ' +
                                        countryData[index]['recovered']
                                            .toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                  Text(
                                    'ACTIVES : ' +
                                        countryData[index]['active'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purpleAccent),
                                  ),
                                  Text(
                                    'CRITICALS : ' +
                                        countryData[index]['critical']
                                            .toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.redAccent),
                                  ),
                                  Text(
                                    'TODAY-CASES : ' +
                                        countryData[index]['todayCases']
                                            .toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.cyan),
                                  ),
                                  Text(
                                    'TODAY-DEATHS : ' +
                                        countryData[index]['todayDeaths']
                                            .toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    'TOTAL-DEATH: ' +
                                        countryData[index]['deaths'].toString(),
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
                itemCount: countryData == null ? 0 : countryData.length,
              ),
      ),
    );
  }
}
