import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DukaanController extends RxController {
  List<String> featuresOfDukaan = [
    'Custom domain name',
    'Verified seller badge',
    'Dukaan for pc',
    'priority suppot',
  ];

  List<String> subjectOfDukaan = [
    'get your own custom domain and build your brand on the internet',
    'get your own verified badge under your store name and build trust',
    'Access oil the exclusive premium features on Dukaan Pc',
    'Get your questions resolved with our priority customer support'
  ];

  List iconlistOfDukaan = <IconData>[
    Icons.web,
    Icons.verified,
    Icons.laptop,
    Icons.priority_high,
  ];
}
