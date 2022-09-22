import 'package:flutter/material.dart';

Container ShearIcon() {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: Colors.white),
    child: Icon(
      Icons.share_outlined,
      color: Colors.black,
    ),
  );
}

Container SearchIcon() {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: Colors.white),
    child: Icon(
      Icons.search,
      color: Colors.black,
    ),
  );
}
Container backbuton(context,) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: Colors.white),
    child: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    ),
  );
}
