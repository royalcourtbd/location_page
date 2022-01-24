import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  var locationImage = 'assets/images/illustration.png';
  String dropDownValue = ' Adabor';
  final dropDownItemList = [
    'Adabor',
    'Badda',
    'Banani',
    'Bangshal',
    'Bimanbandar',
    'Cantonment',
    'Chalkbazar',
    'Demra',
    'Dhanmondi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(locationImage),
              SizedBox(
                height: 40,
              ),
              Text(
                'Select Your Location',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gilroy',
                    fontStyle: FontStyle.normal,
                    color: Color(0xff181725)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 324,
                height: 57,
                child: Text(
                  'Swithch on your location to stay in tune with what’s happening in your area ',
                  style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 89,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Zone',
                  style: TextStyle(
                    color: Color(
                      0xff7C7C7C,
                    ),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // DropdownButton(
                //   value: dropDownValue,
                //   items: dropDownItemList
                //       .map<DropdownMenuItem<String>>((String value) {
                //     return DropdownMenuItem<String>(
                //         value: value, child: Text(''));
                //   }).toList(),
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropDownValue = newValue.toString();
                //     });
                //   },
                // ),

                DropdownButton(
                    value: dropDownValue,
                    items: dropDownItemList.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    selectedItemBuilder: (context) {
                      return dropDownItemList.map<Widget>((String item) {
                        return Text(item);
                      }).toList();
                    },
                    onChanged: (String? string) => dropDownValue = string!),

                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(360, 60)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xff53B175),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFF9FF)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
