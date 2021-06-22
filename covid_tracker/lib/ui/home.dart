import 'package:flutter/material.dart';

menu() {
  print("Menu for the App");
}

country() {
  print("List of countries to select from...");
}

Widget display(label, num, code) {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(20),
    ),
    width: 500,
    height: 140,
    child: Column(
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            color: Colors.white38,
            fontSize: 20,
          ),
        ),
        Text("   "),
        Text(
          num,
          style: TextStyle(
            color: Colors.accents[code],
            fontSize: 35,
          ),
        ),
      ],
    ),
  );
}

tracker() {
  var active_cases = "124567";
  var total_deaths = "500";
  var total_recovered = "2541";
  var c_name = "India";
  var body = Container(
    child: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://thumbs.dreamstime.com/b/corona-virus-covid-microscopic-virus-corona-virus-disease-d-illustration-india-map-india-flag-infected-india-infection-india-175493021.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            display("Active Cases", active_cases, 6),
            display("Total Deaths", total_deaths, 0),
            display("Total Recovered", total_recovered, 9),
          ],
        ),
      ],
    ),
  );
  var home = Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
        ),
        onPressed: menu,
      ),
      title: Center(
        child: Text(
          "Covid Tracker",
        ),
      ),
      actions: <Widget>[
        Container(
            padding: EdgeInsets.all(16),
            child: Text(
              c_name,
              style: TextStyle(
                fontSize: 15,
              ),
            )),
        IconButton(
            onPressed: country,
            icon: Icon(
              Icons.arrow_drop_down,
            ))
      ],
      backgroundColor: Colors.amber,
    ),
    body: body,
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home,
  );
}
