import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnify/pages/verify.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color _primaryColor = Color(0xFFE84430);
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  child: Column(
                children: [
                  Text('Log in',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                      child: Image.asset(
                    'assets/students.png',
                    height: 280,
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Text('+91'),
                  //       Icon(Icons.arrow_drop_down),

                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.7),
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('+91',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6))),
                          Icon(Icons.arrow_drop_down),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: TextFormField(
                                controller: _phoneController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    // labelText: 'Email',
                                    border: InputBorder.none,
                                    hintText: 'Phone Number',
                                    hintStyle: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: 30,
                      child: Center(child: Text('Get OTP')),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateColor.resolveWith((states) {
                          if (states.contains(MaterialState.pressed))
                            return _primaryColor.withOpacity(0.5);
                          return _primaryColor;
                        }),
                        foregroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verify(mobileNumber: _phoneController.text,))
                      );
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                        'By signing up, you agree with our Terms and conditioins',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w300)),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    ));
  }
}
