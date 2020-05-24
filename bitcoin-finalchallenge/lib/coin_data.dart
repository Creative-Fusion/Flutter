

import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];


const apiKey = '1b1050b36056bbc400278174dab29ad6';
const coinAPIURL = "https://api.nomics.com/v1/currencies/ticker?key=$apiKey&ids=BTC,ETH,XRP&interval=1d,30d";



class CoinData {
 
  Future getCoinData(String selectedCurrency) async {
    String requestURL = '$coinAPIURL&convert=$selectedCurrency';
    http.Response response = await http.get(requestURL);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      return decodedData;
      // var lastPrice = decodedData[0]['price'];
      // return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
