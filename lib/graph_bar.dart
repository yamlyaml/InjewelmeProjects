import 'package:flutter/material.dart';

class BarGraph extends StatefulWidget {
  final Color? barColor;
  String ingredient;
  double ingredientValue;
  double barGraphWidth;

  BarGraph(
      {Key? key,
      required this.barColor,
      required this.ingredient,
      required this.ingredientValue,
      required this.barGraphWidth})
      : super(key: key);

  @override
  State<BarGraph> createState() => _BarGraphState();
}

class _BarGraphState extends State<BarGraph>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Animation<double> _curve;
  late double endValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    endValue = widget.barGraphWidth * widget.ingredientValue * 0.01 * 0.8;
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _curve =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animation = Tween<double>(begin: 0.0, end: endValue).animate(_curve)
      ..addListener(() {
        setState(() {});
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  void didUpdateWidget(covariant BarGraph oldWidget) {
    // TODO: implement didUpdateWidget
    endValue = widget.barGraphWidth * widget.ingredientValue * 0.01 * 0.8;
    _animation = Tween<double>(begin: 0.0, end: endValue).animate(_curve)
      ..addListener(() {
        setState(() {});
      });
    repeatOnce();
    super.didUpdateWidget(oldWidget);
  }

  void repeatOnce() async {
    await _animationController.reverse();
    await _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.ingredient),
          Row(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_animationController.isCompleted) {
                        _animationController.reverse();
                      } else {
                        _animationController.forward();
                      }
                    },
                    child: Container(
                      color: Colors.grey[300],
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: widget.barGraphWidth * 0.8,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_animationController.isCompleted) {
                        _animationController.reverse();
                      } else {
                        _animationController.forward();
                      }
                    },
                    child: Container(
                      color: widget.barColor,
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: _animation.value,
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${widget.ingredientValue.toInt()}  ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
              VerticalDivider(
                width: 8.0,
                color: Colors.transparent,
              ),
              Text('100%')
            ],
          )
        ],
      ),
    );
  }
}
