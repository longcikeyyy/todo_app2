import 'package:flutter/material.dart';
import 'package:todo_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Image.asset('assets/images/shape.png')),
          Text('Hello, World!'),
        ],
      ),
    );
  }
}

class ExampleWidgetSecond extends StatefulWidget {
  final String text;
  const ExampleWidgetSecond({super.key, required this.text});

  @override
  State<ExampleWidgetSecond> createState() => _ExampleWidgetSecondState();
}

class _ExampleWidgetSecondState extends State<ExampleWidgetSecond> {
  bool isLoading = false;
  int count = 0;
  TextEditingController textController = TextEditingController();

  // only call once time when widget is created
  @override
  void initState() {
    isLoading = true;
    _loadData();
    super.initState();
  }

  /// asynchorize function
  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title'), backgroundColor: Colors.amber),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                count++;
                debugPrint('Count: $count');
              });
            },
            child: Container(width: 100, height: 100, color: Colors.white),
          ),
          // const Spacer(flex: 2),
          // Flexible(
          //   child: Text(
          //     'Count: $count',
          //     style: TextStyle(
          //       fontFamily: 'Poppins',
          //       fontSize: 18,
          //       fontWeight: FontWeight.w600,
          //       color: Color(0xFF000000).withValues(alpha: 0.75),
          //     ),
          //   ),
          // ),
          // const Spacer(),
          Image.asset('assets/images/shape.png'),
          const SizedBox(height: 36),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Text: ndahg dasd has;d asdh asdh asdh sadlgh sadh asldh saldghasld hasghd asdgh alsdhg asgh',
                ),
              ),
              Text(
                'Text: ndahg dasdasgh',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          // Text('Text: ndahg dasdasgh'),
          // Container(
          //   width: 100,
          //   height: 100,
          //   margin: EdgeInsets.only(top: 20, bottom: 50),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     borderRadius: BorderRadius.circular(10),
          //     border: Border.all(color: Colors.black, width: 4),
          //   ),
          //   child: Text('Text: ndahg dasdasgh'),
          // ),
          Text('Text: ndahg dasdasgh'),
          // SizedBox(height: 500),
          // Flexible(
          //   // height: 300,
          //   child: ListView(
          //     children: [
          //       Text('Text: ndahg dasdasgh'),
          //       Text('Text: ndahg dasdasgh'),
          //       Text('Text: ndahg dasdasgh'),
          //       Container(
          //         width: 100,
          //         height: 100,
          //         margin: EdgeInsets.only(top: 20, bottom: 50),
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.circular(10),
          //           border: Border.all(color: Colors.black, width: 4),
          //         ),
          //         child: Text('Text: ndahg dasdasgh'),
          //       ),
          //       Text('Text: ndahg dasdasgh'),
          //       Text('Text: ndahg dasdasgh'),
          //       Container(
          //         width: 100,
          //         height: 100,
          //         margin: EdgeInsets.only(top: 20, bottom: 50),
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.circular(10),
          //           border: Border.all(color: Colors.black, width: 4),
          //         ),
          //         child: Text('Text: ndahg dasdasgh'),
          //       ),
          //       Text('Text: ndahg dasdasgh'),
          //       Text('Text: ndahg dasdasgh'),
          //       Container(
          //         width: 100,
          //         height: 100,
          //         margin: EdgeInsets.only(top: 20, bottom: 50),
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.circular(10),
          //           border: Border.all(color: Colors.black, width: 4),
          //         ),
          //         child: Text('Text: ndahg dasdasgh'),
          //       ),
          //       Text('Text: ndahg dasdasgh'),
          //     ],
          //   ),
          // ),
          // Flexible(
          //   //// Lazy Loading list -> load data when user scroll to the end of the list
          //   child: ListView.builder(
          //     itemCount: 100,
          //     itemBuilder: (context, index) {
          //       return Text(
          //         'Text: ndahg dasdasgh $index',
          //         style: TextStyle(
          //           fontSize: 18,
          //           color: index % 2 == 0 ? Colors.black : Colors.red,
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // Flexible(
          //   //// Lazy Loading list -> load data when user scroll to the end of the list
          //   child: ListView.separated(
          //     itemCount: 100,
          //     separatorBuilder: (context, index) {
          //       return SizedBox(height: 20);
          //     },
          //     itemBuilder: (context, index) {
          //       return Text(
          //         'Text: ndahg dasdasgh $index',
          //         style: TextStyle(
          //           fontSize: 18,
          //           color: index % 2 == 0 ? Colors.black : Colors.red,
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Stack(
            children: [
              Container(width: 200, height: 200, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.blue),
              Positioned(
                // top: ,
                left: 50,
                // right: 0,
                bottom: 10,
                child: Container(width: 50, height: 50, color: Colors.green),
              ),
            ],
          ),
          // Text('Text: ndahg dasdasgh'),
          // SizedBox(height: 10),
          // Text('Text: ndahg dasdasgh'),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant ExampleWidgetSecond oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  /// Giải phóng tài nguyên, bộ nhớ
  /// dispose controller widget, textController, Timer , animation, etc...
  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }
}

/* Rectangle 1 */
