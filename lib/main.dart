import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'location_screen.dart';
import 'amount_screen.dart';
import 'credit_card_screen.dart';
import 'google_pay_screen.dart';
import 'cash_on_delivery_screen.dart';
import 'payment_successful_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/8',
      routes: {
        '/': (context) => HomeScreen(),
        '/1': (context) => LoginScreen(),
        '/2': (context) => SignUpScreen(),
        '/3': (context) => LocationScreen(),
        '/4': (context) => AmountScreen(),
        '/5': (context) => CreditCardScreen(),
        '/6': (context) => GooglePayScreen(),
        '/7': (context) => CashOnDeliveryScreen(),
        '/8': (context) => PaymentSuccessfulScreen(),
      },
    );
  }
}
