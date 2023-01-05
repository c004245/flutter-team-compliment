import 'package:get/get.dart';

class MainListController extends GetxController {
  RxList teamMember = <Map<String, dynamic>>[].obs;

  @override
  void onInit() async {
    super.onInit();
    addTeamMember({"id": "1", "name": "신민석"});
    addTeamMember({"id": "2", "name": "조현욱"});
    addTeamMember({"id": "3", "name": "오어진"});
    addTeamMember({"id": "4", "name": "배혜진"});
    addTeamMember({"id": "5", "name": "송민지"});
    addTeamMember({"id": "6", "name": "조영찬"});
    addTeamMember({"id": "7", "name": "플러터"});
    addTeamMember({"id": "8", "name": "자바"});
    addTeamMember({"id": "9", "name": "구글"});
    addTeamMember({"id": "10", "name": "아마존"});
    addTeamMember({"id": "11", "name": ""});
  }

  void addTeamMember(memberInfo) {
    teamMember.add(memberInfo);
  }

  @override
  void dependencies() {
    Get.put(MainListController());
  }
}
