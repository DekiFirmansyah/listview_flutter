import 'package:flutter/material.dart';

class HotNews extends StatelessWidget {
  const HotNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 15,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
              'https://i.pinimg.com/564x/30/df/01/30df01af8b1b028d163d42884327df91.jpg',
              fit: BoxFit.fitWidth,
            ),
            // ignore: prefer_const_constructors
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'Timnas Garuda TC Di Eropa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'open sans',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Training Camp',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'open sans',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}