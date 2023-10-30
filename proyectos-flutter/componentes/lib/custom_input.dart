import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.type = TextInputType.text,
    this.obscure = false,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final TextInputType type;
  final bool obscure;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool showPassword = false;
  @override
  void initState() {
    // es buen momento, para inicialziar variables
    // hacer peticiones al servidor (inicizalizar data)
    showPassword = widget.obscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.type,
      obscureText: showPassword,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.obscure
            ? IconButton(
                onPressed: () {
                  showPassword = !showPassword;
                  setState(() {});
                },
                icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
