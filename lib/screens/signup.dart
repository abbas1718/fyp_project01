import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/components/myButton.dart';
import 'package:fyp_project/screens/loginPage.dart';
import 'package:image_picker/image_picker.dart';
import '../components/signUpTextField.dart';
import 'constants.dart';
class SignUp extends StatefulWidget {
  SignUp({Key? key,}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File? pickedImage;
  Uint8List webImage = Uint8List(8);
  final fullNameController = TextEditingController();
  final mobileNoController = TextEditingController();
  final emailController = TextEditingController();
  final locationController = TextEditingController();
  void signupUser(){}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(backgroundImage1), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    InkWell(
                        onTap: (){
                          pickImage();
                        },
                        child: pickedImage == null ? const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 100,
                            child:  Text('Upload Image')
                        )
                            : kIsWeb
                            ? Image.memory(webImage, fit: BoxFit.cover, height: 100, width: 100,)
                            : Image.file(
                          pickedImage!,
                          fit: BoxFit.fill,
                        )
                    ),
                    const SizedBox(height: 30),
                    MyTextField(hintText: 'Full Name', controller: fullNameController,keyBoardType: TextInputType.name,),
                    const SizedBox(height: 15),
                    MyTextField(hintText: 'Mobile Number', controller: mobileNoController,keyBoardType: TextInputType.phone,),
                    const SizedBox(height: 15),
                    MyTextField(hintText: 'Email', controller: emailController,keyBoardType: TextInputType.emailAddress,),
                    const SizedBox(height: 15),
                    MyTextField(hintText: 'Location', controller: locationController,keyBoardType: TextInputType.text,),
                    const SizedBox(height: 50),
                    MyButton(buttonText: 'SignUp',onTap: signupUser,),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have account ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 7),
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return LoginPage();
                              }));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    if (!kIsWeb) {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {
          pickedImage = selected;
        });
      } else {
        ('No image has been found!');
      }
    } else if (kIsWeb) {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f;
          pickedImage = File('a');
        });
      } else {
        ('No image has been found!');
      }
    } else {
      ('Something went Wrong');
    }
  }
}
