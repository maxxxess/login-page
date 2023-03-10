import 'package:cls13/Page2.dart';
import 'package:cls13/drawer/drawer.dart';
import 'package:cls13/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  bool isObsecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://scontent.fdac116-1.fna.fbcdn.net/v/t1.15752-9/307077536_680195596768833_6801881469768145217_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHDk1H8dEko1AK6Yfw717PMqBdm_vAbNVyoF2b-8Bs1XNicZJ8L-I_Umb4ZkiSzfmTOOjO-hxUT2doJ-bwjbxVz&_nc_ohc=ZF0xbvqVC3YAX8iOcrn&_nc_ht=scontent.fdac116-1.fna&oh=03_AdR1BTPes5FG_nlp8iAa2VZ4NeaFBzUw5vdKfswFeShQiQ&oe=63714A07'),
                ),
                width: double.infinity,
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                child: Column(children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.home, size: 30, color: Colors.black),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.feed_sharp, size: 30, color: Colors.black),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Feed',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.group, size: 30, color: Colors.black),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Friends',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25))
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.favorite, size: 30, color: Colors.black),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Favourites',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25))
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.settings, size: 30, color: Colors.black),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Settings',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25))
                        ],
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Divider(),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.logout, size: 30, color: Colors.black),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Logout',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25))
                        ],
                      ))
                ]),
              ),
              flex: 7,
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _scaffold.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black45,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/white-lines-and-spheres-picture-id1135638647?b=1&k=20&m=1135638647&s=170667a&w=0&h=j32QwPBMCmdX9ViKWvitis6N3l3Wl-lBEl1Ut9ImiBk='),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Expanded(
                child: Text(''),
                flex: 3,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('Create an Account',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      Text('Start your Career with us',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Mail is not given";
                          }
                          if (value.length > 30) {
                            return "Too long";
                          }
                          if (value.length < 3) {
                            return "Too Shorrt";
                          }
                        },
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Your email',
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.mail),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        obscuringCharacter: '@',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is not given";
                          }
                          if (value.length > 15) {
                            return "Too Long";
                          }
                          if (value.length < 3) {
                            return "Too Short";
                          }
                        },
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                            hintText: 'Your Password',
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            suffixIcon: IconButton(
                                onPressed: (() {
                                  setState(() {
                                    isObsecure = !isObsecure;
                                  });
                                }),
                                icon: Icon(isObsecure == false
                                    ? Icons.visibility
                                    : Icons.visibility_off))),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isObsecure,
                        obscuringCharacter: '*',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => Page2()));
                            } else {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => Page3()));
                            }
                            ;
                          },
                          child: Text('Sign Up')),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text('Already have an Account?')),
                            ElevatedButton(
                                onPressed: () {},
                                child: Container(
                                
                                  padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                                  child: Text('Login'),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex: 7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
