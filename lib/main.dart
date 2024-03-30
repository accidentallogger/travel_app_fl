import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; // Keep track of the selected index

  final List<Widget> _screens = [
    const FavScreen(),// Replace with your Home screen widget
    const HomeScreen(),
    const MapScreen(), // Replace with your Favorite screen widget

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      theme: ThemeData(
        primarySwatch: Colors.yellow, // Customize app theme (optional)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Travel-Eaze'), // Add an app bar (optional)
        ),
        body: _screens[_currentIndex], // Display the selected screen
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // Set the selected index
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),

          ],
        ),
      ),
    );
  }
}

// Replace these with your actual screen widgets
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  //final Widget _mapWidget = Center(child:  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-screen map
          SizedBox.expand(child: Image.asset('C:/Users/DELL/Desktop/image.png')),
          // Transparent overlay
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2, // Half screen height
              width: double.infinity, // Full screen width
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3), // Transparent black background
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0), // Add padding
                child: Column(
                  children: [
                    // Location details in 2 columns (replace with your data)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Location 1',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Text(
                          'Details...',
                          style: TextStyle(color: Colors.white70, fontSize: 14.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0), // Add spacing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Location 2',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Text(
                          'Details...',
                          style: TextStyle(color: Colors.white70, fontSize: 14.0),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     HomeScreenm();
    return HomeScreenm();

  }
}

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('ffffaaavvv'));
  }
}






class HomeScreenm extends StatelessWidget {

   HomeScreenm({super.key});

  final List<Color> _carouselColors = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.orange];
  final List<String> _carouselTitles = ['Slide 1', 'Slide 2', 'Slide 3', 'Slide 4', 'Slide 5'];
   final List<String> _tabTitles = ['Mumbai', 'Delhi', 'Nepal', 'Mexico','Indore'];

  get raisedButtonStyle => null;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child:
            Container(color: Colors.white, width: 50.0, height: 10.0)),
        SizedBox(
          height: 250,width:150,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.8),
            itemCount: _carouselColors.length * 150, // Simulate endless loop
            itemBuilder: (context, index) {
              final int modIndex = index % _carouselColors.length;
              final Color color = _carouselColors[modIndex];
              final String title = _carouselTitles[modIndex];

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0), // Add spacing between slides
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
                child: Center(
                  child: Column( // Stack elements vertically
                    mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white, // White text for better contrast
                        ),
                      ),
                      const SizedBox(height: 10.0), // Add some spacing between title and text
                      Text(
                        'Descriptive text for slide $title', // Replace with your content
                        style: const TextStyle(color: Colors.white70), // Slightly lighter text
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child:
            Container(color: Colors.white, width: 70.0, height: 20.0)),
        Column(
            children:[
    ElevatedButton(


      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => const TravelogueOverlay(),
        );
      },
    child: const Text('TRAVELOGUE'),
    )]),Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),

    child:

    Container(color: Colors.white, width: 100.0, height: 80.0)),const Text(
          'Explorer\'s Map',

          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ), Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child:
            Container(color: Colors.white, width: 70.0, height: 20.0)),Container(
          color: Colors.yellowAccent,width:100 ,height: 150, // Background color for the box
          padding: const EdgeInsets.all(15.0), // Add padding

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content
            children: [

              DefaultTabController(
                length: _tabTitles.length, // Set the number of tabs
                child: Row(
                  children: [
                    for (final title in _tabTitles) // Dynamically create tabs
                      TextButton(
                        onPressed: () {}, // Handle tab selection (replace with logic)
                        child: Text(title,style: const TextStyle(color:Colors.black,fontSize: 18.0, fontWeight: FontWeight.bold),),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),]);

  }
}





class TravelogueOverlay extends StatelessWidget {
  const TravelogueOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create Travelogue'),
      content: const SingleChildScrollView( // Allow scrolling for long text
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Write your travelogue here'),
            ),
            // Add a button or widget for image selection here
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), // Close the overlay
          child: const Text('Close'),
        ),
        TextButton(
          onPressed: () {
            // Submit the travelogue content and image (if any)
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
