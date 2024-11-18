import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectBankController extends GetxController {
  final List bankList = [
    {
      "text": "MCB",
      "color": Colors.pink.shade200,
    },
    {
      "text": "Afalah",
      "color": Colors.purple.shade200,
    },
    {
      "text": "Soneri",
      "color": Colors.blue.shade200,
    },
    {
      "text": "BOP",
      "color": Colors.green.shade200,
    },
    {
      "text": "HBL",
      "color": Color.fromARGB(255, 151, 131, 231),
    },
    {
      "text": "UBL",
      "color": Colors.purple.shade100,
    },
    {
      "text": "JazzCash",
      "color": Colors.blue.shade100,
    },
    {
      "text": "EasyPaisa",
      "color": Colors.pink.shade100,
    },
    {
      "text": "MobiCash",
      "color": Colors.green.shade100,
    },
    {
      "text": "Payoneer",
      "color": Colors.cyan.shade100,
    },
    {
      "text": "PayPal",
      "color": Colors.brown.shade100,
    },
    {
      "text": "Stripe",
      "color": Colors.yellow.shade100,
    },
  ];
}
