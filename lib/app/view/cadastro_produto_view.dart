import 'package:flutter/material.dart';

class cadastroProduto extends StatefulWidget {
  const cadastroProduto({super.key});

  @override
  State<cadastroProduto> createState() => _cadastroProdutoState();
}

class _cadastroProdutoState extends State<cadastroProduto> {
  @override
  Widget build(BuildContext context) {
    var screamWidth = MediaQuery.of(context).size.width;
    var screamHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screamWidth, screamHeight * 0.07),
          child: Center(
            child: AppBar(
              backgroundColor: Colors.blueGrey,
              flexibleSpace: Center(
                child: Text(
                  "Cadastro ",
                  style: TextStyle(
                      fontSize: screamWidth * 0.12, color: Colors.white),
                ),
              ),
            ),
          )),
    );
  }
}
