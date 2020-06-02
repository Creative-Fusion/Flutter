
import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;


/*
    Terms used while importing librabries:
    as: renames the entire package to give it a name.
    show: incorporates only required file from the package.
    hide: use all the files except for the hidden file.
*/


class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency='AUD';

  DropdownButton<String> androidDropdown(){

    List <DropdownMenuItem<String>> dropdownItems= [];

    for(String currency in currenciesList){
      var newItem= DropdownMenuItem(
        child: Text(
          currency,
        ),
        value: currency,
      );

      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: '$selectedCurrency',
      items: dropdownItems,
      onChanged: (value) async{
        setState(() {
        selectedCurrency=value;
        getData();
        });
      },
    );
  }

  CupertinoPicker iOSPicker(){
    List<Text> pickerItems=[];
    for(String currency in currenciesList){
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex){
        setState(() {
          selectedCurrency=currenciesList[selectedIndex];
          getData();
        });
      },
      children: pickerItems,
    );
  }

  String bitcoinValue='?';
  bool isWaiting=false;

  Map<String,String> cryptoData={};
  void getData() async{
    isWaiting=true;
    CoinData coinData=CoinData();
    try {
      var data = await coinData.getCoinData(selectedCurrency);
      isWaiting=false;

      setState(() {
        cryptoData = data;
      });
    } catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Column createCards(){
    List <CryptoCard> cards=[];

    for(String crypto in cryptoList) {
      cards.add(
          CryptoCard(
              value: isWaiting ? '?' :cryptoData[crypto],
              selectedCurrency: selectedCurrency,
              cryptoCurrency: crypto
          )
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cards,
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
          createCards(),

          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    Key key,
    @required this.value,
    @required this.selectedCurrency,
    @required this.cryptoCurrency,
  }) : super(key: key);

  final String value;
  final String selectedCurrency;
  final String cryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoCurrency = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
