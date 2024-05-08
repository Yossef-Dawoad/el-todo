import 'package:el_todo/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  const TaskTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        decoration: ShapeDecoration(
          color: Pallete.primaryColor.withOpacity(0.2),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          // shadows: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     blurRadius: 30,
          //     offset: const Offset(0, 4),
          //   )
          // ],
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: ListTile(
          leading: InkWell(
            onTap: () {},
            child: AnimatedContainer(
              height: 32,
              width: 32,
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Pallete.primaryColor,
                border: Border.all(width: 0.8, color: Colors.grey),
              ),
              child: Icon(Icons.check, color: Colors.white),
            ),
          ),
          title: Text("Done"),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'subDate',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
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
