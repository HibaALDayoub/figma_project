import 'package:flutter/material.dart';

import '../../../signup/view/widgets/custom_text_form_field.dart';

class FormProfile extends StatelessWidget {
  const FormProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: "First Name",
          suffixIcon: Icons.check_circle,
          onChanged: (value) {},
        ),
        CustomTextFormField(
          labelText: "Last Name",
          suffixIcon: Icons.check_circle,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
