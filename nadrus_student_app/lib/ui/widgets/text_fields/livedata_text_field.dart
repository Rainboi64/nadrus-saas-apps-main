import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:formz/formz.dart';
import 'package:nadrus_student_app/extensions/formz_extension.dart';

import 'customized_text_form_field.dart';

class LiveDataTextField<T extends FormzInput> extends StatefulWidget {
  final String? label;
  final MutableLiveData<T> liveData;
  final Function(MutableLiveData<T>, String) onTextChanged;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final int maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final Function? onEditingComplete;
  final FocusNode? focusNode;
  final bool editable;
  final TextStyle? textStyle;
  final String? Function()? errorText;
  final bool obscureText;
  final TextCapitalization? textCapitalization;
  const LiveDataTextField({
    this.label,
    required this.liveData,
    required this.onTextChanged,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.onEditingComplete,
    this.focusNode,
    this.editable = true,
    this.textStyle,
    this.errorText,
    this.obscureText = false,
    this.textCapitalization,
    Key? key,
  }) : super(key: key);

  @override
  State<LiveDataTextField<T>> createState() => _LiveDataTextFieldState<T>();
}

class _LiveDataTextFieldState<T extends FormzInput>
    extends State<LiveDataTextField<T>> with ObserverMixin {
  final key = DateTime.now().toString();
  final TextEditingController textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => widget.focusNode ?? _focusNode;

  @override
  void initState() {
    // check if liveData has a value, this used when user fill the textField
    // and navigate to other screen and back
    if (widget.liveData.isNotEmpty()) {
      textController.text = widget.liveData.inputValue();
    }
    super.initState();
    doRegister();
  }

  @override
  void dispose() {
    doUnregister();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LiveDataBuilder<T>(
      data: widget.liveData,
      builder: (context, textInput) {
        if (textInput.value.toString().isEmpty && !focusNode.hasFocus) {
          // when clear params -> clear the textField
          textController.text = "";
        }

        return CustomizedTextFormField(
          key: Key(key),
          labelText: widget.label,
          controller: textController,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          maxLines: widget.maxLines,
          focusNode: focusNode,
          onTextChanged: (value) =>
              widget.onTextChanged(widget.liveData, value),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          prefixIconConstraints: widget.prefixIconConstraints,
          suffixIconConstraints: widget.suffixIconConstraints,
          onEditingComplete: widget.onEditingComplete,
          editable: widget.editable,
          textStyle: widget.textStyle,
          errorText: widget.errorText?.call(),
          obscureText: widget.obscureText,
          textCapitalization: widget.textCapitalization,
        );
      },
    );
  }

  @override
  FutureOr<void> registerObservers() {
    widget.liveData.observe(this, (input) {
      if (!focusNode.hasFocus) {
        textController.text = input.value;
      }
    });
  }
}
