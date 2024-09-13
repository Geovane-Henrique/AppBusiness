import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class cadastroProduto extends StatefulWidget {
  const cadastroProduto({super.key});

  @override
  State<cadastroProduto> createState() => _cadastroProdutoState();
}

class _cadastroProdutoState extends State<cadastroProduto> {
  final TextEditingController nomeProduto = TextEditingController();
  final TextEditingController valorProduto = TextEditingController();
  final TextEditingController validade = TextEditingController();
  final TextEditingController codbarr = TextEditingController();
  final TextEditingController qrcode = TextEditingController();
  @override
  String codbarrResult = "nenhum codigo escaneadooo";
  String qrcodeResult = "nenhum codigo escaneadooo";

  Future<void> scanBarcode() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // Cor da linha do scanner
      'Cancelar', // Texto do botão de cancelar
      true, // Mostra o ícone de flash
      ScanMode.BARCODE, // Modo para escanear QR Code ou código de barras
    );

    if (barcodeScanRes != '-1') {
      setState(() {
        codbarrResult = barcodeScanRes;
      });
    }
  }

  Future<void> scanQRcode() async {
    String qrcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // Cor da linha do scanner
      'Cancelar', // Texto do botão de cancelar
      true, // Mostra o ícone de flash
      ScanMode.QR, // Modo para escanear QR Code ou código de barras
    );

    if (qrcodeScanRes != '-1') {
      setState(() {
        qrcodeResult = qrcodeScanRes;
      });
    }
  }

  Widget build(BuildContext context) {
    var screamWidth = MediaQuery.of(context).size.width;
    var screamHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screamWidth, screamHeight * 0.07),
          child: Center(
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 15, 15, 136),
              flexibleSpace: Center(
                child: Text(
                  "Cadastro ",
                  style: TextStyle(
                      fontSize: screamWidth * 0.12, color: Colors.white),
                ),
              ),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screamWidth * 0.98,
              child: TextFormField(
                  controller: nomeProduto,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 243, 255, 6),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 243, 255, 6))),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 243, 255, 6)),
                      ),
                      labelText: " nome produto")),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: screamWidth * 0.98,
              child: TextFormField(
                  controller: nomeProduto,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 243, 255, 6),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 243, 255, 6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 243, 255, 6),
                        ),
                      ),
                      labelText: "Valor do produto")),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: screamWidth * 0.98,
              child: TextFormField(
                  controller: nomeProduto,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 243, 255, 6),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 243, 255, 6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 243, 255, 6),
                        ),
                      ),
                      labelText: "validade")),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  scanBarcode();
                },
                child: Text(
                  "coloque o codigo",
                  style: TextStyle(fontSize: 30),
                )),
            Text("$codbarrResult"),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  scanQRcode();
                },
                child: Text(
                  "coloque o codigo",
                  style: TextStyle(fontSize: 30),
                )),
            Text(
              "$qrcodeResult",
            ),
            ElevatedButton(onPressed: () {}, child: Text("cadastrar"))
          ],
        ),
      ),
    );
  }
}
