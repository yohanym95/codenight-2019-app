import 'package:flutter/material.dart';

/// Use this widget in place of [DropdownButtonFormField] until support
/// for [isExapanded] and [isDense] is added. See:
/// <https://github.com/flutter/flutter/issues/9211>
/// A convenience widget that wraps a [DropdownButton] in a [FormField].
class MultilineDropdownButtonFormField<T> extends FormField<T> {
  /// Creates a [DropdownButton] widget wrapped in an [InputDecorator] and
  /// [FormField].
  ///
  /// The [DropdownButton] [items] parameters must not be null.
  MultilineDropdownButtonFormField({
    Key key,
    T value,
    @required List<DropdownMenuItem<T>> items,
    this.onChanged,
    InputDecoration decoration = const InputDecoration(),
    FormFieldSetter<T> onSaved,
    FormFieldValidator<T> validator,
    Widget hint,
    bool isExpanded = false,
    bool isDense = true,
  }) : assert(decoration != null),
       assert(isExpanded != null),
       assert(isDense != null),
       super(
         key: key,
         onSaved: onSaved,
         initialValue: value,
         validator: validator,
         builder: (FormFieldState<T> field) {
           final InputDecoration effectiveDecoration = decoration
             .applyDefaults(Theme.of(field.context).inputDecorationTheme);
           return InputDecorator(
             decoration: effectiveDecoration.copyWith(errorText: field.errorText),
             isEmpty: value == null,
             child: DropdownButtonHideUnderline(
               child: DropdownButton<T>(
                 isExpanded: isExpanded,
                 isDense: isDense,
                 value: value,
                 items: items,
                 hint: hint,
                 onChanged: field.didChange,
               ),
             ),
           );
         }
       );

  /// Called when the user selects an item.
  final ValueChanged<T> onChanged;

  @override
  FormFieldState<T> createState() => _MultilineDropdownButtonFormFieldState<T>();
}

class _MultilineDropdownButtonFormFieldState<T> extends FormFieldState<T> {
  @override
  MultilineDropdownButtonFormField<T> get widget => super.widget;

  @override
  void didChange(T value) {
    super.didChange(value);
    if (widget.onChanged != null)
      widget.onChanged(value);
  }
}