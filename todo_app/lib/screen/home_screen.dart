import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_data.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:todo_app/models/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserInfoWidget(),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  _getGreetingMessage(),
                  style: AppTextstyle.tsBoldSize18Black.copyWith(fontSize: 12),
                ),
                SizedBox(width: 25),
              ],
            ),
            AnimatedAnalogClock(
              size: (120 / 812) * MediaQuery.of(context).size.height,
              location: 'America/Chicago',
              clock: () => DateTime.now(),
              backgroundColor: AppColor.whiteColor,
              hourHandColor: Colors.lightBlueAccent,
              minuteHandColor: Colors.lightBlueAccent,
              secondHandColor: Colors.amber,
              centerDotColor: Colors.amber,
              hourDashColor: Colors.lightBlue,
              minuteDashColor: Colors.blueAccent,
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 27),
                Text('Tasks List', style: AppTextstyle.tsBoldSize18Black),
              ],
            ),
            SizedBox(height: 20),
            _buildListTaskWidget(),
          ],
        ),
      ),
    );
  }

  String _getGreetingMessage() {
    final hour = DateTime.now().hour;
    if (hour > 5 && hour < 12) {
      return 'Good Morning';
    } else if (hour > 12 && hour < 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  Container _buildUserInfoWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (307 / 812) * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: AppColor.blueColor),
      child: Stack(
        children: [
          Image.asset(AppPath.imgShape),
          Positioned(
            top: (133 / 812) * MediaQuery.of(context).size.height,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(AppPath.imgUserAvatar),
                SizedBox(height: 18),
                Text(
                  "Welcome, Oliva Grace",
                  style: AppTextstyle.tsBoldSize18Black.copyWith(
                    color: AppColor.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildListTaskWidget() {
    return Container(
      width: MediaQuery.of(context).size.width - 52,
      height: (248 / 812) * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.blackColor.withValues(alpha: 0.25),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(21, 22, 24, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tasks List', style: AppTextstyle.tsRegularSize14Black),
              InkWell(
                onTap: () {
                  _showAddTaskDialog();
                },
                child: Image.asset(AppPath.icPlus),
              ),
            ],
          ),
          SizedBox(height: 29),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final item = AppData.taskList[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      item.isCompleted = !item.isCompleted;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                          color: item.isCompleted
                              ? AppColor.blueColor
                              : AppColor.whiteColor,
                          border: Border.all(
                            color: AppColor.blackColor,
                            width: 1,
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      Text(
                        item.taskName,
                        style: AppTextstyle.tsMediumSize14Black,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 18),
              itemCount: AppData.taskList.length,
            ),
          ),
        ],
      ),
    );
  }

  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add New Task'),
          content: TextField(
            controller: taskController,
            decoration: InputDecoration(hintText: 'Enter task name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                taskController.clear();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (taskController.text.trim().isEmpty) {
                    return;
                  }
                  AppData.taskList.add(
                    Task(
                      taskName: taskController.text.trim(),
                      isCompleted: false,
                    ),
                  );
                });
                taskController.clear();
                Navigator.of(context).pop();
              },
              child: Text('Okay'),
            ),
          ],
        );
      },
    );
  }
}
