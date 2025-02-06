// presentation/patient/chatbot.dart/chatbotscreen.dart

import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/assets.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:telemedicine/data/models/botchatmodel.dart';
import 'package:telemedicine/presentation/cubit/cubit.dart';
import 'package:telemedicine/presentation/patient/patienthome/patient_home.dart';  

class Chatbotscreen extends StatelessWidget {
   Chatbotscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = ClinicCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: ChatBotIcons(Assets.Menu),
          ),
        ],
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context , MaterialPageRoute(builder:(context)=> PatientHome()));
            cubit.changeBottomNav(0);    // returns buttomm navigation bar to the home
          }, 
          icon: ChatBotIcons(Assets.back),
          ) ,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  backgroundColor: AppColors.lightgrey,
                  radius: 20,
                  backgroundImage: AssetImage(Assets.Vector),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'chatbot',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: CircleAvatar(
                            backgroundColor: AppColors.teal,
                            radius: 5,
                          ),
                        ),
                        Text(
                          'Always active',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              itemBuilder: (context, index) {
                return messageBubble(messages[index], context);
              },
            ),
          ),
          typingbar(),
        ],
      ),
    );
  }

  Widget messageBubble(ChatMessage message, BuildContext context) {
    bool isFromMe = message.isMessageFromMe;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Align(
        alignment: isFromMe ? Alignment.centerRight : Alignment.centerLeft,
        child: BubbleNormal(
          text: message.messageContent,
          isSender: isFromMe,
          color: isFromMe ? AppColors.LightBlue : AppColors.lightgrey,
          tail: true,  
          textStyle: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }

  Widget typingbar() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.bottomStart,
              color: AppColors.white,
              child: TextField(
                cursorHeight: 100,
                decoration: InputDecoration(
                  hintText: "Type a message...",
                  hintStyle: TextStyle(
                    color: Colors.grey ,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide( color: Colors.grey),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  // make the switch clickable and add logic later
                  suffixIcon: ImageIcon(AssetImage(Assets.switchh ,), color: AppColors.Blue,),
                ),
             // controller: ,
            ),
            ),
          ),
            SizedBox(width: 20,),
           GestureDetector(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.Blue,
                    backgroundImage: AssetImage(Assets.send), // make it clickable
                  ),
                 ),
        ],
      ),

    );
  }
  Widget  ChatBotIcons(
     // add an onclick function
     String icon
     ){
    return GestureDetector(
      child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color:AppColors.lightgrey,
                    width: 1,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: 10,
                  child: ImageIcon(AssetImage(icon), color: AppColors.Gray,)),
              ),
              onTap: (){}, // add onclick function from viewmodel later
    );
  }
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, my Botty :)", isMessageFromMe: true),
  ChatMessage(messageContent: "Hi!", isMessageFromMe: false),
  ChatMessage(messageContent: "How can I help you?", isMessageFromMe: false),
  ChatMessage(messageContent: "I need to find a doctor.", isMessageFromMe: true),
  ChatMessage(messageContent: "-----------", isMessageFromMe: false),
  ChatMessage(messageContent: "--------", isMessageFromMe: false),
  ChatMessage(messageContent: "--", isMessageFromMe: true),
  ChatMessage(messageContent: "--------", isMessageFromMe: false),
  ChatMessage(messageContent: "----------------------------------------------------", isMessageFromMe: true),
];