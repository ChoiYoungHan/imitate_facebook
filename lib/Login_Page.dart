import 'package:flutter/material.dart';
import 'package:imitate_facebook/Home_Page.dart';

void main() {
  runApp(const Login_Page());
}

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: Colors.blueAccent,
          primaryContainer: Colors.blue,
          brightness: Brightness.light
        ),
        useMaterial3: true
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false, // 우측 상단의 리본띠 제거
      home: LoginPage()
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://source.unsplash.com/random?facebook=1',
                fit: BoxFit.cover
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
              child: Column(
                children: [
                  TextField(
                    controller: inputEmail,
                    decoration: InputDecoration(
                      hintText: '전화번호 또는 이메일 주소'
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: inputPassword,
                    decoration: InputDecoration(
                      hintText: '비밀번호'
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home_Page()));
                    },
                    child: Text('로그인'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(double.infinity, 40))
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: (){

                    },
                    child: Text('비밀번호를 잊으셨나요?')
                  )
                ]
              ),
            )
          )
        ]
      ),
    );
  }
}
