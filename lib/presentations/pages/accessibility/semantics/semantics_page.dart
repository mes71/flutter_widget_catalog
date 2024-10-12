import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/presentations/widgets/fa_text.dart';

class SemanticsPage extends StatefulWidget {
  const SemanticsPage({super.key});
  static const String tag = '/SemanticsRoute';

  @override
  State<SemanticsPage> createState() => _SemanticsPageState();
}

class _SemanticsPageState extends State<SemanticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semantics'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaText(
              text:
                  'در Flutter، ویجت Semantics برای بهبود دسترسی (accessibility) در اپلیکیشن‌ها استفاده می‌شود. این ویجت اطلاعاتی را در اختیار ابزارهای دسترسی مانند صفحه‌خوان‌ها (screen readers) قرار می‌دهد تا کاربران با نیازهای خاص بتوانند راحت‌تر از اپلیکیشن استفاده کنند. به‌طور کلی، Semantics اطلاعات معنایی در مورد ویجت‌های داخلی خود ارائه می‌دهد. مثلاً: متن‌های موجود در ویجت‌ها را برای کاربر توصیف می‌کند. اقداماتی که کاربر می‌تواند انجام دهد (مانند فشار دادن دکمه) را مشخص می‌کند. وضعیت ویجت (مثل انتخاب شده یا نشده بودن) را به صفحه‌خوان‌ها انتقال می‌دهد.'),
          Semantics(
            label: 'This is a button',
            hint: 'Double tap to activate',
            child: ElevatedButton(
              onPressed: () {
                print('Button Clicked');
              },
              child: Text('Click Me'),
            ),
          )
        ],
      ),
    );
  }
}
