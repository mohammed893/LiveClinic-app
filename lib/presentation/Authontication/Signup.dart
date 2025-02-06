// presentation/Authontication/Signup.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/components/custom_button.dart';
import 'package:telemedicine/core/components/custom_fromfiled.dart';
import 'package:telemedicine/presentation/Authontication/login.dart';


class SignUp extends StatelessWidget {
  SignUp({super.key});
 final nameController = TextEditingController();
 final emailController = TextEditingController();
 final passwordController= TextEditingController();
 final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightgrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, ),
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/profile.png',),
                width: 150,

              ),
              const Text('Welcome!',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 17,),
              Container(
                width: 350,
                height: 450,
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
                        label: 'Name',
                        color: Colors.grey[400],
                        radius: 25.0,
                        controller:nameController,
                        labelColor: Colors.black,

                      ),
                      const SizedBox(height: 20,),

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
                        labelColor: Colors.black,
                        obscure: true
                      ),
                      const SizedBox(height: 20,),

                      buildFormFiled(
                        label: 'Confirm Password',
                        color: Colors.grey[400],
                        radius: 25.0,
                        controller:confirmPassController,
                          suffix: Icons.visibility_off,
                          suffixPressed: (){},
                          labelColor: Colors.black,
                          iconColor: AppColors.teal,
                          obscure: true,
                      ),
                     const SizedBox(height: 40,),
                      buildButton(
                          width: 220,
                          function: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Login() ));
                          },
                          text: 'Sign Up',
                          color: AppColors.Blue,
                          textColor: AppColors.lightgrey,
                      ),
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
