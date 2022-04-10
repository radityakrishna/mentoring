import 'package:flutter/material.dart';
import 'package:helpkuy/screens/constants.dart';
import 'package:helpkuy/widgets/cta_container.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGOnboardingcolor,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          // top Menu
          Row(
            children: <Widget>[
              IconButton(
                  padding: EdgeInsets.only(left: 24),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Masuk',
                  style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          //text #1
          Center(
            child: Text(
                'Masuk ke akun kamu dan lihat semua proyek\nyang kamu simpan dan dukung.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'NunitoSans', fontSize: 16)),
          ),
          SizedBox(height: 32),
          //Masuk dengan Google
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/loginscreen/Google.png'),
                    SizedBox(width: 10),
                    Text(
                      'Masuk dengan Google',
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 16,
                          color: Colors.black),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, fixedSize: Size(327, 56)),
              )
            ],
          ),
          SizedBox(height: 24),
          //text #2
          Center(
            child: Text(
              '- atau -',
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 16,
                  color: Color(0XFFA0AFBD)),
            ),
          ),
          SizedBox(height: 24),
          // text #3
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Email',
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          //textfield #1
          Container(
            height: 49,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(left: 24, right: 24),
            padding: EdgeInsets.only(left: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'contoh@gmail.com',
                hintStyle: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 14,
                    color: Color(0XFFA0AFBD)),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 15),
          //text #4
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Password',
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          //textfield #2
          Container(
            height: 49,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(left: 24, right: 24),
            padding: EdgeInsets.only(left: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: '******',
                hintStyle: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 14,
                    color: Color(0XFFA0AFBD)),
                suffixIcon: Icon(Icons.visibility_off),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          //text 5
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              '*Kata sandi harus memiliki minimal 8 karakter',
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 12,
                  color: Color(0XFF4B5666)),
            ),
          ),
          SizedBox(height: 10),
          //text 6
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 24),
              child: Text(
                'Lupa password?',
                style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 12,
                    color: Color(0XFF4B5666),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 80),
          //CTA Button
          ElevatedButton(
            onPressed: () {},
            child: CTAContainer(
                text: 'Masuk',
                backgroundcolor: CTAColor1,
                textcolor: Colors.white,
                fontfamily: 'NunitoSans'),
            style: ElevatedButton.styleFrom(fixedSize: Size(327, 55)),
          ),
          SizedBox(height: 16),
          //text 6
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Belum punya akun?',
                  style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 14,
                      color: Color(0XFFA0AFBD))),
              SizedBox(width: 3),
              Text('Buat di sini',
                  style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 14,
                      color: Color(0XFF1BCAF9))),
            ],
          )
        ],
      )),
    );
  }
}
