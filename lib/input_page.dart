import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './myContainer.dart';
import './iconTextWidget.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0.0; // slider için

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YAŞAM BEKLENTİSİ",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // kolon içindeki kolonları iki yana doldurur
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  // container kalıp widget
                  child: MyContainer(), // yazdığımız widgeti kullanıyoruz
                ),
                Expanded(
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Günde kaç sigara içiyorsunuz?",
                    style:
                        (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    icilenSigara.round().toString(), // kesirli ifadeyi yuvarla
                    //"${icilenSigara.round().toString()}",
                    style: (TextStyle(
                        fontSize: icilenSigara + 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue)),
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    divisions: 30, // slider çubuğu bölme sayısı
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    }, // tetiklenecek fonksiyon
                    value: icilenSigara, // slider default pozisyonu
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "k";
                      });
                    },
                    // bu sayede container buton gibi davranır
                    renk:
                        seciliCinsiyet == "k" ? Colors.grey[400] : Colors.white,
                    //Widgeti parametre ile kullandık
                    child: IconTextWidget(
                      cinsiyet: "KADINLAR",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ), //widget parametreli
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(
                        () {
                          seciliCinsiyet = "e";
                        },
                      );
                    },
                    renk:
                        seciliCinsiyet == "e" ? Colors.grey[400] : Colors.white,
                    //Widgeti parametre ile kullandık
                    child: IconTextWidget(
                      cinsiyet: "ERKEKLER",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//container kalıp widget
