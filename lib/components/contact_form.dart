import 'package:flutter/material.dart';
import 'package:portfolio_app/utils.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Get In Touch With Me',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: Utils.isMobile(context)
              ? Utils.mdqw(context) * 0.85
              : Utils.mdqw(context) / 2,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFC4ACA1),
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(
                      color: Color(0xFF4756DF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: Color(0xFF4756DF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  const Text(
                    'Message',
                    style: TextStyle(
                      color: Color(0xFF4756DF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      minLines: 10,
                      maxLines: 15,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Message',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10.0)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
