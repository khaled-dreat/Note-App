part of '../../utils/import/import.dart';

class LogInPage extends StatelessWidget {
  static const String nameRoute = "LogInPage";
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(63, 63, 156, 1),
                Color.fromRGBO(90, 70, 178, 1)
              ])),
              width: double.infinity,
              height: size.height * 0.4,
              child: Stack(
                children: [
                  Positioned(
                    top: 90,
                    left: 30,
                    child: bubble(),
                  ),
                  Positioned(
                    top: -40,
                    left: -30,
                    child: bubble(),
                  ),
                  Positioned(
                    top: -50,
                    right: -20,
                    child: bubble(),
                  ),
                  Positioned(
                    bottom: -50,
                    left: 10,
                    child: bubble(),
                  ),
                  Positioned(
                    bottom: 120,
                    right: 20,
                    child: bubble(),
                  )
                ],
              ),
            ),
            SafeArea(
                child: Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              child: const Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 100,
              ),
            )),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    //   height: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              offset: Offset(0, 5))
                        ]),
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "تسجيل الدخول",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                TextFormField(
                                  autocorrect: false,
                                  decoration: InputDecorati.inputDecoration(
                                      hintText: "أدخل اسم المستخدم",
                                      labelText: "اسم المستخدم",
                                      icon: const Icon(Icons.email_outlined)),
                                  validator: (value) {
                                    String source = '!@#%^&*()';
                                    RegExp regExp = RegExp(source);
                                    return regExp.hasMatch(value ?? "")
                                        ? null
                                        : "الرجاء أدخال البريد الاكتروني بشكل صحيح";
                                  },
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  autocorrect: false,
                                  decoration: InputDecorati.inputDecoration(
                                      hintText: "*********",
                                      labelText: "الرقم السري",
                                      icon: const Icon(
                                          Icons.lock_clock_outlined)),
                                  validator: (value) {
                                    return (value != null && value.length >= 6)
                                        ? null
                                        : "الرجاء ادخال اسم المستخدم أو كلمة المرور بشكل صحيح";
                                  },
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    AppRoute.goToNam(
                                        context, HomePage.nameRoute);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  disabledColor: Colors.green,
                                  color: Colors.deepPurple,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 80, vertical: 15),
                                    child: const Text(
                                      "تسجيل الدخول",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "انشاء حساب جديد",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container bubble() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
