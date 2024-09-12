import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/view/cadastro_produto_view.dart';

class ProdutosView extends StatefulWidget {
  const ProdutosView({super.key});

  @override
  State<ProdutosView> createState() => _ProdutosViews();
}

class _ProdutosViews extends State<ProdutosView> {
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
                child: Text("Produtos",
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
                    onPressed: () {
                      Navigator.push(
                          (context),
                          MaterialPageRoute(
                              builder: (context) => cadastroProduto()));
                    },
                    child: Title(
                        color: const Color.fromARGB(255, 51, 33, 243),
                        child: Text(
                          "cadastrar produtos",
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
                    onPressed: () {},
                    child: Title(
                        color: const Color.fromARGB(255, 18, 5, 201),
                        child: Text(
                          "ver produtos",
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
                child: ElevatedButton(
                    onPressed: () {},
                    child: Title(
                        color: const Color.fromARGB(255, 18, 5, 201),
                        child: Text(
                          "Editar produtos",
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
                          "Deletar produtos",
                          style: TextStyle(
                              fontSize: screamWidth * 0.1,
                              color: const Color.fromARGB(255, 51, 33, 243)),
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
