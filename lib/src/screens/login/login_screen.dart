import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.6, 0.8),
            colors: <Color>[
              Color(0xffF097A7),
              Color(0xffEC7088),
              Colors.white
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // const SizedBox(height: 20),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Text(
                          S.of(context).loginTitle,
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    Text(
                      S.of(context).loginSubtitle,
                      style: const TextStyle(color:Color(0xFFEBEEF5)),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xffEC7088),
                  backgroundColor: Theme.of(context).primaryColor,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  
                },
                child: Text(S.of(context).loginGoogleButton),
              ),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
