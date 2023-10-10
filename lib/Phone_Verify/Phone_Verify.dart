import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:uberclone/Home/Home.dart';
import '../constants/colors.dart';


class PhoneVerify extends StatefulWidget {
  const PhoneVerify({super.key});

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  TextEditingController controller = TextEditingController();
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Scaffold(
      body: Column(
        children: [
          //top bar
          Container(
            color: yellowish,
            height: size10 * 22,
            width: double.infinity,
           child:  Container(
             padding: EdgeInsets.all(20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 25,),
                 Transform.translate(
                   offset: Offset(-15, 0),
                   child: IconButton(onPressed: () {
                     Navigator.pop(context);
                   }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)
                   ),
                 ),
                 SizedBox(height: 10,),
                 const Text(
                     "Phone Verification",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 34,
                       fontWeight: FontWeight.w700,
                     )
                 ),
                 SizedBox(height: 10,),
                 Text(
                     "Enter your OTP code here",
                     style: TextStyle(
                       color: white70,
                       fontSize: 17,
                       fontWeight: FontWeight.w400,
                     )
                 )
               ],
             ),
           ),
          ),
          SizedBox(height: size10 * 7,),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: size10 * 2.3 ),
            child:

            PinCodeTextField(
              keyboardType: TextInputType.number,
              appContext: context,
              length:4,
              controller: controller,
              cursorHeight: 25,
            cursorColor: Colors.black,
            //  enableActiveFill: true,
              textStyle: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              hintCharacter: '0',
              hintStyle: TextStyle(color: Colors.grey.shade300),
              pinTheme: PinTheme(
                activeColor: yellowish,
                shape: PinCodeFieldShape.box,
                fieldWidth: 70,
                fieldHeight: 70,
                inactiveColor: Colors.grey.shade200,
                selectedColor: yellowish,
                activeFillColor:yellowish,
                selectedFillColor: yellowish,
                inactiveFillColor: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),


              ),

            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()  ,));
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: size10),
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xfff1ad00)),
              child: const Center(
                child: Text(
                    "Verify Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,)

        ],
      ),
    );
  }
}
