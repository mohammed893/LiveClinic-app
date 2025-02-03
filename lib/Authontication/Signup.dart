import 'package:flutter/material.dart';
import 'package:liveclinic/Authontication/login.dart';
import 'package:liveclinic/Shared/custom/custom_button.dart';
import 'package:liveclinic/Shared/custom/custom_fromfiled.dart';
import 'package:liveclinic/Shared/style/colors.dart';


class SignUp extends StatelessWidget {
  SignUp({super.key});
 final nameController = TextEditingController();
 final emailController = TextEditingController();
 final passwordController= TextEditingController();
 final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
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
                  color: clr(4),
                  border: Border.all(color: clr(1),
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
                        labelColor: clr(6),

                      ),
                      const SizedBox(height: 20,),

                      buildFormFiled(
                        label: 'Email',
                        color: Colors.grey[400],
                        radius: 25.0,
                        controller:emailController,
                        labelColor: clr(6),
                      ),
                      const SizedBox(height: 20,),

                      buildFormFiled(
                        label: 'Password',
                        color: Colors.grey[400],
                        radius: 25.0,
                        controller:passwordController,
                        suffix: Icons.visibility_off,
                        suffixPressed: (){},
                        iconColor: clr(3),
                        labelColor:clr(6),
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
                          labelColor: clr(6),
                          iconColor: clr(3),
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
                          color: clr(1),
                          textColor: clr(4),
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
