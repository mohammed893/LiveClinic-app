// presentation/Authontication/login.dart

import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_button.dart';
import 'package:telemedicine/core/apptheme/components/custom_fromfiled.dart';

class Login extends StatelessWidget {
   Login({super.key});
   final emailController = TextEditingController();
   final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.lightgrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, ),
          child: Column(
            children: [
            const Image(image: AssetImage('assets/images/profile.png'),
              width: 150,
            ),
              const Text('Welcome back!',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 12,),
              Container(
                width: 350,
                height: 330,
                decoration: BoxDecoration(
                    color: AppColors.lightgrey,
                    border: Border.all(color: AppColors.Blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      buildFormFiled(
                        label: 'Email',
                        color: Colors.grey[400],
                        radius: 25.0,
                        controller:emailController,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(height: 20,),

                      buildFormFiled(
                          label: 'Password',
                          color: Colors.grey[400],
                          radius: 25.0,
                          controller:passwordController,
                          suffix: Icons.visibility_off,
                          suffixPressed: (){},
                          iconColor: AppColors.teal,
                          labelColor:Colors.black,
                          obscure: true
                      ),
                      const SizedBox(height: 40,),
                      buildButton(
                        width: 250,
                        function: (){},
                        text: 'Log In',
                        color: AppColors.Blue,
                        textColor: AppColors.lightgrey,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            onPressed: (){},
                            style: TextButton.styleFrom(
                              foregroundColor:  AppColors.teal,
                            ),
                            child:const Text('Forgot password?')),
                      )
                    ],

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
