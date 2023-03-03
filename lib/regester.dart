import 'package:flutter/material.dart';

import 'LogIn.dart';


// ignore: camel_case_types
class Regester_page extends StatefulWidget {
  const Regester_page({super.key});

  @override
  State<StatefulWidget> createState() => _RegesterPage();
}

class _RegesterPage extends State<Regester_page> {
  bool obscure = true;
  static var icon = Icons.visibility_off;
    void regester(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const LoginPage();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: double.infinity,
            leading:IconButton(
                onPressed: () => regester(context),
                icon:const Icon(Icons.arrow_back),
                color: Colors.black,
            ),
            iconTheme: const IconThemeData(size: 30),
            ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "REGESTER",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Regester Now To Brows Our Hot Offers",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.6),
                            fontSize: 17,
                            fontFamily: 'ubuntu'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            labelText: "Name",
                            labelStyle: const TextStyle(fontSize: 20),
                            prefixIcon: const Icon(Icons.person),
                            //label: Text("Name",style: TextStyle(fontSize: 20),),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(Icons.email_outlined),
                            labelText: "Email",
                            labelStyle: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(Icons.lock_outline),
                            labelText: "Password",
                            labelStyle: const TextStyle(fontSize: 20),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                  icon == Icons.visibility? icon = Icons.visibility_off :icon = Icons.visibility;
                                });
                              },
                              icon: Icon(icon),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: obscure,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(Icons.phone_android_outlined),
                            labelText: "Phone",
                            labelStyle: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "REGESTER",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
