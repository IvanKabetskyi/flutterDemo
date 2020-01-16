import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputContainer extends StatefulWidget {
  InputContainer(
      {Key key,
      @required this.myController,
      this.title,
      this.obscureText: false,
      this.icon,
      this.errMessage,
      this.validation,
      this.maxlength,
      this.keyboardType})
      : super(key: key);

  final TextEditingController myController;
  final bool obscureText;
  final String title;
  final String errMessage;
  final IconData icon;
  final Function validation;
  final int maxlength;
  final TextInputType keyboardType;

  @override
  _InputContainerState createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer>
    with TickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();

  AnimationController _controller;
  AnimationController _controllerBackground;

  bool showError;

  Animation<Color> animation;
  Animation<Color> iconAnimation;
  Animation<Color> animationBackground;

  IconData suffixIcon;

  bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
    showError = false;
    suffixIcon = Icons.visibility;

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _controllerBackground = AnimationController(
        vsync: this, duration: const Duration(microseconds: 300));

    animation = ColorTween(
      begin: Colors.grey,
      end: Colors.white,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    iconAnimation = ColorTween(
      begin: Colors.grey,
      end: Colors.white,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    animationBackground = ColorTween(
      begin: Colors.transparent,
      end: Colors.white,
    ).animate(_controllerBackground)
      ..addListener(() {
        setState(() {});
      });

    _focusNode.addListener(_handleTap);
  }

  @override
  void dispose() {
    _controller?.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (_focusNode.hasFocus) {
      _controllerBackground.forward();
      _controller.reverse();
    } else {
      _controllerBackground.reverse();
      if (widget.myController.text.length != 0) {
        _controller.forward();
      }
      widget.validation();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        TextField(
          key: Key('${widget.title}Input'),
          focusNode: _focusNode,
          controller: widget.myController,
          obscureText: obscureText,
          keyboardType: widget.keyboardType,
          autocorrect: true,
          maxLines: 1,
          textAlignVertical: const TextAlignVertical(y: .8),
          inputFormatters: [
            LengthLimitingTextInputFormatter(widget.maxlength),
          ],
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.icon,
                color: iconAnimation.value,
                size: 18,
              ),
              fillColor: animationBackground.value,
              filled: true,
              suffixIcon: widget.title == 'Password'
                  ? IconButton(
                      icon: Icon(
                        suffixIcon,
                        color: iconAnimation.value,
                        size: 18,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                          suffixIcon = obscureText
                              ? Icons.visibility
                              : Icons.visibility_off;
                        });
                      },
                    )
                  : null,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: iconAnimation.value)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: iconAnimation.value)),
              // labelText: widget.title,
              hintText: widget.title,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.white))),
          style: TextStyle(color: animation.value, height: .5),
          cursorColor: animation.value,
        ),
        widget.errMessage != null
            ? Container(
                height: 20.0,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Colors.orange,
                ),
                child: Center(
                    child: Text(
                  widget.errMessage,
                  style: TextStyle(color: Colors.white),
                )))
            : SizedBox()
      ],
    );
  }
}
