import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalenderDropdownWidget extends StatefulWidget {
  const CalenderDropdownWidget({
    Key? key,
    required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  State<CalenderDropdownWidget> createState() => _CalenderDropdownWidgetState();
}

class _CalenderDropdownWidgetState extends State<CalenderDropdownWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: widget.mainColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                DateFormat('dd MMMM yy').format(
                  selectedDate,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: widget.mainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
