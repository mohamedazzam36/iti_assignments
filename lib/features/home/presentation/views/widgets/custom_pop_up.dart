import 'package:flutter/material.dart';

import 'custom_pop_up_form_field.dart';

class CustomPopUp extends StatefulWidget {
  const CustomPopUp({
    super.key,
    required this.title,
    required this.onAdd,
  });

  final String title;
  final void Function(int inputNum) onAdd;

  @override
  State<CustomPopUp> createState() => _CustomPopUpState();
}

class _CustomPopUpState extends State<CustomPopUp> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.transparent,
        child: Form(
          key: formKey,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 46),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white, width: 3),
            ),
            constraints: const BoxConstraints(maxWidth: 500, maxHeight: 250),

            child: Column(
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    height: 50,
                    child: CustomPopUpFormField(
                      controller: controller,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffc41b16),
                          padding: const EdgeInsets.symmetric(horizontal: 38),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pop(context);
                            widget.onAdd(int.parse(controller.text));
                          }
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff239892),
                          padding: const EdgeInsets.symmetric(horizontal: 38),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 222,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
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
    );
  }
}
