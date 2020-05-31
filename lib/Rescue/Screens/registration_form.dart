import 'package:flutter/material.dart';
import 'package:living_in_pandemic/Rescue/Screens/final_page.dart';
import 'package:living_in_pandemic/covid_tracker/widgets/dataSource.dart';
import 'package:living_in_pandemic/widgets/customText.dart';

class RegistrationForm extends StatefulWidget {
  static const routeName = "Registratiion Form";

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  Widget _buildTextForm({IconData icon, String text}) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.black,
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: text,
        // labelText: "Username",
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  String dropdownValue = 'Male';
  final maxLines = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rescue Registration Form",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              color: Colors.orange[100],
              height: 100,
              child: CustomText(
                text:
                    "Fill this registration form if you are strucked and willing to go back home..",
                color: Colors.orange[800],
                fontWeight: FontWeight.bold,
                size: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildTextForm(icon: Icons.person, text: "Full name"),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child:
                      _buildTextForm(icon: Icons.assignment_ind, text: "Age"),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'Male',
                        'Female',
                        'Others',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildTextForm(icon: Icons.person_pin, text: "Occupation"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildTextForm(
                  icon: Icons.contact_phone, text: "Contact Number"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildTextForm(
                  icon: Icons.person_pin_circle, text: "Permanent Address"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildTextForm(
                  icon: Icons.location_on, text: "Current Address"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildTextForm(
                  icon: Icons.not_listed_location, text: "Destination"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(12),
              height: maxLines * 24.0,
              child: TextField(
                maxLines: maxLines,
                decoration: InputDecoration(
                  hintText: "Describe your Problem",
                  fillColor: Colors.grey[300],
                  filled: true,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                color: primaryBlack,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, FinalPage.routeName);
                },
                child: CustomText(
                  text: "Fill ",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  size: 18,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
