import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import 'homePage.dart';

class postIssue extends StatefulWidget {
  postIssue({Key? key}) : super(key: key);

  @override
  State<postIssue> createState() => _IssuePageState();
}

enum Domain { infrastructure, classEquipment, labEquipment, other }

class _IssuePageState extends State<postIssue> {
  Domain? _issue = Domain.infrastructure;
  double _currentSliderValue = 1;
  @override
  Widget build(BuildContext context) {
    TextEditingController _subjectIssue = TextEditingController();
    TextEditingController _subjectIssueDescription = TextEditingController();

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 9, 82),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Post your maintainance issue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Subject of the issue',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _subjectIssue,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "For Ex: Installation of classroom seating.",
                          hintStyle: const TextStyle(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Select the domain of the issue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: const Text(
                        'Infrastructue',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Radio<Domain>(
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                          return Colors.white;
                        }),
                        value: Domain.infrastructure,
                        groupValue: _issue,
                        onChanged: (Domain? value) {
                          setState(() {
                            _issue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: const Text(
                        'Class Equipment',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Radio<Domain>(
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                          return Colors.white;
                        }),
                        value: Domain.classEquipment,
                        groupValue: _issue,
                        onChanged: (Domain? value) {
                          setState(() {
                            _issue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: const Text(
                        'Lab Equipment',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Radio<Domain>(
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                          return Colors.white;
                        }),
                        value: Domain.labEquipment,
                        groupValue: _issue,
                        onChanged: (Domain? value) {
                          setState(() {
                            _issue = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: const Text(
                        'Other',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      leading: Radio<Domain>(
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                          return Colors.white;
                        }),
                        value: Domain.other,
                        groupValue: _issue,
                        onChanged: (Domain? value) {
                          setState(() {
                            _issue = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Description of the issue (in 200 words)',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      controller: _subjectIssueDescription,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText:
                          "For Ex: The wooden benchs installed 4 years ago became vulnerable due to the harsh environmental conditions.........",
                          hintStyle: const TextStyle(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height:20,
                    ),
                    const Text(
                      'Priority on a scale of 5 (Low-1, High-5)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue,
                      min: 1,
                      max: 5,
                      divisions: 5,
                      label: _currentSliderValue.round().toString(),
                      activeColor: Colors.white,
                      // inactiveColor: Colors.red,
                      thumbColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height:20,
                    ),

                    AnimatedButton(

                      height: 50,
                      width: 130,
                      text: ' Submit ',
                      isReverse: true,
                      selectedTextColor: const Color.fromARGB(255, 2, 9, 82),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      gradient: const LinearGradient(colors: [
                        Colors.white,
                        Colors.white,
                      ]),
                      borderRadius: 8,
                      borderColor: Colors.white,
                      borderWidth: 2,
                      onPress: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const homePage()));
                      },
                    ),
                  ]),
            ),
          ),
        ));
  }
}
