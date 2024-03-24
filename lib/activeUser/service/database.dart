import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addEmployeeDetails(
    Map<String, dynamic> employeeInfoMap, String id) async {
      return await FirebaseFirestore.instance
      .collection("Active Users")
      .doc(id)
      .set(employeeInfoMap);
    }
    Future<Stream<QuerySnapshot>> getEmployeeDetails()async{
      return await FirebaseFirestore.instance.collection("Active Users").snapshots();
    }
    Future updateEmployeeDetails(String id, Map<String, dynamic> updateInfo)async{
      return await FirebaseFirestore.instance.collection("Active Users").doc(id).update(updateInfo);
    }
    Future<void> deleteEmployeeDetails(String id) async {
    try {
      await FirebaseFirestore.instance.collection('Active Users').doc(id).delete();
    } catch (e) {
      print("Error deleting chat details: $e");
    }
  }
}