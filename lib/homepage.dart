import 'dart:convert';
import 'package:covid19healthcare/datasources.dart';
import 'package:covid19healthcare/pages/countrypage.dart';
import 'package:covid19healthcare/panels/infopanel.dart';
import 'package:covid19healthcare/panels/mosteffectedcountries.dart';
import 'package:covid19healthcare/panels/worldwidepanels.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pie_chart/pie_chart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map worldData;
  fetchWorldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List countryData;
  fetchCountryData() async {
    http.Response response = await http
        .get('https://corona.lmao.ninja/v2/countries?sort=todayCases');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  Future fetchData() async {
    fetchWorldWideData();
    fetchCountryData();
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Theme.of(context).brightness == Brightness.light
                ? Icons.gps_not_fixed
                : Icons.brightness_high),
            onPressed: () {
              DynamicTheme.of(context).setBrightness(
                  Theme.of(context).brightness == Brightness.light
                      ? Brightness.dark
                      : Brightness.light);
            },
          )
        ],
        title: Text('Covid-19 Informat'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: fetchData,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                height: 130,
                color: Color.fromRGBO(97, 174, 95, 1),
                child: Text(
                  DataSource.quote,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Worldwide',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CountryPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Regional',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              worldData == null
                  ? CircularProgressIndicator()
                  : WorldWidePanel(
                      worldData: worldData,
                    ),
              worldData == null
                  ? Container()
                  : PieChart(
                      dataMap: {
                        'CONFIRMED': worldData['cases'].toDouble(),
                        'ACTIVE': worldData['active'].toDouble(),
                        'RECOVERED': worldData['recovered'].toDouble(),
                        'DEATHS': worldData['deaths'].toDouble(),
                      },
                      colorList: [
                        Color.fromRGBO(241, 60, 89, 1),
                        Color.fromRGBO(99, 62, 187, 1),
                        Color.fromRGBO(88, 213, 55, 1),
                        Color.fromRGBO(188, 108, 202, 1),
                      ],
                      animationDuration: Duration(milliseconds: 2500),
                    ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  ' Today Most affected Countries',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              countryData == null
                  ? Container()
                  : MostAffectedPanel(
                      countryData: countryData,
                    ),
              InfoPanel(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  '"FIGHT COVID-19 WITH CLEAN HANDS"',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
