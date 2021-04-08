import 'dart:async';
import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';

import '../../../../core/router/router.dart';
import '../../../components/custom_listview_component.dart';
import '../../../components/code_preview_component.dart';

class MaterialWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'AppBar',
      description:
          'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
      route: RoutePaths.appBar,
    ),
    ListViewItem(
      title: 'BottomNavigationBar',
      description:
          'Bottom navigation bars make it easy to explore and switch between top-level views in a single tap. The BottomNavigationBar widget implements this component.',
      route: RoutePaths.bottomNavigationBar,
    ),
    ListViewItem(
      title: 'Drawer',
      description:
          'A Material Design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.',
      route: RoutePaths.drawer,
    ),
    ListViewItem(
        title: 'MaterialApp',
        description:
            'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.',
        route: RoutePaths.materialApp),
    ListViewItem(
      title: 'Scaffold',
      description:
          'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
      route: RoutePaths.scaffold,
    ),
    ListViewItem(
      title: 'SliverAppBar',
      description:
          'A material design app bar that integrates with a CustomScrollView.',
      route: RoutePaths.sliverAppBar,
    ),
    ListViewItem(
      title: 'TabBar',
      description:
          'A Material Design widget that displays a horizontal row of tabs.',
      route: RoutePaths.tabBar,
    ),
    ListViewItem(
      title: 'TabBarView',
      description:
          'A page view that displays the widget which corresponds to the currently selected tab. Typically used in conjunction with a TabBar.',
      route: RoutePaths.tabBarView,
    ),
    ListViewItem(
      title: 'TabController',
      description:
          'Coordinates tab selection between a TabBar and a TabBarView.',
      route: RoutePaths.tabController,
    ),
    ListViewItem(
      title: 'TabPageSelector',
      description:
          'Displays a row of small circular indicators, one per tab. The selected tab\'s indicator is highlighted. Often used in conjunction with a TabBarView.',
      route: RoutePaths.tabPageSelector,
    ),
    ListViewItem(
      title: 'WidgetsApp',
      description:
          'A convenience class that wraps a number of widgets that are commonly required for an application.',
      route: RoutePaths.widgetsApp,
    ),
    ListViewItem(
      title: 'DropdownButton',
      description:
          'Shows the currently selected item and an arrow that opens a menu for selecting another item.',
      route: RoutePaths.dropdownButton,
    ),
    ListViewItem(
      title: 'ElevatedButton',
      description:
          'A Material Design elevated button. A filled button whose material elevates when pressed.',
      route: RoutePaths.elevatedButton,
    ),
    ListViewItem(
      title: 'FloatingActionButton',
      description:
          'A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.',
      route: RoutePaths.floatingActionButton,
    ),
    ListViewItem(
      title: 'IconButton',
      description:
          'An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).',
      route: RoutePaths.iconButton,
    ),
    ListViewItem(
      title: 'OutlinedButton',
      description:
          'A Material Design outlined button, essentially a TextButton with an outlined border.',
      route: RoutePaths.outlineButton,
    ),
    ListViewItem(
      title: 'PopupMenuButton',
      description:
          'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.',
      route: RoutePaths.popupMenuButton,
    ),
    ListViewItem(
      title: 'TextButton',
      description:
          'A Material Design text button. A simple flat button without a border outline.',
      route: RoutePaths.textButton,
    ),
    ListViewItem(
      title: 'Checkbox',
      description:
          'Checkboxes allow the user to select multiple options from a set. The Checkbox widget implements this component.',
      route: RoutePaths.checkBox,
    ),
    ListViewItem(
      title: 'showDatePicker',
      description:
          'Date pickers use a dialog window to select a single date on mobile. Time pickers use a dialog to select a single time (in the hours:minutes format) on mobile.',
      route: RoutePaths.showDatePicker,
    ),
    ListViewItem(
      title: 'Radio',
      description:
          'Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs to see all available options side-by-side.',
      route: RoutePaths.radio,
    ),
    ListViewItem(
      title: 'Slider',
      description:
          'Sliders let users select from a range of values by moving the slider thumb.',
      route: RoutePaths.slider,
    ),
    ListViewItem(
      title: 'Switch',
      description:
          'On/off switches toggle the state of a single settings option. The Switch widget implements this component.',
      route: RoutePaths.switchMaterial,
    ),
    ListViewItem(
      title: 'TextField',
      description:
          'Touching a text field places the cursor and displays the keyboard. The TextField widget implements this component.',
      route: RoutePaths.textField,
    ),
    ListViewItem(
        title: 'AlertDialog',
        description:
            'Alerts are urgent interruptions requiring acknowledgement that inform the user about a situation. The AlertDialog widget implements this component.',
        route: RoutePaths.alertDialog),
    ListViewItem(
      title: 'BottomSheet',
      description:
          'Bottom sheets slide up from the bottom of the screen to reveal more content. You can call showBottomSheet() to implement a persistent bottom sheet or showModalBottomSheet() to implement a modal bottom sheet.',
      route: RoutePaths.bottomSheet,
    ),
    ListViewItem(
      title: 'ExpansionPanel',
      description:
          'Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component.',
      route: RoutePaths.expansionPanel,
    ),
    ListViewItem(
      title: 'SimpleDialog',
      description:
          'Simple dialogs can provide additional details or actions about a list item. For example they can display avatars icons clarifying subtext or orthogonal actions (such as adding an account).',
      route: RoutePaths.simpleDialog,
    ),
    ListViewItem(
        title: 'SnackBar',
        description:
            'A lightweight message with an optional action which briefly displays at the bottom of the screen.',
        route: RoutePaths.snackBar),
    ListViewItem(
      title: 'Card',
      description:
          'A Material Design card. A card has slightly rounded corners and a shadow.',
      route: RoutePaths.card,
    ),
    ListViewItem(
      title: 'Chip',
      description:
          'A Material Design chip. Chips represent complex entities in small blocks, such as a contact.',
      route: RoutePaths.chip,
    ),
    ListViewItem(
        title: 'CircularProgressIndicator',
        description:
            'A material design circular progress indicator, which spins to indicate that the application is busy.',
        route: RoutePaths.circularProgressIndicator),
    ListViewItem(
      title: 'DataTable',
      description:
          'Data tables display sets of raw data. They usually appear in desktop enterprise products. The DataTable widget implements this component.',
      route: RoutePaths.dataTable,
    ),
    ListViewItem(
      title: 'GridView',
      description:
          'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
      route: RoutePaths.gridView,
    ),
    ListViewItem(
      title: 'Icon',
      description: 'A Material Design icon.',
      route: RoutePaths.iconMaterial,
    ),
    ListViewItem(
      title: 'Image',
      description: 'A widget that displays an image.',
      route: RoutePaths.imageMaterial,
    ),
    ListViewItem(
      title: 'LinearProgressIndicator',
      description:
          'A material design linear progress indicator, also known as a progress bar.',
      route: RoutePaths.linearProgressIndicator,
    ),
    ListViewItem(
      title: 'Tooltip',
      description:
          'Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to show a label when the widget long pressed (or when the user takes some other appropriate action).',
      route: RoutePaths.tooltip,
    ),
    ListViewItem(
      title: 'Divider',
      description:
          'A one logical pixel thick horizontal line, with padding on either side.',
      route: RoutePaths.divider,
    ),
    ListViewItem(
      title: 'ListTile',
      description:
          'A single fixed-height row that typically contains some text as well as a leading or trailing icon.',
      route: RoutePaths.listTile,
    ),
    ListViewItem(
      title: 'Stepper',
      description:
          'A Material Design stepper widget that displays progress through a sequence of steps.',
      route: RoutePaths.stepper,
    ),
  ];

  String appBarTitle = 'Material widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomListViewComponent(
        itemList: _itemList,
      ),
    );
  }

  /* String appBarTitle;

  MaterialWidgetsView();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Demo'),
              ),
              Tab(
                child: Text('Code'),
              ),
            ],
          ),
        ),
        
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Material widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Appbar',
                    description:
                        'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
                  ),
                  Container(
                    child: AppBar(title: Text('AppBar')),
                  ),
                  WidgetInfo(
                    title: 'BottomNavigationBar',
                    description:
                        'Bottom navigation bars make it easy to explore and switch between top-level views in a single tap. The BottomNavigationBar widget implements this component.',
                  ),
                  Container(
                    child: MyBottomNavigationBarWidget(),
                  ),
                  WidgetInfo(
                    title: 'Drawer',
                    description:
                        'A Material Design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.',
                  ),
                  WidgetInfo(
                    title: 'MaterialApp',
                    description:
                        'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.',
                  ),
                  WidgetInfo(
                    title: 'Scaffold',
                    description:
                        'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
                  ),
                  WidgetInfo(
                    title: 'SliverAppBar',
                    description:
                        'A material design app bar that integrates with a CustomScrollView.',
                  ),
                  WidgetInfo(
                    title: 'TabBar',
                    description:
                        'A Material Design widget that displays a horizontal row of tabs.',
                  ),
                  WidgetInfo(
                    title: 'TabBarView',
                    description:
                        'A page view that displays the widget which corresponds to the currently selected tab. Typically used in conjunction with a TabBar.',
                  ),
                  WidgetInfo(
                    title: 'TabController',
                    description:
                        'Coordinates tab selection between a TabBar and a TabBarView.',
                  ),
                  WidgetInfo(
                    title: 'TabPageSelector',
                    description:
                        'Displays a row of small circular indicators, one per tab. The selected tab\'s indicator is highlighted. Often used in conjunction with a TabBarView.',
                  ),
                  WidgetInfo(
                    title: 'WidgetsApp',
                    description:
                        'A convenience class that wraps a number of widgets that are commonly required for an application.',
                  ),
                  WidgetInfo(
                    title: 'DropdownButton',
                    description:
                        'Shows the currently selected item and an arrow that opens a menu for selecting another item.',
                  ),
                  Container(
                    child: MyDropdownButton(),
                  ),
                  WidgetInfo(
                    title: 'ElevatedButton',
                    description:
                        'A Material Design elevated button. A filled button whose material elevates when pressed.',
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      label: Text('Button'),
                      icon: Icon(Icons.web),
                      onPressed: () {},
                    ),
                  ),
                  WidgetInfo(
                    title: 'FloatingActionButton',
                    description:
                        'A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.',
                  ),
                  Container(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.navigation),
                      backgroundColor: Colors.green,
                    ),
                  ),
                  WidgetInfo(
                    title: 'IconButton',
                    description:
                        'An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).',
                  ),
                  Container(
                    child: IconButton(
                      icon: const Icon(Icons.volume_up),
                      tooltip: 'Increase volume by 10',
                      onPressed: () {},
                    ),
                  ),
                  WidgetInfo(
                    title: 'OutlinedButton',
                    description:
                        'A Material Design outlined button, essentially a TextButton with an outlined border.',
                  ),
                  Container(
                    child: OutlinedButton.icon(
                      label: Text('Button'),
                      icon: Icon(Icons.web),
                      onPressed: () {},
                    ),
                  ),
                  WidgetInfo(
                    title: 'PopupMenuButton',
                    description:
                        'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.',
                  ),
                  Container(
                    child: PopupMenuButton(
                      itemBuilder: (BuildContext bc) => [
                        PopupMenuItem(
                            child: Text("New Chat"), value: "/newchat"),
                        PopupMenuItem(
                            child: Text("New Group Chat"),
                            value: "/new-group-chat"),
                        PopupMenuItem(
                            child: Text("Settings"), value: "/settings"),
                      ],
                      onSelected: (route) {
                        print(route);
                        // Note You must create respective pages for navigation
                        Navigator.pushNamed(context, route);
                      },
                    ),
                  ),
                  WidgetInfo(
                    title: 'TextButton',
                    description:
                        'A Material Design text button. A simple flat button without a border outline.',
                  ),
                  Container(
                    child: TextButton(
                      child: Text('Button'),
                      onPressed: () {},
                    ),
                  ),
                  WidgetInfo(
                    title: 'Checkbox',
                    description:
                        'Checkboxes allow the user to select multiple options from a set. The Checkbox widget implements this component.',
                  ),
                  Container(
                    child: MyCheckBoxWidget(),
                  ),
                  WidgetInfo(
                    title: 'Date and time picker',
                    description:
                        'Date pickers use a dialog window to select a single date on mobile. Time pickers use a dialog to select a single time (in the hours:minutes format) on mobile.',
                  ),
                  Container(
                    child: MyshowDatePicker(),
                  ),
                  WidgetInfo(
                    title: 'Radio',
                    description:
                        'Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs to see all available options side-by-side.',
                  ),
                  Container(
                    child: MyRadioWidget(),
                  ),
                  WidgetInfo(
                    title: 'Slider',
                    description:
                        'Sliders let users select from a range of values by moving the slider thumb.',
                  ),
                  Container(
                    child: MySliderWidget(),
                  ),
                  WidgetInfo(
                    title: 'Switch',
                    description:
                        'On/off switches toggle the state of a single settings option. The Switch widget implements this component.',
                  ),
                  Container(
                    child: MySwitchWidget(),
                  ),
                  WidgetInfo(
                    title: 'TextField',
                    description:
                        'Touching a text field places the cursor and displays the keyboard. The TextField widget implements this component.',
                  ),
                  Container(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'AlertDialog',
                    description:
                        'Alerts are urgent interruptions requiring acknowledgement that inform the user about a situation. The AlertDialog widget implements this component.',
                  ),
                  Container(
                    child: AlertDialog(
                      title: Text('AlertDialog Title'),
                      content: Text('This is a demo alert dialog.'),
                      actions: [
                        TextButton(
                          child: Text('Approve'),
                          onPressed: () {
                            // Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'BottomSheet',
                    description:
                        'Bottom sheets slide up from the bottom of the screen to reveal more content. You can call showBottomSheet() to implement a persistent bottom sheet or showModalBottomSheet() to implement a modal bottom sheet.',
                  ),
                  Container(
                    child: MyBottomSheetWidget(),
                  ),
                  WidgetInfo(
                    title: 'ExpansionPanel',
                    description:
                        'Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component.',
                  ),
                  Container(
                    child: MyExpansionPanelWidget(),
                  ),
                  WidgetInfo(
                    title: 'SimpleDialog',
                    description:
                        'Simple dialogs can provide additional details or actions about a list item. For example they can display avatars icons clarifying subtext or orthogonal actions (such as adding an account).',
                  ),
                  WidgetInfo(
                    title: 'SnackBar',
                    description:
                        'A lightweight message with an optional action which briefly displays at the bottom of the screen.',
                  ),
                  Container(
                    child: ElevatedButton(
                      child: const Text('Show Snackbar'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Awesome Snackbar!'),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  WidgetInfo(
                    title: 'Card',
                    description:
                        'A Material Design card. A card has slightly rounded corners and a shadow.',
                  ),
                  Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('BUY TICKETS'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('LISTEN'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Chip',
                    description:
                        'A Material Design chip. Chips represent complex entities in small blocks, such as a contact.',
                  ),
                  Container(
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: Text('AB'),
                      ),
                      label: Text('Aaron Burr'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'CircularProgressIndicator',
                    description:
                        'A material design circular progress indicator, which spins to indicate that the application is busy.',
                  ),
                  Container(
                    child: CircularProgressIndicator(
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  ),
                  WidgetInfo(
                    title: 'DataTable',
                    description:
                        'Data tables display sets of raw data. They usually appear in desktop enterprise products. The DataTable widget implements this component.',
                  ),
                  Container(
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'Name',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Age',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Role',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Sarah')),
                            DataCell(Text('19')),
                            DataCell(Text('Student')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Janine')),
                            DataCell(Text('43')),
                            DataCell(Text('Professor')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('William')),
                            DataCell(Text('27')),
                            DataCell(Text('Associate Professor')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'GridView',
                    description:
                        'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
                  ),
                  Container(
                    child: GridView.count(
                      // without this property, GridView is not visible
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text("He'd have you all unravel at the"),
                          color: Colors.teal[100],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Heed not the rabble'),
                          color: Colors.teal[200],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Sound of screams but the'),
                          color: Colors.teal[300],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Who scream'),
                          color: Colors.teal[400],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Revolution is coming...'),
                          color: Colors.teal[500],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Revolution, they...'),
                          color: Colors.teal[600],
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'Icon',
                    description: 'A Material Design icon.',
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  WidgetInfo(
                    title: 'Image',
                    description: 'A widget that displays an image.',
                  ),
                  Container(
                    child: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/components/owl-2.jpg'),
                  ),
                  WidgetInfo(
                    title: 'LinearProgressIndicator',
                    description:
                        'A material design linear progress indicator, also known as a progress bar.',
                  ),
                  Container(
                    child: LinearProgressIndicator(
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  ),
                  WidgetInfo(
                    title: 'Tooltip',
                    description:
                        'Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to show a label when the widget long pressed (or when the user takes some other appropriate action).',
                  ),
                  Container(
                    child: Tooltip(
                      message: 'My Account',
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('hover over for tooltip')),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Divider',
                    description:
                        'A one logical pixel thick horizontal line, with padding on either side.',
                  ),
                  Container(
                    child: Divider(
                      height: 20,
                      thickness: 5,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                  WidgetInfo(
                    title: 'ListTile',
                    description:
                        'A single fixed-height row that typically contains some text as well as a leading or trailing icon.',
                  ),
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: const <Widget>[
                        Expanded(
                          child: ListTile(
                            leading: FlutterLogo(),
                            title: Text('These ListTiles are expanded '),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            trailing: FlutterLogo(),
                            title: Text('to fill the available space.'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'Stepper',
                    description:
                        'A Material Design stepper widget that displays progress through a sequence of steps.',
                  ),
                  Container(
                    child: MyStepperWidget(),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}

/// This is the stateful widget that the main application instantiates.
class MyBottomNavigationBarWidget extends StatefulWidget {
  // const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyBottomNavigationBarState extends State<MyBottomNavigationBarWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        )
      ],
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MyCheckBoxWidget extends StatefulWidget {
  @override
  _MyCheckBoxWidgetState createState() => _MyCheckBoxWidgetState();
}

class _MyCheckBoxWidgetState extends State<MyCheckBoxWidget> {
  bool _rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(
        () {
          _rememberMe = newValue;

          if (_rememberMe) {}
        },
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: _rememberMe, onChanged: _onRememberMeChanged),
        Text('Remember me')
      ],
    );
  }
}

class MyshowDatePicker extends StatefulWidget {
  @override
  _MyshowDatePickerState createState() => _MyshowDatePickerState();
}

class _MyshowDatePickerState extends State<MyshowDatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
        ],
      ),
    );
  }
}

class MyRadioWidget extends StatefulWidget {
  // const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyRadioWidgetState createState() => _MyRadioWidgetState();
}

// enum used for radio widget class
enum SingingCharacter { lafayette, jefferson }

/// This is the private State class that goes with MyStatefulWidget.
class _MyRadioWidgetState extends State<MyRadioWidget> {
  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class MySliderWidget extends StatefulWidget {
  // const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  _MySliderWidgetState createState() => _MySliderWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MySliderWidgetState extends State<MySliderWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

class MySwitchWidget extends StatefulWidget {
  @override
  _MySwitchWidgetState createState() => _MySwitchWidgetState();
}

class _MySwitchWidgetState extends State<MySwitchWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeTrackColor: Colors.lightGreenAccent,
        activeColor: Colors.green,
      ),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

/// This is the stateful widget that the main application instantiates.
class MyExpansionPanelWidget extends StatefulWidget {
  // const MyExpansionPanelWidget({Key? key}) : super(key: key);

  @override
  _MyExpansionPanelWidgetState createState() => _MyExpansionPanelWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyExpansionPanelWidgetState extends State<MyExpansionPanelWidget> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>(
        (Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
                title: Text(item.expandedValue),
                subtitle:
                    const Text('To delete this panel, tap the trash can icon'),
                trailing: const Icon(Icons.delete),
                onTap: () {
                  setState(() {
                    _data
                        .removeWhere((Item currentItem) => item == currentItem);
                  });
                }),
            isExpanded: item.isExpanded,
          );
        },
      ).toList(),
    );
  }
}

class MyBottomSheetWidget extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _MyBottomSheetWidgetState createState() => _MyBottomSheetWidgetState();
}

class _MyBottomSheetWidgetState extends State<MyBottomSheetWidget> {
  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Center(
              child: Text("This is an example of bottom sheet"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Click the floating action button to show bottom sheet.',
        ),
        ElevatedButton(
          onPressed: () => displayBottomSheet(context),
          child: Icon(Icons.add),
        )
      ],
    );
  }
}

class MyStepperWidget extends StatefulWidget {
  @override
  _MyStepperWidgetState createState() => _MyStepperWidgetState();
}

class _MyStepperWidgetState extends State<MyStepperWidget> {
  int _index = 0;
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Stepper(
        currentStep: _index,
        onStepCancel: () {
          if (_index <= 0) {
            return;
          }
          setState(() {
            _index--;
          });
        },
        onStepContinue: () {
          if (_index >= 1) {
            return;
          }
          setState(() {
            _index++;
          });
        },
        onStepTapped: (index) {
          setState(() {
            _index = index;
          });
        },
        steps: [
          Step(
            title: Text("Step 1 title"),
            content: Container(
                alignment: Alignment.centerLeft,
                child: Text("Content for Step 1")),
          ),
          Step(
            title: Text("Step 2 title"),
            content: Text("Content for Step 2"),
          ),
        ],
      ),
    );
  }
}
