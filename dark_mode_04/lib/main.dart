import 'package:flutter/material.dart';

void main() {
  runApp(const DarkMode());
}

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  Color cor1 = const Color(0XFF232323);
  Color cor2 = const Color(0xFF1B446B);
  Color cor3 = const Color(0x55214B72);
  Color cor4 = const Color(0x9935638F); //Cor do -1 (selecionado!)
  Color cor5 = const Color(0x99F9F9F9);
  //-1 para que nenhum item comece selecionado
  int selecionado = -1;
  bool darkMode = true;
  List icones = [
    Icons.lightbulb_outline_rounded,
    Icons.thermostat_rounded,
    Icons.water,
    Icons.security_rounded,
    Icons.wifi_rounded,
    Icons.tv_rounded,
  ];
  List funcoes = [
    "luzes",
    "temperatura",
    "lavadora",
    "segurança",
    "wifi",
    "televisor",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                cor1,
                cor2,
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: cor5,
                    size: 64,
                  ),
                  Column(
                    children: [
                      Text(
                        "SWEET HOME",
                        style: TextStyle(
                          fontSize: 32,
                          letterSpacing: 2,
                          color: cor5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "O que gostaria de monitorar?",
                        style: TextStyle(
                          fontSize: 16,
                          color: cor5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GridView.count(
                //Cria o grid com 2 colunas
                crossAxisCount: 2,
        
                shrinkWrap: true, //"compartilha" o espaço
                childAspectRatio:
                    1.35, //achatou o quadradinho para caber todos na tela
        
                // mainAxisSpacing: 8 e    crossAxisSpacing: 8 permite espaamentos entre os eixos orizontal e vertical                crossAxisSpacing: 8,
                mainAxisSpacing: 4, //horizontal
                crossAxisSpacing: 4, //vertical
        
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selecionado = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: index == selecionado ? cor4 : cor3,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icones[index],
                            color: cor5,
                            size: 48,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            funcoes[index],
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: cor5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    darkMode ? "DarkMode" : "Light Mode",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: cor5,
                    ),
                  ),
                  Switch(
                      activeColor: cor3,
                      value: darkMode,
                      onChanged: (value) {
                        setState(() {
                          if (darkMode) {
                            cor1 = const Color(0x5535638F);
                            cor2 = const Color(0XFFC9C9C9);
                            cor3 = const Color(0X55214B72);
                            cor4 = const Color(0X55F9F9F9);
                            cor5 = const Color(0XFF1B4468);
                            darkMode = false;
                          } else {
                            cor1 = const Color(0XFF232323);
                            cor2 = const Color(0xFF1B446B);
                            cor3 = const Color(0x55214B72);
                            cor4 = const Color(0x9935638F);                                 //Cor do -1 (selecionado!)
                            cor5 = const Color(0x99F9F9F9); 
                            darkMode = true;
                          }
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
