import 'package:http/http.dart' as http;
import 'dart:convert';

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

//const apiKey='C84CE908-EEA2-423E-BD9D-E62B9E02BEDF';
const apiKey='58E74F02-63F3-433B-BB83-4A6A40F8C8E8';
const coinapiURL='https://rest.coinapi.io/v1/exchangerate';

class CoinData{
  Future getCoinData(String selectedCurrency) async{

    Map<String,String> cryptoData={};

    for(String crypto in cryptoList) {
      String url='$coinapiURL/$crypto/$selectedCurrency?apikey=$apiKey';

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        cryptoData[crypto]=data['rate'].toStringAsFixed(0);
      } else {
        print(response.statusCode);
      }
    }
    return cryptoData;
  }
}