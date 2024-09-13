import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/view/produtos_view.dart';
import 'package:flutter_application_1/app/view/qrcode_page_view.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    var screamWidth = MediaQuery.of(context).size.width;
    var screamHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screamWidth, screamHeight * 0.07),
          child: AppBar(
            title: Center(
              child: Text("Business manager",
                  style: TextStyle(
                      fontSize: screamWidth * 0.09, color: Colors.white)),
            ),
            backgroundColor: Colors.amber,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screamWidth * 0.9,
              height: screamHeight * 0.15,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QrcodePageView()));
                  },
                  child: Title(
                      color: Colors.blue,
                      child: Text(
                        "Qrcode",
                        style: TextStyle(
                            fontSize: screamWidth * 0.18,
                            color: const Color.fromARGB(255, 51, 33, 243)),
                      ))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: screamWidth * 0.9,
              height: screamHeight * 0.15,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Title(
                      color: Colors.blue,
                      child: Text(
                        "Codigo de barras",
                        style: TextStyle(
                            fontSize: screamWidth * 0.09,
                            color: const Color.fromARGB(255, 51, 33, 243)),
                      ))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: screamWidth * 0.9,
                height: screamHeight * 0.15,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProdutosView()));
                  },
                  child: Title(
                    color: Colors.blue,
                    child: Text(
                      "Produtos",
                      style: TextStyle(
                          fontSize: screamWidth * 0.18,
                          color: const Color.fromARGB(255, 51, 33, 243)),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
