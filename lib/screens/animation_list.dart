import 'package:animapp/components/builders/box_flip.dart';
import 'package:animapp/screens/animated_container.dart';
import 'package:animapp/screens/animated_text.dart';
import 'package:animapp/screens/box_fading_animation.dart';
import 'package:flutter/material.dart';

import 'box_spin_animation.dart';
import 'box_zoom_animation.dart';

class AnimationListPage extends StatefulWidget {
  const AnimationListPage({super.key});

  @override
  State<AnimationListPage> createState() => _AnimationListPageState();
}

class _AnimationListPageState extends State<AnimationListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Our Different Animations",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: getListView(context),
    );
  }
}


Widget getListView(BuildContext context){
  var listView = ListView(
    scrollDirection: Axis.vertical,
      children: <Widget>[
        Card(
          child: ListTile(
            leading: const Icon(Icons.square, size: 40, color: Colors.blue,),
            title: const Text(
                "Fading Box",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: const Text("Box fading and bolding back after a sec! Tap to view"),
            tileColor: Colors.orangeAccent,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const BoxAnimation()
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.square, size: 40, color: Colors.red,),
            title: const Text(
              "Zoom Box",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: const Text("Box increasing and decreasing in size! Tap to view"),
            tileColor: Colors.yellow,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const BoxZoomAnimation()
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.square, size: 40, color: Colors.yellow,),
            title: const Text(
              "Spin Box",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: const Text("Here's a box spinning round! Tap to view"),
            tileColor: Colors.lightBlueAccent,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const BoxSpinAnimation()
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.account_tree, size: 40, color: Colors.green,),
            title: const Text(
              "Rotational boxes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            subtitle: const Text(
              "Here's a number of animated boxes! Tap to view",
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            tileColor: Color(0xFF031C56FF),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (e) => const FlippingBox(),
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.border_color, size: 40, color: Colors.white,),
            title: const Text(
              "Animated Container",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
                "Here's a spinning contained text ! Tap to view",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            tileColor: Colors.red,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const AnimContainer()
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.border_color, size: 40, color: Colors.orangeAccent,),
            title: const Text(
              "Type Writer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              "This progressively displays a sentence! Tap to view",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            tileColor: Colors.brown,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const TypeWriter()
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.border_color, size: 40, color: Colors.black,),
            title: const Text(
              "Colored Text",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              "This gives another touch by sliding colors! Tap to view",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            tileColor: Colors.green,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const ColorizeAnimation()
                  )
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.border_color, size: 40, color: Colors.brown,),
            title: const Text(
              "Wavy Text",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            subtitle: const Text(
              "Ever seen bouncing phrase letters? Tap to view",
              style: TextStyle(
                color: Colors.black
              ),
            ),
            tileColor: Colors.orangeAccent,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (e) => const WavyAnimation()
                  )
              );
            },
          ),
        ),
      ],
    );
  return listView;
}