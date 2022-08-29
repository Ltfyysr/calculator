import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final String _title = "Calculator";
  int sonuc = 0;
  String girilenSayi = "";
  late int sayi1;
  late int sayi2;
  String secilenButton = "";
  String islemKontrol = "";


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: TextStyle(fontFamily: "Pacifico", fontSize: 30),
        ),
        leading: Icon(Icons.calculate),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    width: ekranGenisligi,
                    height: ekranYuksekligi / 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" $secilenButton ",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.grey)),
                            Text(" $sonuc", style: TextStyle(fontSize: 38))
                          ]),
                    )),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi = "0";
                                    sonuc = 0;
                                    secilenButton = "";
                                  });
                                },
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 20),
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.backspace_outlined,
                                  color: Colors.redAccent,
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "%",
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "÷",
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "7";
                                    secilenButton += "7";
                                  });
                                },
                                child: const Text("7"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "8";
                                    secilenButton += "8";
                                  });
                                },
                                child: const Text("8"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "9";
                                    secilenButton += "9";
                                  });
                                },
                                child: const Text("9"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "x",
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "4";
                                    secilenButton += "4";
                                  });
                                },
                                child: const Text("4"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "5";
                                    secilenButton += "5";
                                  });
                                },
                                child: const Text("5"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "6";
                                    secilenButton += "6";
                                  });
                                },
                                child: const Text("6"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "1";
                                    secilenButton += "1";
                                  });
                                },
                                child: const Text("1"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "2";
                                    secilenButton += "2";
                                  });
                                },
                                child: const Text("2"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "3";
                                    secilenButton += "3";
                                  });
                                },
                                child: const Text("3"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    secilenButton += "+";
                                    int ilkSayi = int.parse(girilenSayi);
                                    sayi1 = ilkSayi;
                                    girilenSayi = "0";
                                    islemKontrol = "toplama";
                                  });
                                },
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    girilenSayi += "0";
                                    secilenButton += "0";
                                  });
                                },
                                child: const Text("0"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    girilenSayi += "00";
                                    secilenButton += "00";
                                  });
                                },
                                child: const Text("00"),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(","),
                                style: ElevatedButtons.elevatedButton,
                              ),
                            ),
                            SizedBox(
                              width: ekranGenisligi / 6,
                              height: ekranYuksekligi / 16,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    int sayi2 = int.parse(girilenSayi);
                                    if (islemKontrol == "toplama") {
                                      sonuc = sayi1 + sayi2;
                                    }
                                    if (islemKontrol == "cikarma") {
                                      sonuc = sayi1 - sayi2;
                                    }
                                    if (islemKontrol == "carpma") {
                                      sonuc = sayi1 * sayi2;
                                    }
                                    if (islemKontrol == "modAlma") {
                                      sonuc = sayi1 % sayi2;
                                    }
                                    if (islemKontrol == "bolme") {
                                      sonuc = sayi1 ~/ sayi2;
                                    }
                                  });
                                },
                                child: const Text(
                                  "=",
                                  style: TextStyle(fontSize: 22),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18))),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ElevatedButtons {
  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
      primary: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(18)));
}
