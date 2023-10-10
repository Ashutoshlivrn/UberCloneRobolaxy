import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:uberclone/Phone_Verify/Phone_Verify.dart';
import 'package:uberclone/Rough.dart';
import 'package:uberclone/constants/colors.dart';

Widget Container1(BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;
  return Container(
    color: yellowish,
    height: size10 * 31.8,
    width:  double.infinity,
    child:Stack(
      children: [
        Positioned(
            top: size10 * 9,
            right: size10* 13,
            child: Container(
              height: size10 * 10,
              width: size10 * 10,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/icon/logo.png')) ),

            )
        ),

        Positioned(
            bottom: 0,
            child: Container(
              width: size10 * 40,
              height: size10 * 25,
              child: Image.asset('images/mountain1.png',fit: BoxFit.cover,),
            )),

        Positioned(
            bottom: 0,
            left:  - size10 * 5,
            child: Container(
              width: size10 * 20,
              height: size10 * 13,
              child: Image.asset('images/mountain1.png',fit: BoxFit.cover,),
            )),
        Positioned(
            bottom: 0,
            right:  0,
            child: Container(
              width: size10 * 21 ,
              height:  size10 * 16 ,
              child: Image.asset('images/mountain2.png',fit: BoxFit.fill,),
            )),
      ],
    ),
  );
}


Widget Container2(BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    height: size10 * 34,
    width:  double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          // width: 340,
           height: size10 * 4.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xff2672cb)),
          child: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook,color: Colors.white,),
                Text(
                    " Connect with Facebook",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )
                )
              ],
            ),
          ),
        ),
        SizedBox(height: size10 * 2,),
        const SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('By clicking start, you agree to our ', style: TextStyle(  fontSize: 13, color: Colors.black  )  ),
              Text("Terms and conditions", style: TextStyle( fontSize: 13,  fontWeight: FontWeight.w500, color: Colors.black  )  )
            ],
          ),
        ),
        SizedBox(height: size10 * 2.5,),

      ],
    ),
  );
}


Widget Container3(BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;
  return Padding(
    padding: EdgeInsets.only(bottom:  0),
    child: DefaultTabController(
      length: 2,
      child: Container(
        height: size10 * 34.5,
        //width: 300,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xffeeeeec),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
           color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(

          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10) ,
                  topLeft: Radius.circular(10))),
              height: size10 * 7.3,

              child:  Column(

                children: [
                  SizedBox(height: size10 * 0.8,),
                  TabBar(
                    indicatorWeight: 4.0,
                    indicatorColor: yellowish,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding:  EdgeInsets.only(left: size10 * 6.3, right: size10 * 6.3 ),
                      labelColor: Colors.black, // Selected tab text color
                      unselectedLabelColor: Colors.grey,
                    tabs: const [
                       Tab( child: Text(
                           "Sign Up",
                           style: TextStyle(
                             fontSize: 24,
                             fontWeight: FontWeight.w600,
                           )
                       ), ),

                        Tab( child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            )
                        )
                          , ),
                    ],
                  ),

                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Tab1(context),
                  Tab2(context),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Tab1(BuildContext context){

  var size10 = MediaQuery.of(context).size.height / 70;

  final TextEditingController controller = TextEditingController();
  return Column(
    children: [
      Container( height: 1.4, width: double.infinity, color: Colors.grey.shade300,),
      SizedBox(height: size10 * 4.5,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: size10  ),
       // width: size10 * 29.5,
        height: size10 * 5,
        padding:  EdgeInsets.symmetric(vertical: 5, horizontal: size10 * 1.4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black.withOpacity(0.13)),
        ),
        child: TextFormField(
          scrollPadding:  EdgeInsets.only(bottom:  MediaQuery.of(context).viewInsets.bottom ),
           decoration: InputDecoration(
               hintText: 'name@example.com',
               border: InputBorder.none
           ),
        ),
      ),
      SizedBox(height: size10 * 2.4,),
      Container(

        margin: EdgeInsets.symmetric(horizontal: size10  ),
        height: size10 * 5,
        child: Center(
          child:  Container(
            padding:  EdgeInsets.symmetric(vertical: 0, horizontal: size10 * 1.4 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black.withOpacity(0.13)),

            ),
            child: Stack(
              children: [
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  textFieldController: controller,
                  formatInput: false,
                  maxLength: 9,
                  keyboardType:
                  const  TextInputType.numberWithOptions(signed: true, decimal: true),
                  cursorColor: Colors.black,
                  inputDecoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                  ),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
                Positioned(
                  left: size10 * 9,
                  top: size10,
                  bottom: size10,
                  child: Container(
                    height: size10 * 4,
                    width: 1,
                    color: Colors.black.withOpacity(0.13),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Spacer(),
      Container(
        margin: EdgeInsets.symmetric(horizontal: size10  ),
          height: size10 * 4.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: yellowish  ),
        child: Center(
          child:  Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white
              )
          ),
        ),
      ),
      SizedBox(height: size10 * 1.5,),
    ],
  );
}

Widget Tab2( BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;
  final TextEditingController controller = TextEditingController();
  return Column(

    children: [
      Container( height: 1.5, width: double.infinity, color: Colors.grey,),
      SizedBox(height: size10 * 5,),
      Padding(
        padding:  EdgeInsets.only(left: size10 * 1.4),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Login with your phone number',style: TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.w400,
            ))),
      ),

      SizedBox(height: size10 * 2.5,),
      Container(
        margin: EdgeInsets.symmetric(horizontal: size10  ),
        height: size10 * 5,
        child: Center(
          child:  Container(
            padding:  EdgeInsets.symmetric(vertical: 0, horizontal: size10 * 1.5 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black.withOpacity(0.13)),

            ),
            child: Stack(
              children: [
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  textFieldController: controller,
                  formatInput: false,
                  maxLength: 9,
                  keyboardType:
                  const  TextInputType.numberWithOptions(signed: true, decimal: true),
                  cursorColor: Colors.black,
                  inputDecoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                  ),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
                Positioned(
                  left: size10 * 9,
                  top: size10,
                  bottom: size10,
                  child: Container(
                    height: size10 * 4,
                    width: 1,
                    color: Colors.black.withOpacity(0.13),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Spacer(),
      InkWell(
        onTap: () {
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneVerify()    ,));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size10  ),
          height: size10 * 4.8 ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: yellowish  ),
          child: Center(
            child:  Text(
                "Next",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                )
            ),
          ),
        ),
      ),
      SizedBox(height: size10 * 1.4),
    ],
  );

}
