import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  // Oluşturduğumuz Widget
  final Color? renk;
  final Widget? child;
  final Function()? onPress;    //dışarıdan container e GestureDetector ile fonk atıyoruz

  MyContainer({this.renk = Colors.white, this.child, this.onPress = null});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,     //Container GestureDetector ile sarıldı
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: renk, // dışarıdan gelen rengi alacak
        ),
      ),
    );
  }
}
