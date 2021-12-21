import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethereum App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ethereum App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool data = false;
  final myAddress = "0x0Ce131cB1ABf4b9676de139D9858f5CE9C337396";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ZStack([
        VxBox()
            .blue600
            .size(context.screenWidth, context.percentHeight * 30)
            .make(),
        VStack([
          (context.percentHeight * 10).heightBox,
          "Ethererum APP".text.xl4.white.bold.center.makeCentered().py16(),
          (context.percentHeight * 5).heightBox,
          VxBox(
                  child: VStack([
            "Balance".text.gray700.xl2.semiBold.makeCentered(),
            10.heightBox,
            data
                ? "\$1".text.bold.xl6.makeCentered()
                : CircularProgressIndicator().centered(),
          ]))
              .p16
              .white
              .size(context.screenWidth, context.percentHeight * 20)
              .rounded
              .shadowXl
              .make()
              .p16(),
          30.heightBox,
          HStack(
            [
              // button payment
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                icon: Icon(
                  Icons.payment_rounded,
                  size: 20.0,
                  color: Colors.white,
                ),
                label: Text(
                  'Pay',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () {},
              ),

              // button purchase
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                icon: Icon(
                  Icons.production_quantity_limits_rounded,
                  size: 20.0,
                  color: Colors.white,
                ),
                label: Text(
                  'Buy',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () {},
              ),

              // button Market place
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                icon: Icon(
                  Icons.public_rounded,
                  size: 20.0,
                  color: Colors.white,
                ),
                label: Text(
                  'Market place',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
            alignment: MainAxisAlignment.spaceAround,
            axisSize: MainAxisSize.max,
          ).p16(),
        ]),
      ]),
    );
  }
}
