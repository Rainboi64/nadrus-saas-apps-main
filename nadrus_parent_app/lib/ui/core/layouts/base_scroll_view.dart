import 'package:flutter/material.dart';

const scrollPhysics = BouncingScrollPhysics();

class BaseScrollView extends StatelessWidget {
  final Widget child;
  final ScrollPhysics? physics;
  const BaseScrollView({required this.child, this.physics, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          physics: physics ?? scrollPhysics,
          child: ConstrainedBox(
            // expand child
            constraints: BoxConstraints(
              minHeight: constraint.maxHeight,
              minWidth: screenSize.width,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
