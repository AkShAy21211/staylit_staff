import 'package:flutter/material.dart';
import 'package:staylit/ui/screens/notification_screen.dart';
import 'package:staylit/ui/screens/service_request_screen.dart';
import 'package:staylit/ui/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'STAYLIT',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.blueAccent[700],
                fontWeight: FontWeight.bold,
              ),
        ),
        elevation: 1,
      ),
      body: SafeArea(
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: const [
            ServiceRequestScreen(),
            NotificationScreen(),
            SettingsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.blueAccent[400],
        elevation: 5,
        child: CustomBottomNavBar(
          selectedIndex: tabController!.index,
          onChanged: (int index) {
            tabController!.animateTo(index);
            setState(() {});
          },
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onChanged;
  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NavBarButton(
          label: 'Home',
          iconData: Icons.home_outlined,
          selectedIconData: Icons.home,
          onPressed: () {
            onChanged(0);
          },
          isSelected: selectedIndex == 0,
        ),
        NavBarButton(
          label: 'Notifications',
          iconData: Icons.notifications_active_outlined,
          selectedIconData: Icons.notifications_active,
          onPressed: () {
            onChanged(1);
          },
          isSelected: selectedIndex == 1,
        ),
        NavBarButton(
          label: 'Settings',
          iconData: Icons.settings_outlined,
          selectedIconData: Icons.settings,
          onPressed: () {
            onChanged(2);
          },
          isSelected: selectedIndex == 2,
        ),
      ],
    );
  }
}

class NavBarButton extends StatelessWidget {
  final IconData iconData, selectedIconData;
  final String label;
  final Function() onPressed;
  final bool isSelected;
  const NavBarButton({
    Key? key,
    required this.iconData,
    required this.selectedIconData,
    required this.onPressed,
    required this.isSelected,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Icon(
                isSelected ? selectedIconData : iconData,
                size: 24,
                color: Colors.white,
              ),
              if (isSelected) const SizedBox(width: 5),
              if (isSelected)
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
