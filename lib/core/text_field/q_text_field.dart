// ignore_for_file: public_member_api_docs, sort_constructors_first
//#TEMPLATE reuseable_text_field
import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String? id;
  final String label;
  final String? value;
  final String? hint;
  final String? helper;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool enabled;
  final int? maxLength;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextInputType? keyboardType;

  const QTextField({
    Key? key,
    this.id,
    required this.label,
    this.value,
    this.hint,
    this.helper,
    this.validator,
    this.obscure = false,
    this.enabled = true,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = widget.value ?? "";
    super.initState();
  }

  getValue() {
    return textEditingController.text;
  }

  setValue(value) {
    textEditingController.text = value;
  }

  resetValue() {
    textEditingController.text = "";
  }

  focus() {
    focusNode.requestFocus();
  }

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        cursorColor: Colors.black,
        enabled: widget.enabled,
        controller: textEditingController,
        focusNode: focusNode,
        validator: widget.validator,
        maxLength: widget.maxLength,
        obscureText: widget.obscure,
        decoration: InputDecoration(
          fillColor: Colors.black,
          focusColor: const Color(0xFF000000),
          labelText: widget.label,
          suffixIcon: Icon(
            widget.suffixIcon ?? Icons.abc,
          ),
          helperText: widget.helper,
          hintText: widget.hint,
        ),
        onChanged: (value) {
          widget.onChanged!(value);
        },
        onFieldSubmitted: (value) {
          if (widget.onSubmitted != null) widget.onSubmitted!(value);
        },
      ),
    );
  }
}

//#END
