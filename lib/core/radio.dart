// ignore_for_file: public_member_api_docs, sort_constructors_first
//#TEMPLATE reuseable_radio_field
import 'package:flutter/material.dart';

class QRadioField extends StatefulWidget {
  final String label;
  final String? hint;
  final String? helper;
  final List<Map<String, dynamic>> items;
  final String? Function(List<Map<String, dynamic>> item)? validator;
  final Function(dynamic value, String? label, String? phone, String? address)
      onChanged;
  final String? value;

  const QRadioField({
    Key? key,
    required this.label,
    this.hint,
    this.helper,
    required this.items,
    this.validator,
    required this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  State<QRadioField> createState() => _QRadioFieldState();
}

class _QRadioFieldState extends State<QRadioField> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var item in widget.items) {
      items.add(Map.from(item));
      if (items.last["value"] == widget.value) {
        items.last["checked"] = true;
      }
    }
  }

  setAllItemsToFalse() {
    for (var item in items) {
      item["checked"] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: FormField(
        initialValue: false,
        validator: (value) => widget.validator!(items),
        enabled: true,
        builder: (FormFieldState<bool> field) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText: widget.label,
              errorText: field.errorText,
              border: InputBorder.none,
              helperText: widget.helper,
              hintText: widget.hint,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                var item = items[index];
                return RadioListTile(
                  contentPadding: const EdgeInsets.all(0.0),
                  title: Text("${item["label"]}"),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 12.0,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "${item["phone"]}",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_sharp,
                            size: 12.0,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "${item["address"]}",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  groupValue: true,
                  value: item["checked"] ?? false,
                  onChanged: (val) {
                    setAllItemsToFalse();
                    bool newValue = val ? false : true;
                    items[index]["checked"] = newValue;
                    field.didChange(true);
                    setState(() {});

                    String? label = items[index]["label"];
                    String? phone = items[index]["phone"];
                    String? address = items[index]["address"];
                    int foundIndex =
                        items.indexWhere((item) => item["label"] == label);
                    dynamic value = items[foundIndex]["value"];
                    widget.onChanged(value, label, phone, address);
                    // print(address);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

//#END
