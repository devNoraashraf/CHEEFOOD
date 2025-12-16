import 'package:flutter/material.dart';

class OtpCodeField extends StatefulWidget {
  final int length;
  const OtpCodeField({super.key, this.length = 4});

  @override
  State<OtpCodeField> createState() => _OtpCodeFieldState();
}

class _OtpCodeFieldState extends State<OtpCodeField> {
  late final List<TextEditingController> _controllers;
  late final List<FocusNode> _nodes;

  static const _orange = Color.fromRGBO(241, 116, 60, 1);
  static const _greyLine = Color.fromRGBO(200, 200, 200, 1);

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _nodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in _controllers) c.dispose();
    for (final n in _nodes) n.dispose();
    super.dispose();
  }

  void _onChanged(int index, String value) {
    // allow only 1 char
    if (value.length > 1) {
      _controllers[index].text = value.characters.last;
      _controllers[index].selection = const TextSelection.collapsed(offset: 1);
    }

    if (value.isNotEmpty && index < widget.length - 1) {
      _nodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _nodes[index - 1].requestFocus();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.length, (i) {
        final hasValue = _controllers[i].text.isNotEmpty;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: 42,
            child: Column(
              children: [
                TextField(
                  controller: _controllers[i],
                  focusNode: _nodes[i],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(69, 69, 69, 1),
                  ),
                  decoration: const InputDecoration(
                    counterText: '',
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  onChanged: (v) => _onChanged(i, v),
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: hasValue ? _orange : _greyLine,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
