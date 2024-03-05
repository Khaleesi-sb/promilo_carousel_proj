import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/home_page.dart';
import 'package:promilo_flutter_project/widgets/button.dart';
import 'package:promilo_flutter_project/widgets/custom_text.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({
    super.key,
    // required this.textEditingController, required this.onChange
  });

  // final TextEditingController textEditingController;
  // final void Function(String text) onChange;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String email = '';
    String password = '';
    TextEditingController textEditingController = TextEditingController();
    bool isChecked = false;

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      textAlign: TextAlign.end,
                      text: "Please sign in to continue",
                      textColor: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  TextField(
                      controller: textEditingController,
                      onChanged: (value) {},
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'Enter Email or Mobile No.',
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: const CustomText(
                            text: "Sign in with OTP",
                            textAlign: TextAlign.end,
                            textColor: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      textAlign: TextAlign.end,
                      text: "Password",
                      textColor: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  TextField(
                      controller: textEditingController,
                      onChanged: (value) {},
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Enter password',
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            ),
                              side: const BorderSide(
                                color: Colors.black54,
                                width: 2
                              ),
                              value: isChecked,
                              onChanged: (value) {
                                /// TODO:
                              }),
                          const CustomText(
                              text: "Remember me", fontWeight: FontWeight.w400, textColor: Colors.black54,)
                        ],
                      ),
                      TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {},
                          child: const CustomText(
                            text: "Forgot Password",
                            textAlign: TextAlign.end,
                            textColor: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  )
                ],
              ),
              Button(btnText: "Submit", onClick: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
