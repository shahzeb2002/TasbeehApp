import 'package:flutter/material.dart';
import 'package:tasbeeh_app/pages/tasbeeh_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  void signIn(){
    String email=emailController.text;
    String password=passwordController.text;
    if(email.isNotEmpty && password.isNotEmpty ){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TasbeehPage(),));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter email and Password")));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign in'),
            SizedBox(height: 20,),
            TextField(

              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue.shade100,
                hintText:'Enter ur emial',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue,width: 0)
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(

              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  hintText:'Enter ur password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue,width: 0)
                  )
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: signIn, child: Text('Sign In')),
            TextButton(onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
            }, child: Text('Dont have an account'))

          ],
        ),
      ),
    );
  }
}
