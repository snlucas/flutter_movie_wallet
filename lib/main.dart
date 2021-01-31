import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MovieWallet());

class MovieWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      title: 'Movie Wallet',
      home: AuthPage(),
    );
  }
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            children: [
              // Codigo de teste de slider
              CarouselSlider(
                items: <Widget>[
                  Image.network(
                    'https://hdwallpapers.move.pk/wp-content/uploads/2015/03/awesome-blue-flowers.jpg',
                    fit: BoxFit.cover,
                    height: 1500.0,
                  ),
                ],
                options: CarouselOptions(
                  height: double.infinity,
                  autoPlay: true,
                ),
              ),
              // Fim do codigo de teste de slider
            ],
          ),
          Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.fill,
            //     image: NetworkImage(
            //         'https://hdwallpapers.move.pk/wp-content/uploads/2015/03/awesome-blue-flowers.jpg'),
            //   ),
            // ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AuthButton(
                      buttonText: 'cadastrar',
                      buttonColor: Colors.lightBlue,
                      buttonPressed: () {},
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AuthButton(
                      buttonText: 'logar',
                      buttonColor: Colors.pink[700],
                      buttonPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Function buttonPressed;

  const AuthButton({
    this.buttonText,
    this.buttonColor,
    this.buttonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonPressed,
      child: Text(
        buttonText.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => buttonColor),
      ),
    );
  }
}
