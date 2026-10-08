import 'package:flutter/material.dart';
import 'package:w4/widget_basic/container1.dart';
import 'package:w4/widget_basic/text1.dart';
import 'package:w4/widget_basic/button1.dart';
import 'package:w4/widget_basic/icon1.dart';
import 'package:w4/widget_basic/image1.dart';
import 'package:w4/widget_basic/avatar1.dart';
import 'package:w4/widget_basic/column1.dart';
import 'package:w4/widget_basic/row1.dart';
import 'package:w4/widget_basic/list_view_widget.dart';
import 'package:w4/widget_basic/gridview_widget.dart';
import 'package:w4/widget_basic/stack_widget.dart';
import 'package:w4/widget_basic/padding_widget.dart';
import 'package:w4/widget_basic/sizedbox_widget.dart';
import 'package:w4/widget_basic/wrap_widget.dart';

class WidgetMenuPage extends StatelessWidget {
  const WidgetMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Widget Dasar'),
      ),
      body: ListView(
        children: [
          _buildMenuTile(context, '2.1 Container', const Container1()),
          _buildMenuTile(context, '2.2 Text', const Text1()),
          _buildMenuTile(context, '2.3 Button', const Button1()),
          _buildMenuTile(context, '2.4 Icon', const Icon1()),
          _buildMenuTile(context, '2.5 Image', const Image1()),
          _buildMenuTile(context, '2.6 CircleAvatar', const Avatar1()),
          _buildMenuTile(context, '2.7 Column', const Column1()),
          _buildMenuTile(context, '2.8 Row', const Row1()),
          _buildMenuTile(context, '2.9 ListView', ListViewWidget()), 
          _buildMenuTile(context, '2.10 GridView', const GridViewWidget()),
          _buildMenuTile(context, '2.11 Stack', const StackWidget()),
          _buildMenuTile(context, '2.12 Padding', const PaddingWidget()),
          // _buildMenuTile(context, '2.12 Expanded', const ExpandedWidget()), // Hapus garis miring (//) di depan jika ada
          _buildMenuTile(context, '2.13 SizedBox', const SizedBoxWidget()),
          _buildMenuTile(context, '2.14 Wrap', WrapWidget()), 
        ],
      ),
    );
  }

  // Fungsi bantuan untuk membuat baris menu agar kode lebih rapi
  Widget _buildMenuTile(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}