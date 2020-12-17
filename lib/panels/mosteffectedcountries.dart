import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            children: [
              Image.network(
                countryData[index]['countryInfo']['flag'],
                height: 25,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                countryData[index]['country'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'TDYCases ' + countryData[index]['todayCases'].toString(),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'TDYDeaths ' + countryData[index]['todayDeaths'].toString(),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              )
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }
}
