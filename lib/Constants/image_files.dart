import 'package:flutter/material.dart';

final sliderImages = [
  Container(
    width: double.infinity,
    height: double.infinity,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Image.asset("images/image01.png", fit: BoxFit.cover),
    ),
  ),
  Container(
    width: double.infinity,
    height: double.infinity,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Image.asset("images/image02.jpg", fit: BoxFit.cover),
    ),
  ),
  Container(
    width: double.infinity,
    height: double.infinity,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Image.asset("images/image03.jpg", fit: BoxFit.cover),
    ),
  ),
  Container(
    width: double.infinity,
    height: double.infinity,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Image.asset("images/image04.jpg", fit: BoxFit.cover),
    ),
  ),
];
