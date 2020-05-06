import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '082567ff76d9098447f93637d2fc1e37'; //nomics API key
const url =
    'https://api.nomics.com/v1/currencies/ticker?key=$apiKey&ids=BTC,ETH,XRP&interval=1d,30d';

class FetchData {
  Future getCurrencyData(String selectedCurrency) async {
    http.Response response = await http.get('$url&convert=$selectedCurrency');
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
