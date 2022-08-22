import 'package:flutter/material.dart';
import 'package:network_requests_api/services/http_service.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "";

  void _apiGetList() {
    Network.GET(Network.API_GET, Network.paramsEmpty()).then((response) => {
          print(response),
          _showResponse(response!),
        });
  }

  void _showResponse(String response1) {
    setState(() {
      data = response1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _apiGetList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        //child: Text(data ?? "No data"),
        child: Text(
          data != null ? data : "No data",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}
