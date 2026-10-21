import 'package:flutter/material.dart';

void main() {
runApp(const SgMoneyApp());
}

class SgMoneyApp extends StatelessWidget {
const SgMoneyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'SG MONEY',
debugShowCheckedModeBanner: false,
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(
seedColor: const Color(0xFF123C73),
),
useMaterial3: true,
),
home: const HomeScreen(),
);
}
}

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'SG MONEY',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.white,
),
),
backgroundColor: const Color(0xFF123C73),
),
body: Center(
child: SingleChildScrollView(
padding: const EdgeInsets.all(24),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Icon(
Icons.account_balance_wallet,
size: 90,
color: Color(0xFF123C73),
),
const SizedBox(height: 20),
const Text(
'Bienvenue sur SG MONEY',
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 26,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 12),
const Text(
'Votre argent, vos paiements, votre liberté.',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 16),
),
const SizedBox(height: 30),
_menuButton(
context,
'Mon portefeuille',
Icons.account_balance_wallet,
),
_menuButton(
context,
'Envoyer de l’argent',
Icons.send,
),
_menuButton(
context,
'Payer par QR',
Icons.qr_code_scanner,
),
_menuButton(
context,
'SG MONEY CARD',
Icons.credit_card,
),
_menuButton(
context,
'Historique des opérations',
Icons.history,
),
const SizedBox(height: 20),
const Text(
'CDF • USD',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Color(0xFF123C73),
),
),
],
),
),
),
);
}

Widget _menuButton(
BuildContext context,
String title,
IconData icon,
) {
return Padding(
padding: const EdgeInsets.only(bottom: 12),
child: SizedBox(
width: double.infinity,
child: OutlinedButton.icon(
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text(
'$title : fonctionnalité en préparation.',
),
),
);
},
icon: Icon(icon),
label: Padding(
padding: const EdgeInsets.all(12),
child: Text(title),
),
),
),
);
}
}
