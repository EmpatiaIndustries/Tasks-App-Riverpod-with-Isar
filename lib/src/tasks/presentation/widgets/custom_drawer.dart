import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:tasks_app/config/config.dart';
// import 'package:tasks_app/src/tasks/presentation/presentation.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    // final int selectedMonth = ref.watch(selectedMonthProvider);
    // ref.watch(userSettingsProvider.notifier).getSettings();
    return Drawer(
      child: Column(
        children: [
          const CustomDrawerHeader(),
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: deviceHeight * 0.025,
              ),
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 50,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                final monthIndex = index + 1;
                // final String month = getMonthName(index + 1);
                return InkWell(
                  onTap: () {
                    // ref
                    //     .read(selectedMonthProvider.notifier)
                    //     .changeMonth(index + 1);
                    // context.pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      // color: selectedMonth != monthIndex
                      //     ? primaryColor
                      //     : Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        width: 2,
                        // color: selectedMonth != monthIndex
                        //     ? Colors.transparent
                        //     : primaryColor,
                      ),
                    ),
                    margin: const EdgeInsets.all(5),
                    child: const Center(
                      child: Text(
                        'month',
                        style: TextStyle(
                            // color: selectedMonth != monthIndex
                            //     ? Colors.white
                            //     : primaryColor,
                            // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawerHeader extends ConsumerWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/drawer_background.png'),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.settings, color: Colors.white),
                      onPressed: () {
                        context.pop();
                        // context.push(const SettingsRoute().location);
                      },
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Proyección de ventas',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            // ref.watch(selectedSettingsProvider).businessName ??
                            'Mi negocio',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
