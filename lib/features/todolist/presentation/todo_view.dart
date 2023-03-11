import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todoapp/features/todolist/presentation/controller/todo_controller.dart';
import '../domain/item.dart';
import '../providers/item_list_provider.dart';

class ToDoView extends ConsumerWidget {
  const ToDoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = toDoControllerProvider;
    final controller = ref.read(provider.notifier);
    final state = ref.watch(provider);
    final todoNotifier = ref.watch(todoProvider.notifier);
    final todoState = ref.watch(todoProvider);
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text(
          "Todo List",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: TextField(
              controller: controller.controller,
              decoration: InputDecoration(
                hintText: "Bugün ne yapmayı düşünüyorsun?",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey,),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onSubmitted: (value) {
                controller.addItem(
                  Item(name: value),
                );
                controller.controller.clear();
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Consumer(
                builder: (context, watch, child) {
                  final itemList = state.itemList;

                  return ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      final Item item = itemList[index];

                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.blueGrey,
                              width: 2,
                            ),
                          ),
                          child: Dismissible(
                            key: ValueKey(item.id),
                            onDismissed: (direction) {
                              controller.deleteItem(item);
                            },
                            child:CheckboxListTile(
                              value: item.isDone, // Değiştirildi
                              title: Text(item.name ?? ""),
                              onChanged: (value) {
                                todoNotifier.changeIsDone(value!);
                                controller.updateItem(item.copyWith(isDone: value)); // Öğenin durumunu güncelleme
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
