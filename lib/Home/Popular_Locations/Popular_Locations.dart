import 'package:flutter/material.dart';
import '../../constants/colors.dart';


class PopularLocations extends StatefulWidget {
   PopularLocations({super.key, required this.text});
 String text;
  @override
  State<PopularLocations> createState() => _PopularLocationsState();
}

class _PopularLocationsState extends State<PopularLocations> {
  var starSelected = false;

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 70;
    return Container(
      height: size10 * 5,

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
                icon: starSelected ? Icon(Icons.star_rounded,color: yellowish,size: 30,) : Icon(Icons.star_border_rounded,size: 30,color: Colors.grey,)
            )
          ],
        ),
      ),
    );

  }
}
