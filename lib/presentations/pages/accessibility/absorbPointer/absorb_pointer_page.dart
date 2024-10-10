import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({super.key});

  static const String tag = '/AbsorbPointerRoute';

  @override
  State<AbsorbPointerPage> createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'absorbing: یک property از نوع boolean که مشخص می‌کند آیا AbsorbPointer باید لمس‌ها را جذب کند یا خیر.absorbing: true (پیش‌فرض): لمس‌ها جذب می‌شوند و به فرزندان منتقل نمی‌شوند.absorbing: false: لمس‌ها به فرزندان منتقل می‌شوند و AbsorbPointer هیچ تاثیری نخواهد داشت.child: Widget فرزندی که می‌خواهید تعامل با آن را کنترل کنید.'),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                absorbing: true,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {
                    print("===> absorbing");
                  },
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
