import 'package:flutter/material.dart';
import 'package:truemed_adminapp/Animation/FadeAnimation.dart';
import 'package:truemed_adminapp/config/appTheme.dart';
import 'package:truemed_adminapp/ui/Screen/webViewScreen/webViewContainer.dart';

class DashboardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppTheme.appDefaultColor,
          title: Text(
            "Dashboard",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white70, fontWeight: FontWeight.w900),
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 1),
        child: SingleChildScrollView(
          child: Column(children: [
            FadeAnimation(
              0.5,
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                item(
                  context,
                  title: "Dashboard",
                  mainIcon: Icons.dashboard,
                  grColor1: Color(0xFF66A0DA),
                  grColor2: Color(0xFF185a9d),
                  grColor3: Color(0xFF185a9d),
                ),
                item(
                  context,
                  title: "PowerBi Dashboard",
                  mainIcon: Icons.bar_chart,
                  grColor1: Color(0xFF66A0DA),
                  grColor2: Color(0xFF185a9d),
                  grColor3: Color(0xFF185a9d),
                ),
                item(
                  context,
                  title: "Facility",
                  mainIcon: Icons.point_of_sale,
                  grColor1: Color(0xFF66A0DA),
                  grColor2: Color(0xFF185a9d),
                  grColor3: Color(0xFF185a9d),
                ),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            FadeAnimation(
              1.0,
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                item(context,
                    title: "Requisition",
                    mainIcon: Icons.pages,
                    grColor1: Color(0xFFB44DAF),
                    grColor2: Color(0xFF7E2F7A),
                    grColor3: Color(0xFF7E2F7A)),
                item(context,
                    title: "Sales Management",
                    mainIcon: Icons.control_point,
                    grColor1: Color(0xFFB44DAF),
                    grColor2: Color(0xFF7E2F7A),
                    grColor3: Color(0xFF7E2F7A)),
                item(context,
                    title: "Admin",
                    mainIcon: Icons.admin_panel_settings,
                    grColor1: Color(0xFFB44DAF),
                    grColor2: Color(0xFF7E2F7A),
                    grColor3: Color(0xFF7E2F7A)),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            FadeAnimation(
              1.5,
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                item(context,
                    title: "Specimen Management",
                    mainIcon: Icons.add_chart,
                    grColor1: Color(0xFF998AEE),
                    grColor2: Color(0xFF5644B8),
                    grColor3: Color(0xFF5644B8)),
                item(context,
                    title: "Supply Management",
                    mainIcon: Icons.work_outline,
                    grColor1: Color(0xFF998AEE),
                    grColor2: Color(0xFF5644B8),
                    grColor3: Color(0xFF5644B8)),
                item(context,
                    title: "Marketing",
                    mainIcon: Icons.local_mall_outlined,
                    grColor1: Color(0xFF998AEE),
                    grColor2: Color(0xFF5644B8),
                    grColor3: Color(0xFF5644B8)),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            FadeAnimation(
              2.0,
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                item(context,
                    title: "Shipping & Pickup",
                    mainIcon: Icons.local_shipping_outlined,
                    grColor1: Color(0xFFE79AA1),
                    grColor2: Color(0xFFA5444E),
                    grColor3: Color(0xFFA5444E)),
                item(context,
                    title: "ID LIS",
                    mainIcon: Icons.pages_outlined,
                    grColor1: Color(0xFFE79AA1),
                    grColor2: Color(0xFFA5444E),
                    grColor3: Color(0xFFA5444E)),
                item(context,
                    title: "Patients",
                    mainIcon: Icons.wheelchair_pickup_outlined,
                    grColor1: Color(0xFFE79AA1),
                    grColor2: Color(0xFFA5444E),
                    grColor3: Color(0xFFA5444E)),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            // FadeAnimation(
            //   2.5,
            //   Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            //     item(context,
            //         title: "Title",
            //         mainIcon: Icons.folder,
            //         grColor1: Color(0xFF6B83BB),
            //         grColor2: Color(0xFF334B7A),
            //         grColor3: Color(0xFF334B7A)),
            //     item(context,
            //         title: "Title",
            //         mainIcon: Icons.folder_open_outlined,
            //         grColor1: Color(0xFF6B83BB),
            //         grColor2: Color(0xFF334B7A),
            //         grColor3: Color(0xFF334B7A)),
            //     item(context,
            //         title: "Title",
            //         mainIcon: Icons.mail,
            //         grColor1: Color(0xFF6B83BB),
            //         grColor2: Color(0xFF334B7A),
            //         grColor3: Color(0xFF334B7A)),
            //   ]),
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.006,
            // ),
          ]),
        ));
  }

  Widget item(BuildContext context,
      {IconData mainIcon,
      String title,
      Color grColor1,
      Color grColor2,
      Color grColor3}) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WebViewContainer()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.307,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [grColor1, grColor2, grColor3])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: Icon(
                mainIcon,
                size: 55,
                color: Colors.white38,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white70)),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            // Text(
            //   data.event,
            //   style: GoogleFonts.openSans(
            //       textStyle: TextStyle(
            //           color: Colors.white70,
            //           fontSize: 11,
            //           fontWeight: FontWeight.w600)),
            // ),
          ],
        ),
      ),
    );
  }
}
