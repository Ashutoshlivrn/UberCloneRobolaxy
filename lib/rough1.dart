import 'package:flutter/material.dart';
import 'package:uberclone/constants/colors.dart';

class thisclass extends StatefulWidget {
   thisclass({super.key , required this.text});
  String text;
  @override
  State<thisclass> createState() => _thisclassState();
}

class _thisclassState extends State<thisclass> {
  var starSelected = false;

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Container(
      height: 50,

      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: size10,
            ),
            Icon(
              Icons.location_on_outlined,
              color: Colors.red.shade700,
            ),
            Text('  ${widget.text}'),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    starSelected = !starSelected ;
                  });
                },
                icon: starSelected
                    ? Icon(Icons.star_border_outlined)
                    : Icon(Icons.star,color: yellowish,))
          ],
        ),
      ),
    );
  }
}
