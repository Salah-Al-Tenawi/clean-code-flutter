import 'package:cleanarchitecture/core/them/color_app.dart';
import 'package:cleanarchitecture/core/utils/custom_text_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.scoundryColor,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 90),
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CircleAvatar(
            maxRadius: 60,
          ),
          CustomTextformfild(
            title: "email",
          ),
          CustomTextformfild(
            title: "password",
          ),
        ],
      ),
    );
  }
}
