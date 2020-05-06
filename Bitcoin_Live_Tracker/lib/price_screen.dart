import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform; //use only platfrom class and nothing else
// import 'dart:io' hide Platform; // ? use all except platform class
import 'fetchdata.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  double bitcoinPrice;
  double ethPrice;
  double xrpPrice;

  @override
  void initState() {
    super.initState();
    updateUI(selectedCurrency);
  }

  void updateUI(String selectedCurrency) async {
    FetchData fetchData = FetchData();
    dynamic data = await fetchData.getCurrencyData(selectedCurrency);
    setState(() {
      if (data == null) {
        bitcoinPrice = 0;
        return;
      }
      selectedCurrency = selectedCurrency;
      double btcPrice = double.parse(data[0]['price']);
      bitcoinPrice = double.parse(btcPrice.toStringAsFixed(2));

      double ethPrice1 = double.parse(data[1]['price']);
      ethPrice = double.parse(ethPrice1.toStringAsFixed(2));

      double xrpPrice1 = double.parse(data[2]['price']);
      xrpPrice = double.parse(xrpPrice1.toStringAsFixed(2));
      /*   print(btcPrice.runtimeType);
      print(bitcoinPrice.runtimeType); */
    });
  }

  DropdownButton<String> androidPicker() {
    List<DropdownMenuItem<String>> dropDownItems = [];

    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      dropDownItems.add(newItem);
    }

    return DropdownButton(
      value: selectedCurrency,
      items: dropDownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          updateUI(selectedCurrency);
        });
      },
    );
  }

  CupertinoPicker iosPicker() {
    List<Text> pickerItems = [];
    //need to create empty list. don't create null cause we cannot add to null list

    for (String currency in currenciesList) {
      var newItem = Text(currency);
      pickerItems.add(newItem);
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 BTC = $bitcoinPrice $selectedCurrency',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 ETH = $ethPrice $selectedCurrency',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 XRP = $xrpPrice $selectedCurrency',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidPicker(),
          ),
        ],
      ),
    );
  }
}
