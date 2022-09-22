import 'package:flutter/material.dart';

// ignore: camel_case_types
class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  'https://i.pinimg.com/564x/41/9b/72/419b729c6b3e15a52087a447077c2b53.jpg',
                  width: 100,
                ),
              ),
              // ignore: prefer_const_constructors
              Expanded(
                flex: 4,
                child: const Text(
                  'Timnas Indonesia Raih AFF Suzuki Cup 2020 Fair Play Team Award',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'open sans',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'AFF Suzuki Cup 2020',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'open sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
