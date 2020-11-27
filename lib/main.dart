import 'package:flutter/material.dart';
import 'module/contacts/contact_list_view.dart';
import 'injection/dependency_injection.dart';


void main() {
  Injector.configure(Flavor.PRO);

  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: ContactsPage(),
    )
  );
}