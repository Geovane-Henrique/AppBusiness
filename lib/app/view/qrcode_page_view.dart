import 'package:flutter/material.dart';

class QrcodePageView extends StatefulWidget {
  const QrcodePageView({super.key});

  @override
  State<QrcodePageView> createState() => _QrcodePageViewState();
}

class _QrcodePageViewState extends State<QrcodePageView> {
  @override
  Widget build(BuildContext context) {
    var screamWidth = MediaQuery.of(context).size.width;
    var screamHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(screamWidth, screamHeight * 0.07),
            child: AppBar(
              centerTitle: true,
              flexibleSpace: Center(
                child: Text("Qr code",
                    style: TextStyle(
                        fontSize: screamWidth * 0.11, color: Colors.white)),
              ),
              backgroundColor: Colors.blueAccent,
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
                    onPressed: () {},
                    child: Title(
                        color: const Color.fromARGB(255, 51, 33, 243),
                        child: Text(
                          "Scanear Qrcodes",
                          style: TextStyle(
                              fontSize: screamWidth * 0.1,
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
                        color: const Color.fromARGB(255, 18, 5, 201),
                        child: Text(
                          "Gerar Qrcode",
                          style: TextStyle(
                              fontSize: screamWidth * 0.12,
                              color: const Color.fromARGB(255, 51, 33, 243)),
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: screamWidth * 0.9,
                height: screamHeight * 0.15,
              ),
            ],
          ),
        ));
  }
}
