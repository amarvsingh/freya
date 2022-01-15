import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freya/services/authentication_service.dart';
import 'package:freya/services/routing_service.dart';
import 'package:freya/services/toast_service.dart';
import 'package:freya/view/colors_reservoir.dart';

//Menu facilitator
enum MenuOption { logout, settings, feedback, my_profile }

class PopUpMenuHome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PopupMenuButton<MenuOption>(
      icon: Icon(FontAwesomeIcons.ellipsisV, color: ColorsReservoir().pinkCustom),
      itemBuilder: (BuildContext context1) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.settings,
                    color: ColorsReservoir().lightPinkCustom,
                  ),
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: ColorsReservoir().lightPinkCustom,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                ),
              ],
            ),
            value: MenuOption.settings,
          ),
          PopupMenuItem(
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.account_box,
                    color: ColorsReservoir().lightPinkCustom,
                  ),
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  child: Text(
                    "My Profile",
                    style: TextStyle(
                      color: ColorsReservoir().lightPinkCustom,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                ),
              ],
            ),
            value: MenuOption.my_profile,
          ),
          PopupMenuItem(
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.feedback,
                    color: ColorsReservoir().lightPinkCustom,
                  ),
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  child: Text(
                    "Feedback",
                    style: TextStyle(
                        color: ColorsReservoir().lightPinkCustom, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.all(5),
                ),
              ],
            ),
            value: MenuOption.feedback,
          ),
          PopupMenuItem(
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.exit_to_app,
                    color: ColorsReservoir().lightPinkCustom,
                  ),
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  child: Text(
                    "Logout!",
                    style: TextStyle(
                      color: ColorsReservoir().lightPinkCustom,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                ),
              ],
            ),
            value: MenuOption.logout,
          ),
        ];
      },
      onSelected: (selection) async {
        if (selection == MenuOption.logout) {
          await AuthenticationService().logOut(context);
          ToastService()
              .showToast(
              "Google SignIn Complete!");
          Navigator.pushReplacement(
              context,
              RoutingService()
                  .toLogin);
        }
        if (selection == MenuOption.feedback) {
        }
        if (selection == MenuOption.my_profile) {
        }
        if (selection == MenuOption.settings) {
        }
      },
    );
  }
}