import 'package:flutter/material.dart';

class AnimationType {
  static const int text = 1;
  static const int image = 2;
}
class AnimationData {
  final int type;
  final Widget child;
  final String imagePath;

  AnimationData.text(this.child)
      : type = AnimationType.text,
        imagePath = '';
  AnimationData.image(this.imagePath)
      : type = AnimationType.image,
        child = Container(); // Placeholder child for image animation
}

class CustomAnimation extends StatefulWidget {
  final AnimationData animationData;
  final Duration duration;
  final Duration delay;
  final Curve curve;

  CustomAnimation({
    required this.animationData,
    required this.duration,
    this.delay = Duration.zero,
    this.curve = Curves.linear,
  });

  @override
  _CustomAnimationState createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..addListener(() {
      setState(() {});
    });

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: widget.curve),
    );

    // Delay the animation if needed
    Future.delayed(widget.delay, () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget childWidget;
    if (widget.animationData.type == AnimationType.text) {
      childWidget = widget.animationData.child;
    } else {
      childWidget = Image.asset(
        widget.animationData.imagePath,
        fit: BoxFit.contain,
      );
    }

    return Opacity(
      opacity: _animation.value,
      child: childWidget,
    );
  }
}
