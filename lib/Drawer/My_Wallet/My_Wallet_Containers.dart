
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:uberclone/Drawer/My_Wallet/My_Wallet.dart';

import '../../constants/colors.dart';



Widget walletContainer1(BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;
  Widget BackButton(){
    return Transform.translate(offset: Offset(-5, 0),child: IconButton(
      icon: Icon(Icons.arrow_back_ios_rounded,color: white70,) ,
      onPressed: () {
        Navigator.of(context).pop();
      },
    ), );
  }

  Widget CashAmountContainer(){
    return Container(
      height: size10 * 3.4,
      width: size10 * 10,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20)
            
      ),
      child: Row(
        children: [
          SizedBox(width: size10,),
          Container(
            height: 20,
            width: 20,
            child: Center(
              child: Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage('images/icon/coin.jpg'))),

              ),
            ),
          ),
          SizedBox(width: 5,),
          Text(
              "2500",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: white70
              )
          ),
          SizedBox(width: size10,),
        ],
      ),
    );

  }

  return Container(
    color: yellowish,
    height: size10 * 29,
    width:  double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(height:  size10 * 3.5,),
          BackButton(),
          SizedBox(height:  size10 * 2,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                    "My Wallet",
                    style: TextStyle(
                      color: white70,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    )
                ),
                Spacer(),
                CashAmountContainer()
              ],
            ),
          )
      ],
    ),
  );
}



Widget walletContainer2(BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;

  Widget tileContainer( String title, String trailingText){
    return Container(
      color: Colors.white,
      height: 43,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: size10,),
          Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              )
          ),
          Spacer(),
          Text(trailingText,  style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          )),
          const SizedBox(width: 5,),
          const Icon(Icons.arrow_forward_ios_rounded,size: 16,color: Colors.grey,),
          SizedBox(width: size10,),
        ],
      ),
    );

  }

  return Container(
    height: size10 * 38,
    width:  double.infinity,
    color: Colors.grey.shade100,
    child: Column(
      children: [
        SizedBox(height:  size10 * 15,),
        InkWell(
          onTap: () {},
          child: tileContainer('Payment Methods', ''),
        ),
        SizedBox(height: size10 * 3,),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              InkWell(child: tileContainer('Coupon', '3') ,onTap: () {} ,),
              Center(child: Container(height: 0.5,width: 70,color: Colors.black54,),),
              InkWell(child: tileContainer('Integral Mall', '4500') ,onTap: () {} ,)
            ],
          ),
        ),


      ],
    ),
  );
}


Widget walletContainer3(BuildContext context){
  var size10 = MediaQuery.of(context).size.height / 70;
  return MyWallet();

}



class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}
class _MyWalletState extends State<MyWallet> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    var size10 = MediaQuery.of(context).size.height / 70;

    Container buildDots(int index, BuildContext context) {
      return Container(
        height: size10 * 0.8,
        width: currentIndex == index ? size10 * 0.8  : size10 * 0.8 ,
        margin: EdgeInsets.symmetric(horizontal: 1.6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: currentIndex == index ? yellowish : Colors.grey.shade300,
        ),
      );
    }
    return Container(
      height: size10 * 26,

      child: Column(
          children: [

            Container(

              height: size10 * 23,
              width: size10 * 34,
              child: Swiper(
                itemCount: 4,
                itemWidth: size10 * 31,
                itemHeight: size10 * 18,
                loop: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
                onIndexChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                layout: SwiperLayout.STACK,
              ),
            ),
            Container(
              height: size10 + 2,
              width:  size10 * 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    4, (index) => buildDots(index, context)),
              ),
            ),
          ]
      ),
    );
  }
}

