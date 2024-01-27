import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/extensions/async_extension.dart';
import 'package:nadrus_teacher_app/ui/core/layouts/theme_widget.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/resources/themes/themes.dart';

class CustomizedTextFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final Duration debounceDuration;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final Function(String)? onTextChanged;
  final bool editable;
  final bool obscureText;
  final int maxLines;
  final int minLines;
  final FocusNode? focusNode;
  final bool errorOnFocus;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final Function? onEditingComplete;
  final TextCapitalization? textCapitalization;
  const CustomizedTextFormField({
    this.labelText,
    this.focusNode,
    this.hintText,
    this.errorText,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.debounceDuration = const Duration(),
    this.textStyle,
    this.onTextChanged,
    this.validator,
    this.editable = true,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.errorOnFocus = false,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.onEditingComplete,
    this.textCapitalization,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomizedTextFormField> createState() =>
      CustomizedTextFormFieldState();
}

class CustomizedTextFormFieldState extends State<CustomizedTextFormField> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => widget.focusNode ?? _focusNode;
  late Debouncer debouncer;

  @override
  void initState() {
    debouncer = Debouncer(delay: widget.debounceDuration);
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWidget(
      builder: (context, themeData) {
        bool hasError =
            (focusNode.hasFocus && widget.errorOnFocus) || !focusNode.hasFocus;
        Color labelColor() {
          if (hasError && widget.errorText != null) {
            return DesignColors.errorColor;
          } else if (focusNode.hasFocus) {
            return themeData.primaryColor;
          } else {
            return DesignColors.grey;
          }
        }

        return AbsorbPointer(
          absorbing: !widget.editable,
          child: TextFormField(
            key: formKey,
            focusNode: focusNode,
            controller: widget.controller,
            textAlign: widget.textAlign,
            textInputAction: widget.textInputAction,
            keyboardType: widget.keyboardType,
            style: widget.textStyle ?? themeData.textTheme.bodySmall,
            obscureText: widget.obscureText,
            autocorrect: false,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            autofocus: false,
            keyboardAppearance: Brightness.dark,
            validator: widget.validator,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.none,
            decoration: InputDecoration(
              labelText: widget.labelText,
              hintText: widget.hintText,
              errorText: hasError ? widget.errorText : null,
              filled: true,
              fillColor: themeData.scaffoldBackgroundColor,
              enabled: widget.editable,
              hintStyle: hintStyle(),
              labelStyle: labelStyle().copyWith(color: labelColor()),
              errorStyle: errorStyle(),
              enabledBorder: textFormFieldEnabledBorder(),
              focusedBorder: textFormFieldFocusedBorder(themeData),
              errorBorder: textFormFieldErrorBorder(themeData),
              focusedErrorBorder: textFormFieldErrorBorder(themeData),
              disabledBorder: textFormFieldEnabledBorder(),
              prefix: widget.prefix,
              prefixIcon: widget.prefixIcon,
              prefixIconConstraints: widget.prefixIconConstraints,
              suffix: widget.suffix,
              suffixIcon: widget.suffixIcon,
              suffixIconConstraints: widget.suffixIconConstraints,
              contentPadding: const EdgeInsets.all(12),
            ),
            onChanged: (val) {
              debouncer(() {
                widget.validator?.call(val);
                widget.onTextChanged?.call(val);
              });
            },
            onFieldSubmitted: (val) {
              Form.of(context).validate();
            },
            onSaved: (val) {
              Form.of(context).validate();
            },
            onEditingComplete: () {
              if (widget.onEditingComplete != null) {
                widget.onEditingComplete?.call();
              } else {
                // go to next textField
                try {
                  Form.of(context).validate();
                  FocusScope.of(context).nextFocus();
                } catch (_) {}
              }
            },
          ),
        );
      },
    );
  }
}
