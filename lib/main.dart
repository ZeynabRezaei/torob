import 'package:flutter/material.dart';
import 'package:torob_flutter/views/categories.dart';
import 'package:torob_flutter/views/popup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Categories(categoryTitle: "موبایل و تبلت",)));
                      },
                        child: const Text("موبایل و تبلت", style: const TextStyle(color: Colors.grey, fontSize: 16))
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Categories(categoryTitle: "لپتاپ",)));
                      },
                        child: const InkWell(child:  Text("لپتاپ", style: TextStyle(color: Colors.grey, fontSize: 16)))
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    PopUp(
                      context,
                      color: Colors.white,
                      body: Container(
                        width: 200,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:  [
                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                      child: const Icon(Icons.close_rounded)
                                  ),
                                ],
                              ),
                            ),
                            const Text('ورود یا ثبت‌نام', style: TextStyle(color: Colors.black, fontSize: 16,), textAlign: TextAlign.center,),
                            const SizedBox(height: 10,),
                            Column(
                              children: [
                                const Text("شماره موبایل", style: TextStyle(fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: const BorderRadius.all(Radius.circular(6))
                                    ),
                                    child: TextFormField(
                                      autofocus: true,
                                      enableSuggestions: true,
                                      // autofillHints: ,
                                      onChanged: (value) {},
                                      style: const TextStyle(fontSize: 16),
                                      maxLines: 1,
                                      cursorColor: Colors.red,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          focusColor: Colors.grey,
                                          fillColor: Colors.red),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: const Center(child: const Text("دریافت کد", style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ), isDismissible: true,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: const BorderRadius.all(Radius.circular(2))

                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("ورود / ثبت نام", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.5,

      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/medium.png", height: 100,),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("ترب", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 40),),
                      Text("مقایسه قیمت میلیون ها محصول بین هزاران فروشگاه", style: TextStyle(color: Colors.grey, fontSize: 16),)
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(6))
                  ),
                  child: TextFormField(
                    autofocus: true,
                    enableSuggestions: true,
                    // autofillHints: ,
                    onChanged: (value) {},
                    style: const TextStyle(fontSize: 16),
                    maxLines: 1,
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                        hintText: "نام کالا را وارد کنید",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        focusColor: Colors.grey,
                        fillColor: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
