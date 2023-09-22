import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Verify extends StatefulWidget {
  String mobileNumber;
  Verify({super.key, required this.mobileNumber});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  Color _primaryColor = Color(0xFFE84430);
  // TextEditingController _phoneController = TextEditingController();
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
                  Text('OTP Verify',
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
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Text('+91'),
                  //       Icon(Icons.arrow_drop_down),

                  //     ],
                  //   ),
                  // ),
                  Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text('OTP Sent to',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                            Text('+91 ${widget.mobileNumber}',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: PinCodeTextField(
                              
                              pinBoxRadius: 20,
                              pinBoxWidth:
                                  MediaQuery.of(context).size.width * 0.2,
                              pinBoxHeight: 55,
                              maxLength: 4,
                              pinBoxBorderWidth: 1,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: 30,
                      child: Center(child: Text('Verify OTP')),
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
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'Your details has been successfully submitted',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.green,
                        duration: Duration(
                            seconds: 5), // Adjust the duration as needed
                      ));
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
