import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:splash/login.dart';

void main() async { 
runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	title: 'Gaurdian Angel', 
	theme: ThemeData( 
		primarySwatch: Colors.green, 
	), 
	home: const MyHomePage(), 
	debugShowCheckedModeBanner: false, 
	); 
} 
} 

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
@override 
// ignore: library_private_types_in_public_api
_MyHomePageState createState() => _MyHomePageState(); 
} 
class _MyHomePageState extends State<MyHomePage> { 
@override 
void initState() { 
	super.initState(); 
    
	Timer(Duration(seconds: 3), 
 		()=>Navigator.pushReplacement(context, 
										MaterialPageRoute(builder: 
														(context) => 
                            LoginDemo()
														) 
									) 
		); 
} 
@override 
Widget build(BuildContext context) { 
	return Container( 
	color: Colors.white, 
  child:const Image(image: AssetImage('assets/images/flutter_logo.jpeg'))
 
	); 
} 
} 
