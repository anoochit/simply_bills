import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'const.dart';

class HomeBodyView extends GetView {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // address
          Container(
            padding: const EdgeInsets.all(9.0),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).width * 2 / 3.5,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.inversePrimary,
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add),
                        Text('Add'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // service label
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary
                    .withOpacity(0.5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  'Services',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ),
          ),

          // service buttons
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(9.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            children: List.generate(serviceItems.length, (index) {
              return ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                onPressed: () {
                  //
                },
                child: LayoutBuilder(builder: (context, constraints) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        serviceItems[index].icon,
                        size: constraints.maxWidth / 2,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        serviceItems[index].title,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  );
                }),
              );
            }),
          )
        ],
      ),
    );
  }
}
