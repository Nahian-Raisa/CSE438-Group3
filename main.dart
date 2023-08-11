import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(title: 'xxx'),
      // Application name
      //title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA964DF), // Set the background color to purple
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Circular shape for the container
                color: Colors.white,
              ),
              padding:
                  EdgeInsets.all(15), // Adjust padding for the circular logo
              child: Image.asset(
                  'assets/logo.png'), // Add your logo asset path here
            ),
            SizedBox(height: 10),
            Text(
              "BLISSFUL ESSENCIALS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 80), // Add spacing between logo and buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShopperReg()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                    255, 198, 136, 245), // Button background color
                minimumSize: Size(260, 42), // Set width and height
                side: BorderSide(color: Colors.white, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: Text("Shopper"),
            ),
            SizedBox(height: 50), // Add some spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Add the logic for the second button here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                    255, 198, 136, 245), // Button background color
                minimumSize: Size(260, 42), // Set width and height
                side: BorderSide(color: Colors.white, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: Text("Consultant"),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopperReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
