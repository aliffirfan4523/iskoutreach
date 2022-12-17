import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatefulWidget {
	@override
	_MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
	final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
Color mainColor = Color.fromARGB(255, 123, 0, 245);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			key: _scaffoldKey,
		  body: SafeArea(
		    child: SingleChildScrollView(
		      child: Container(
		      	padding: const EdgeInsets.all(0),
		      	child: Column(
		      		crossAxisAlignment: CrossAxisAlignment.start,
		      		children: [
		      			Padding(
		      				padding: const EdgeInsets.all(20),
		      				child: Row(
	                mainAxisAlignment: MainAxisAlignment.spaceBetween,
	                children: [
	                   IconButton(
	                    icon: Icon(Icons.menu_rounded),
	                    iconSize: 30,
	                    onPressed: () {
	                    	_scaffoldKey.currentState!.openDrawer();
	                    },
	                  ),
	                  Container(
	                    width: 40,
	                    height: 40,
	                    decoration: BoxDecoration(
	                      color: mainColor,
	                      borderRadius: BorderRadius.all(Radius.circular(30)),
	                    ),
	                    child: const Icon(Icons.person, color: Colors.white),
	                  ),
	                ],
		      				)
		      			),
		      			SizedBox(height: 10),
		      			Center(
		      			  child: Padding(
		              padding: const EdgeInsets.all(20.0),
		              child: Column(
		                crossAxisAlignment: CrossAxisAlignment.center,
		                children: [
		                  Text(
		                    "Selamat Datang Ke",
		                    style: GoogleFonts.montserrat(
		                      color: Colors.black,
		                      fontSize: 25,
		                    ),
		                  ),
		                  Text(
		                    " ISK Outreach",
		                    style: GoogleFonts.montserrat(
		                      color: Colors.black,
		                      fontSize: 25,
		                      fontWeight: FontWeight.w600,
		                    ),
		                  ),
		                  Text(
		                    "Have a nice day!",
		                    style: GoogleFonts.montserrat(
		                      color: Colors.grey,
		                      fontSize: 15,
		                    ),
		                  ),
		                ],
		              ),
		            ),
		      			),
		            SizedBox(height: 10),
		            Container(
		            	width: double.infinity,
		            	height: 600,
		              decoration: BoxDecoration(
		                color: mainColor,
		                borderRadius: BorderRadius.only(
		                  topLeft: Radius.circular(30),
		                  topRight: Radius.circular(30),
		                ),
		              ),
		              child: Column(
		                mainAxisAlignment: MainAxisAlignment.start,
		                children: [
		                  Text(
		                    "Total Donasi",
		                    style: GoogleFonts.montserrat(
		                      color: Colors.white,
		                      fontSize: 25,
		                    ),
		                  ),
		                  SizedBox(height: 10),
		                  Text(
		                    "RM 1000",
		                    style: GoogleFonts.montserrat(
		                      color: Colors.white,
		                      fontSize: 30,
		                      fontWeight: FontWeight.w600,
		                    ),
		                  ),
		                  SizedBox(height: 10),
		                  Text(
		                    "Dari 100 Donatur",
		                    style: GoogleFonts.montserrat(
		                      color: Colors.white,
		                      fontSize: 15,
		                    ),
		                  ),
		                ],
		              ),
		            ),
		      		],
		      	)
		      ),
		    ),
		  ),
		  drawer: Drawer(
		    child: ListView(
		      padding: EdgeInsets.zero,
		      children: <Widget>[
		        DrawerHeader(
		          child: Text('ISK Outreach'),
		          decoration: BoxDecoration(
		            color: mainColor,
		          ),
		        ),
		        ListTile(
		          title: Text('Item 1'),
		          onTap: () {
		            // Update the state of the app
		            // ...
		            // Then close the drawer
		            Navigator.pop(context);
		          },
		        ),
		        ListTile(
		          title: Text('Item 2'),
		          onTap: () {
		            // Update the state of the app
		            // ...
		            // Then close the drawer
		            Navigator.pop(context);
		          },
		        ),
		      ],
		    ),
		  ),
		);
	}
}


