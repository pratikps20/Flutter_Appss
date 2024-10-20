import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todobasic/todomodel.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  @override
  State createState() => _ToDoApp();
}

class _ToDoApp extends State {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();

  List todoCards = [
    Todomodel(title: "Flutter", description: "dart", date: "20 Oct 2024"),
    Todomodel(title: "Flutter", description: "dart", date: "20 Oct 2024"),
    Todomodel(title: "Flutter", description: "dart", date: "20 Oct 2024"),
  ];

  var listofColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  void submit(bool doedit, [Todomodel? todoobj]) {
    if (titlecontroller.text.trim().isNotEmpty &&
        descriptioncontroller.text.trim().isNotEmpty &&
        datecontroller.text.trim().isNotEmpty) {
      if (doedit) {
        todoobj!.title = titlecontroller.text;
        todoobj!.description = descriptioncontroller.text;
        todoobj!.date = datecontroller.text;
      } else {
        todoCards.add(Todomodel(
            title: titlecontroller.text,
            description: descriptioncontroller.text,
            date: datecontroller.text));
      }
    }
    Navigator.of(context).pop();
    clearControllers();
    setState(() {});
  }

  void clearControllers() {
    titlecontroller.clear();
    descriptioncontroller.clear();
    datecontroller.clear();
  }

  void showBottomSheet(bool doedit, [Todomodel? todoobj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 12.0,
              right: 12.0,
              left: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Todo",
                      style: GoogleFonts.quicksand(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 139, 148, 1.0),
                  ),
                ),
                TextField(
                  controller: titlecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 139, 148, 1.0),
                  ),
                ),
                TextField(
                  controller: descriptioncontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 139, 148, 1.0),
                  ),
                ),
                TextField(
                  controller: datecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                    ),
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );
                    String formattedDate =
                        DateFormat.yMMMMd().format(pickedDate!);

                    setState(
                      () {
                        datecontroller.text = formattedDate;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (doedit == true) {
                        submit(true, todoobj);
                      } else {
                        submit(false);
                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text(
          "Todo App",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: todoCards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: listofColors[index % listofColors.length],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            "assets/P.jpg",
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                todoCards[index].title,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                todoCards[index].description,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            todoCards[index].date,
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  titlecontroller.text = todoCards[index].title;
                                  descriptioncontroller.text =
                                      todoCards[index].description;
                                  datecontroller.text = todoCards[index].date;
                                  showBottomSheet(
                                    true,
                                    todoCards[index],
                                  );
                                  setState(() {});
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  todoCards.remove(todoCards[index]);
                                  setState(() {});
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clearControllers();
          showBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1.0),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
