import 'package:flutter/material.dart';

class SplashScreenAnimation extends StatefulWidget {
  @override
  _SplashScreenAnimationState createState() => _SplashScreenAnimationState();
}

class _SplashScreenAnimationState extends State<SplashScreenAnimation>
with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _zoomOutAnimation;
  late Animation<double> _moveLeftAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<double> _moveRightAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
      );

    _zoomOutAnimation = Tween<double>(begin: 1.0, end: 0.7).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.0,
          0.5,
          curve: Curves.easeInOut,
          ),
        ),
      );

    _moveLeftAnimation = Tween<double>(begin: 0, end: -30).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.0,
          0.5,
          curve: Curves.easeInOut,
          ),
        ),
      );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.easeInOut,
          ),
        ),
      );

    _moveRightAnimation = Tween<double>(begin: -30, end: 0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.easeInOut,
          ),
        ),
      );

    _animationController.forward();
    
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child:  Stack(
          children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width / 4  +
            _moveLeftAnimation.value,
            child: Transform.scale(
              scale: _zoomOutAnimation.value,
              child: Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width/3,
                height: MediaQuery.of(context).size.height/4,
                ),
              ),
            ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width / 2.25,
            child: Opacity(
              opacity: _opacityAnimation.value,
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 30.0),
                duration: Duration(milliseconds: 500),
                builder:
                ( context,  value,  child) {
                  return Transform.translate(
                    offset: Offset(value + _moveRightAnimation.value, 0),
                    child: Image.asset(
                      "assets/images/sec_logo.png",
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/4,
                      ),
                    );
                  },
                  ),
              ),
            ),
          ],
          )
        ),
      );
  }
}
