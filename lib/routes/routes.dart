import 'package:flutter/material.dart';

class PageRouting{
  static goToNextPage({}) {
    return Navigator.of(context).push(MaterialPageRoute(builder: (context) =>));
}
}