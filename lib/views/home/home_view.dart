import 'package:el_todo/utils/app_colors.dart';
import 'package:el_todo/utils/extensions/sized_box_ext.dart';
import 'package:el_todo/utils/strings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import 'widgets/task_tile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> testingList = [
    'Done',
    'To Do',
    'Doing',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(80 * 0.6),
          ),
          elevation: 10.0,
          onPressed: () {},
          backgroundColor: Pallete.primaryColor,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        value: 1 / 3,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Pallete.primaryColor),
                      ),
                    ),
                    WhiteSpaces.horizontalSpace(25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.mainTitle,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        WhiteSpaces.verticalSpace(4),
                        Text(
                          "1 of 3 task",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //Divider
              const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Divider(indent: 100, thickness: 2)),
              Expanded(
                child: testingList.isNotEmpty
                    ? ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: testingList.length,
                        itemBuilder: (context, index) => Dismissible(
                          key: UniqueKey(),
                          dismissThresholds: const {
                            DismissDirection.startToEnd: 0.7,
                            DismissDirection.endToStart: 0.6,
                          },
                          dragStartBehavior: DragStartBehavior.down,
                          onDismissed: (direction) {
                            print(testingList);
                            testingList.removeAt(index);
                            setState(() {});
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${testingList[index]} deleted'),
                              ),
                            );
                          },
                          background: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete_outline_rounded,
                                color: Colors.red,
                              ),
                              WhiteSpaces.horizontalSpace(8),
                              Text(AppString.deletedTask)
                            ],
                          ),
                          child: TaskTileWidget(),
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 200,
                            child: Lottie.asset(
                              'assets/lottie/1.json',
                              animate: testingList.isNotEmpty ? false : true,
                            ),
                          ),
                          const Text(AppString.doneAllTask),
                        ],
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
