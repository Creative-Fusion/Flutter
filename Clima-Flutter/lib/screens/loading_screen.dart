
import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

 const apikey = 'cb4aba93901c1abf33102f120f088fb1';
 
 
class LoadingScreen extends StatefulWidget {
  

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {


double latitude;
double longitude;

 @override
void initState() { 
  super.initState();
   getLocation();
  
}

   Future getLocation() async{
Location location =  Location();
  await location.getCurrentLocation();

 latitude =location.latitude;
 longitude = location.longitude;


NetworkHelper networkHelper = NetworkHelper('https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apikey');

var weatherData = await NetworkHelper.getData();

Navigator.push(context, MaterialPageRoute(builder: (context){
  return LocationScreen(locationWeather : weatherData,
  );

}
),
);


  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinkitDoubleBounce(
              color: Colors.white,
              size : 50.0,
              
                ),
                ),
              );
            }
         
         }
        


 


