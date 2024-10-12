import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/presentations/widgets/fa_text.dart';

class MergeSemanticsPage extends StatefulWidget {
  const MergeSemanticsPage({super.key});

  static const String tag = '/MergeSemanticsRoute';

  @override
  State<MergeSemanticsPage> createState() => _MergeSemanticsPageState();
}

class _MergeSemanticsPageState extends State<MergeSemanticsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MergeSemantics'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FaText(
              text:
                  'در Flutter، ویجت MergeSemantics به شما این امکان را می‌دهد که چندین ویجت را به عنوان یک موجودیت واحد درخت معنایی (semantic tree) ترکیب کنید تا ابزارهای دسترسی، مانند صفحه‌خوان‌ها، آن‌ها را به عنوان یک واحد منطقی ببینند. این کار به خصوص زمانی مفید است که شما چندین ویجت دارید که باید به صورت یکپارچه در نظر گرفته شوند و توضیحات یا دستورات تکه‌تکه نشوند. به‌طور پیش‌فرض، هر ویجت درخت معنایی خود را ایجاد می‌کند. اما با استفاده از MergeSemantics، شما می‌توانید چند ویجت را ترکیب کرده و از آن‌ها به عنوان یک واحد مستقل در دسترس‌پذیری استفاده کنید.'),
          const SizedBox(
            height: 10,
          ),
          MergeSemantics(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Enable notifications'),
                const SizedBox(
                  width: 10,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
