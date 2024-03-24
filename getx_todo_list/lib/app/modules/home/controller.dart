import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_todo_list/app/data/models/task.dart';
import 'package:getx_todo_list/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});

  final tasks = <Task>[].obs;
  final formKey = GlobalKey<FormState>();
  final editController = TextEditingController();
  final chipIndex = 0.obs;
  final deleting = false.obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(
        tasks,
        (_) => taskRepository.writeTasks(
            tasks)); // ever komutu tasks içinde her bir değişiklik olduğunda bu komutu
    // çalıştır demek oluyor. Yani tasks'a yeni bir item eklendiğinde bunu database'e yaz demiş oluyoruz.
  }

  @override
  void onClose() {
    editController.dispose();
    super.onClose();
  }

  void changeChipIndex(int value) {
    chipIndex.value = value;
  }

  void changeDleting(bool value) {
    deleting.value = value;
  }

  bool addTask(Task task) {
    if (tasks.contains(task)) {
      return false;
    }
    tasks.add(task);
    return true;
  }

  void deleteTask(Task task) {
    tasks.remove(task);
  }
}
