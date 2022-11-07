import 'package:flutter/material.dart';
// import 'package:tax_calculator/src/screens/home/model/taxModel.dart';

// void main() {
//   runApp(const TaxCalculator());
// }

void main() {
  runApp(
    const Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}

// class TaxCalculator extends StatelessWidget {
//   const TaxCalculator({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tax calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       home: const MyHomePage(title: 'Tax calculator'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//       child: ListView.builder(
//       itemCount: TaxModel.taxesForTest.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Text(TaxModel.taxesForTest[index].currentSum.toString());
//       },
//       ),
//     );
//   }

  // Widget buildTaxTable(TaxModel tax) {
  //   return Card(
  //     elevation: 2.0,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(10.0)),
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         children: <Widget>[
  //           Text(
  //             tax.currentSum.toString(),
  //             style: const TextStyle(
  //               fontSize: 20.0,
  //               fontWeight: FontWeight.w700,
  //               fontFamily: 'Palatino',
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

// }