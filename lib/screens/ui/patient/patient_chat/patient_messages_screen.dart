import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DoctorMessageScreen extends StatefulWidget {
   DoctorMessageScreen({super.key});

  static const String routeName = 'DoctorMessageScreen';
  @override
  State<DoctorMessageScreen> createState() => _DoctorMessageScreenState();
}

class _DoctorMessageScreenState extends State<DoctorMessageScreen> {
  final messageTextController = TextEditingController();
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  String? messageText;
  
  
  @override
  void initState(){
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser() async{
    try{
      final user = _auth.currentUser;
      if(user != null){
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch(e){
      print(e);
    }
  }
  //void getMessages() async {
    //final Messages =await _firestore.collection('Messages').get();
    //for (var message in Messages.docs){
      //print (message.data());
    //}
  //}
  //void messagesStreams () async {
   //await for (var snapshot in _firestore.collection('Messages').snapshots()){
     //for(var message in snapshot.docs){
       //print (message.data());
     //}
   //}
  //}


  @override

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * .12,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: AppColors.whiteColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomArrowBack(),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset(AppAssets.circleDoctorPhoto),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.Shady Ali',
                            style: AppTextStyle.styleMedium18,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: AppColors.greenColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                 'Online',
                                style: AppTextStyle.styleRegular15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.greenColor),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.phone,
                                color: AppColors.whiteColor,
                              ))),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        StreamBuilder<QuerySnapshot>(
                          stream: _firestore.collection('Messages').orderBy('time').snapshots(),
                          builder: (context, snapshot){
                            List<MessageLine> messageWidgets = [];
                            if(!snapshot.hasData){
                              //add spinner
                            }
                            final Messages = snapshot.data!.docs.reversed;
                            for (var  message in Messages){
                              final messageText = message.get('message');
                              final messageSender = message.get('sender');
                             final currentUser = signedInUser.email;


                              final messageWidget = MessageLine(
                                  sender:messageSender ,
                                message: messageText,
                                isMe: currentUser==messageSender,);
                              messageWidgets.add(messageWidget);
                            }
                            return Expanded (
                              child: ListView(
                                reverse: true,
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                              children:messageWidgets ,
                              ),); // Row
                          }),
                        SizedBox(
                          width: width * .77,
                          child: Container(
                            height: height * .075,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, left: 10),
                              child: Row( //Row
                                children: [
                                  SizedBox(
                                    width: width * .54,
                                    child: TextField(
                                      controller: messageTextController,
                                      onChanged: (value){
                                        messageText = value ;
                                      },
                                      cursorColor: AppColors.blackTextColor,
                                      decoration: const InputDecoration(
                                          hintText: 'write a message',
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.mic,
                                    color: AppColors.greyTextColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.file_present,
                                    color: AppColors.greyTextColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: width * .15,
                          child: Container(
                            height: height * .075,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.greenColor),
                            child:  Center(
                                child: IconButton(icon: Icon(Icons.send), onPressed: () {
                                  messageTextController.clear();
                                  _firestore.collection('Messages').add({
                                    'message': messageText,
                                    'sender': signedInUser.email,
                                    'time' : FieldValue.serverTimestamp(),
                                  });
                                },
                                  //child: Icon(
                                  // Icons.send,
                                  color: AppColors.whiteColor,
                                  //size: 30,
                                ),
                                )),
                          ),

                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class MessageLine extends StatelessWidget {
  const MessageLine ({this.message,this.sender,required this.isMe, Key? key }) : super(key: key);
 final String? sender;
  final String? message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
    children: [
      Text(
        '$sender',
        style: TextStyle(fontSize: 12,color: Colors.white),
      ),
     Material(
       elevation: 5,
       borderRadius: isMe ? BorderRadius.only(
         topLeft: Radius.circular(10),
         bottomLeft:  Radius.circular(10),
         bottomRight:  Radius.circular(10),
       ) : BorderRadius.only(
         topRight: Radius.circular(10),
         bottomLeft:  Radius.circular(10),
         bottomRight:  Radius.circular(10),
       ),
      color:isMe ? AppColors.greenColor : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Text
          ('$message ',
            //'- $sender',
          style: TextStyle(fontSize: 15,color: isMe ? Colors.white : Colors.black45),
        ),
      ),
    ),
    ],
    ),
  );
  }

}