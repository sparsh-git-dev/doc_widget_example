import 'package:flutter/material.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter_application_1/alert_dialog.dart';
import 'package:flutter_application_1/alert_dialog.doc_widget.dart';
import 'package:flutter_application_1/check_box.dart';
import 'package:flutter_application_1/check_box.doc_widget.dart';
import 'package:flutter_application_1/custom_elevated_button.dart';
import 'package:flutter_application_1/custom_elevated_button.doc_widget.dart';
import 'package:flutter_application_1/new_screen.doc_widget.dart';
import 'package:flutter_application_1/radio_button.dart';
import 'package:flutter_application_1/radio_button.doc_widget.dart';
import 'package:flutter_application_1/slider_button.dart';
import 'package:flutter_application_1/slider_button.doc_widget.dart';

double sliderValue = 0.20;
bool checkBoxValue = false;
bool radioButtonValue = false;
void main() {
  final heading = ElementPreview(
    document: SignInScreenDocWidget(),
    previews: [
      WidgetPreview(
        widget: const Text('Title------'),
        description: 'Heading with title',
      ),
      WidgetPreview(
        widget: const Text('Title 2'),
        description: 'Heading with title and subtitle',
      ),
    ],
  );
  final button = ElementPreview(
    document: ButtonDocWidget(),
    previews: [
      WidgetPreview(
        // ignore: deprecated_member_use_from_same_package
        widget: ElevatedButton(
          child: const Text('Title'),
          // ignore: avoid_print
          onPressed: () => print('Hello'),
        ),
        description: 'Default button.',
      ),
    ],
  );
  runApp(
    DocPreview(
      title: 'Example',
      sections: [
        ElementsSection(
          title: 'Elements',
          elements: [
            button,
            heading,
            ElementPreview(
              document: CustomElevatedButtonDocWidget(),
              previews: [
                WidgetPreview(
                  widget: GestureDetector(
                    onTap: () {},
                    child: CustomElevatedButton(
                      color: Colors.purpleAccent,
                      text: "I'm button",
                    ),
                  ),
                  description:
                      'The CustomElevatedButton class is a custom widget that extends `StatefulWidget` and creates an elevated button with customizable color, text, padding, and margin.',
                ),
              ],
            ),
            ElementPreview(
              document: CustomRadioButtonDocWidget(),
              previews: [
                WidgetPreview(
                    widget: StatefulBuilder(builder: (context, setstater) {
                      return CustomRadioButton(
                          label: "I'm radio button",
                          value: radioButtonValue,
                          onChanged: (onChanged) {
                            radioButtonValue = onChanged ?? false;
                          });
                    }),
                    description:
                        " The `CustomRadioButton` class is a stateful widget that represents a custom radio button with a  label and allows the user to toggle its value."),
              ],
            ),
            ElementPreview(
              document: CustomCheckboxListTileDocWidget(),
              previews: [
                WidgetPreview(
                  widget: StatefulBuilder(builder: (context, setstater) {
                    return CustomCheckboxListTile(
                      value: checkBoxValue,
                      onChanged: (onChanged) {
                        setstater(
                          () {
                            checkBoxValue = onChanged ?? false;
                          },
                        );
                      },
                      label: "I'm checkbox",
                      color: Colors.green,
                    );
                  }),
                  description:
                      " The `CustomCheckboxListTile` class is a custom implementation of a checkbox list tile in Dart, allowing for customization of the checkbox's value, onChanged callback, label, and color.             ], ",
                ),
              ],
            ),
            ElementPreview(
              document: CustomButtonDocWidget(),
              previews: [
                WidgetPreview(
                  widget: const CustomButton(
                    alertTitle: 'Alert box',
                    content: 'here, we can place the content',
                    okString: 'Sure',
                  ),
                  description:
                      "The `CustomAlertButton` class is a stateful widget that displays an elevated button and shows an alert dialog when pressed.",
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

class ButtonDocWidget implements Documentation {
  @override
  String get name => 'Heading';
  @override
  bool get hasState => false;
  @override
  String? get deprecation => null;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'title',
          isRequired: true,
          isNamed: true,
          type: 'String',
          description: 'Title description',
        ),
        PropertyDoc(
          name: 'subtitle',
          isRequired: false,
          isNamed: true,
          type: 'String?',
          description: 'Subtitle description',
        ),
      ];
  @override
  String get snippet => '''// With title
final headingTitle = Heading(title: 'Title');
// With subtitle
final headingWithSubtitle = Heading(title: 'Title', subtitle: 'Subtitle');
''';
}
