import 'package:flutter/material.dart';
import 'package:torob_flutter/views/popup.dart';
import 'package:torob_flutter/views/search.dart';

class Categories extends StatefulWidget {
  final categoryTitle;

  const Categories({this.categoryTitle});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                          Navigator.pop(context);
                        },
                        child: const Text("مبایل و تبلت", style: TextStyle(color: Colors.grey, fontSize: 16))
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const InkWell(child: const Text("لپتاپ", style: TextStyle(color: Colors.grey, fontSize: 16)))
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(widget.categoryTitle, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),
                  const Divider(color: Colors.grey,),
                  widget.categoryTitle == "موبایل و تبلت"?
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "گوشی موبایل",)));
                                },
                                  child: const Text('گوشی موبایل', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                              ),
                              const SizedBox(height: 15,),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "گوشی سامسونگ",)));
                                  },
                                  child: const Text('گوشی سامسونگ', style: TextStyle(fontSize: 16),)),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "گوشی اپل",)));
                                  },
                                  child: const Text('گوشی اپل', style: const TextStyle(fontSize: 16),)),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "گوشی شیائومی",)));
                                  },
                                  child: const Text('گوشی شیائومی', style: TextStyle(fontSize: 16),))
                            ],
                          ),
                          const SizedBox(width: 100,),
                          Column(
                            children: [
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "تبلت",)));
                                  },
                                  child: const Text('تبلت', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                              const SizedBox(height: 15,),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "تبلت سامسونگ",)));
                                  },
                                  child: const Text('تبلت سامسونگ', style: const TextStyle(fontSize: 16),)),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "تبلت اپل",)));
                                  },
                                  child: const Text('تبلت اپل', style: const TextStyle(fontSize: 16),)),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Search(categoryTitle: "تبلت شیائومی",)));
                                  },
                                  child: const Text('تبلت شیائومی', style: TextStyle(fontSize: 16),))
                            ],
                          )
                        ],
                      ):
                  Row(
                    children: [
                      Column(
                        children: [],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
