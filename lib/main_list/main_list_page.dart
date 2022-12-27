import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:extended_image/extended_image.dart';

import 'package:flutter_team_compliment/main_list/main_list_controller.dart';

class MainListPage extends GetView<MainListController> {
  const MainListPage({super.key});
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final userName = "신민석";
  final userTeam = "프로덕션 팀";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("메인리스트"),
      ),
      body: Column(children: [_profileSection(), _buildTeamMember()]),
    );
  }

  // 프로필 영역
  Widget _profileSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  userTeam,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          ExtendedImage.asset(height: 70, width: 70, 'assets/test.jpeg')
        ],
      ),
    );
  }

  // 팀원 리스트 build
  Widget _buildTeamMember() {
    return Expanded(
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          itemCount: controller.teamMember.length * 2,
          itemBuilder: (context, i) {
            if (i.isOdd) return const Divider();

            final index = i ~/ 2;
            return _buildMemberRow(controller.teamMember[index]);
          }),
    );
  }

  Widget _buildMemberRow(member) {
    return ListTile(
      title: Text(
        member["name"],
        style: _biggerFont,
      ),
    );
  }
}
