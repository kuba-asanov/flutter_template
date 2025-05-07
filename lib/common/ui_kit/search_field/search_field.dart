// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter/services.dart';
import 'package:flutter_template/common/ui_kit/app_text_styles.dart';

/// Компонент Search из DesignSystem
class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.placeholder,
    required this.controller,
    required this.onChanged,
    this.autofocus = false,
    this.keyboardType,
    this.prefixIconColor,
    this.inputFormatters,
  });

  final String placeholder;
  final void Function(String) onChanged;
  final TextEditingController controller;
  final bool autofocus;
  final TextInputType? keyboardType;
  final Color? prefixIconColor;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        keyboardType: keyboardType,
        autofocus: autofocus,
        onChanged: onChanged,
        controller: controller,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF2F2F7),
          hintText: placeholder,
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () {
                    controller.clear();
                    onChanged(controller.text);
                    FocusScope.of(context).requestFocus(FocusNode()); // remove keyboard
                  },
                )
              : null,
          hintStyle: AppTextStyles.subtitle3().copyWith(
            color: Color(0xFF8E8E93),
          ),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        style: AppTextStyles.subtitle3(),
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
