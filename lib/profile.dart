import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'buttom.dart';
class Profile extends StatelessWidget {
   Profile({super.key});
  final TextEditingController _phoneNumberController = TextEditingController();
  final List<String> countryCodes = ['+1', '+44', '+91', '+81', '+86']; // Add your desired country codes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
        title: Text('profile page',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,),
        ),),


      body:Row(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: 700,
              width: 300,
              child: ListView(
                children:
                [
                  ButtomList(text: 'My Account', icon: FontAwesomeIcons.user),
                  ButtomList(text: 'My Orders', icon: FontAwesomeIcons.box),
                  ButtomList(text: 'My Addresses', icon: FontAwesomeIcons.mapLocation),
                  ButtomList(text: 'Messenger', icon: FontAwesomeIcons.comment),
                  ButtomList(text: 'My Request', icon: Icons.library_books),
                  ButtomList(text: 'become vendor create account ', icon: FontAwesomeIcons.newspaper),
                  ButtomList(text: 'Log Out', icon: FontAwesomeIcons.angleRight),

                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             Text('My Account',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
                 color: Colors.black,
               ),
             ),
             SizedBox(height: 5,),
             Stack(
               children:[
                 //image viewer
                 Container(
                   height: 90,
                   width: 90,
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                     borderRadius: BorderRadius.circular(15),

                   ),
                 ),
                 //icon
                 Padding(
                   padding: const EdgeInsets.only(top: 60,right:70),
                   child: ElevatedButton(
                     onPressed: () {},

                     child: Icon(FontAwesomeIcons.pen,
                         size: 15,
                         color: Colors.white),
                     style: ElevatedButton.styleFrom(
                       shape: CircleBorder(),
                       backgroundColor: Colors.grey[300], // <-- Button color
                     ),
                   ),
                 )
               ],
             ),
             SizedBox(height: 5,),
             Text('General Information',
               style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 30,
                 color: Colors.black,
               ),
             ),
              //PART TWO
              SizedBox(height: 5,),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: Text('Name'),
                      ),
                      Container(
                        height: 38,
                        width: 330,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero, // No rounded corners
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 240),
                        child: Text('Phone number'),
                      ),
                      Container(
                        height: 38,
                        width: 330,
                        child: TextField(
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.phone,
                          decoration:  InputDecoration(
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.zero,
                               ),
                           hintText: ' phone number',
                            prefixIcon: GestureDetector(
                              onTap: () {
                                _showCountryCodePicker(context);
                              },
                              child: Icon(Icons.arrow_drop_down),
                            ),

                          ),

                          ),
                        ),
                    ],
                  ),
                ],
              ),
              SizedBox(height:20 ,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  color: Colors.black,
                ),
                width: 150,
                height: 40,
                child: MaterialButton(
                  onPressed: () {},
                  child:
                  Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),


                ),
              ),
              SizedBox(height:20 ,),
               Divider(
                color: Colors.black,
                thickness: 6,
              ),

            ],
           ) ,
          ],
         ),
       );
      }
void _showCountryCodePicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext builder) {
      return Container(
        height: 200.0,
        child: ListView.builder(
          itemCount: countryCodes.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(countryCodes[index]),
              onTap: () {
                _phoneNumberController.text = countryCodes[index];
                Navigator.pop(context);
              },
            );
          },
        ),
      );
    },
  );
}

}


//          Column(
//             children: [
//               //my account
//               Text('My Account',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//                 color: Colors.black,
//               ),
//               ),
//               SizedBox(height: 5,),
//               Stack(
//                 children:[
//                   //image viewer
//                   Container(
//                   height: 90,
//                   width: 90,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(15),
//
//                   ),
//                 ),
//                   //icon
//                   Padding(
//                     padding: const EdgeInsets.only(top: 60,right:70),
//                     child: ElevatedButton(
//                       onPressed: () {},
//
//                       child: Icon(FontAwesomeIcons.pen,
//                           size: 15,
//                           color: Colors.white),
//                       style: ElevatedButton.styleFrom(
//                         shape: CircleBorder(),
//                         backgroundColor: Colors.grey[300], // <-- Button color
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(height: 5,),
//               Padding(
//                 padding: const EdgeInsets.only(left: 100),
//                 child: Column(
//                   children: [
//                     Text('General Information',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 30,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 5,),
//               Padding(
//                 padding: const EdgeInsets.only(right: 120),
//                 child: Text('Name'),
//               ),
//               TextField(
//                 decoration:InputDecoration(
//                      label: Text('hi'),
//                 ),
//               ),
//             ],
//           ),