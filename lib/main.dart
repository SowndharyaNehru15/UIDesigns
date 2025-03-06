import 'package:loginscreen/utils/utils.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Page',
      theme: ThemeData(
        
        useMaterial3: true,
      ),
      home:const UIScreenFirst(),
      
     
    );
  }
}

