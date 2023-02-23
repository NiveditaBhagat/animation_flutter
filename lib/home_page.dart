import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //animation controller
      _controller=AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        )..forward();


    //rotation animation
     _rotationAnimation=Tween(begin: 0.0, end: 1.0,)
     .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // radius animation -> circle to square
    _radiusAnimation=Tween(begin: 450.0, end: 10.0,)
    .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.addListener(() {
      setState(() {} );
     });

     //make animation back and forth
     _controller.addStatusListener((status) { 
      if(status==AnimationStatus.completed){
        _controller.reverse();
      }else if(status==AnimationStatus.dismissed){
        _controller.forward();
      }
     });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            //bigger container
            Transform.rotate(
              angle: _rotationAnimation.value,
              child: Container(
                width: 270,
                height: 270,
                decoration: BoxDecoration(
                   color: const Color(0xFF692D94),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF692D94).withOpacity(0.8),
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                          // blurRadius: 16.0,
                        ),
                      ],
                ),
                
              ),
           ),
           //second smaller
              Transform.rotate(
              angle: _rotationAnimation.value+0.2,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                 color: const Color(0xFF7921B1),
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                   boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF7921B1).withOpacity(0.7),
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                          // blurRadius: 16.0,
                        ),
                      ],
                ),
              ),
           ),
           //third container
            Transform.rotate(
              angle: _rotationAnimation.value+0.4,
              child: Container(
                width: 225,
                height: 225,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                   boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.8),
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                          // blurRadius: 16.0,
                        ),
                      ],
                ),
              ),
           ),
           //fourth container
            Transform.rotate(
              angle: _rotationAnimation.value+0.6,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
               color: Colors.purple.shade400,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                   boxShadow: [
                        BoxShadow(
                          color: Colors.purple.shade400,
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 16.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                ),
              ),
           ),
                   Transform.rotate(
                  angle: _rotationAnimation.value + 1,
                  child: Container(
                    width: 175,
                    height:175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_radiusAnimation.value),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFBC61F5).withOpacity(0.8),
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                      color: const Color(0xFFBC61F5),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: _rotationAnimation.value + 1.2,
                  child: Container(
                    width: 155,
                    height: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_radiusAnimation.value),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFC576F6).withOpacity(0.5),
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                      color: const Color(0xFFC576F6),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: _rotationAnimation.value + 1.4,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_radiusAnimation.value),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFCE8BF8).withOpacity(0.8),
                          offset: const Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                      color: const Color(0xFFCE8BF8),
                    ),
                  ),
                ),
                 Transform.rotate(
                  angle: _rotationAnimation.value + 1.6,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_radiusAnimation.value),
                      ),
                      boxShadow: [
                        const BoxShadow(
                          color: Color(0xFFE1BEE7),
                          offset: Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                      color: Color.fromARGB(255, 221, 156, 233),
                    ),
                  ),
                ),
                 Transform.rotate(
                  angle: _rotationAnimation.value + 1.8,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_radiusAnimation.value),
                      ),
                      boxShadow: [
                        const BoxShadow(
                          color:Color.fromARGB(255, 229, 179, 235),
                          
                          offset: Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                      color: Color.fromARGB(255, 231, 184, 238),
                    ),
                  ),
                 ),
                  Transform.rotate(
                  angle: _rotationAnimation.value + 1.8,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(_radiusAnimation.value),
                      ),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 231, 208, 235),
                          
                          offset: Offset(-6.0, -6.0),
                          // blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(6.0, 6.0),
                        ),
                      ],
                      color: Color.fromARGB(255, 231, 208, 235),
                    ),
                  ),
                 ),
                 
          ],
        ),
      ),
    );
  }
}