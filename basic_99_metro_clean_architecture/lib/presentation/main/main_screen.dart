import 'package:basic_99_metro_clean_architecture/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seoul Subway'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {
                    viewModel.fetchSubway(controller.text);
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
                child: ListView.builder(
                    itemCount: state.subways.length,
                    itemBuilder: (context, index) {
                      final subway = state.subways[index];
                      final subwayBound = subway.trainLineName.split("-")[0];
                      final subwayHeading = subway.trainLineName.split("-")[1];
                      final subwayIconColor =
                          subway.trainStatus == '일반' ? Colors.grey : Colors.red;

                      return GestureDetector(
                        child: ListTile(
                          leading: Icon(Icons.subway, color: subwayIconColor),
                          trailing: Icon(
                            Icons.chevron_right_outlined,
                            color: Colors.grey.shade400,
                          ),
                          title: Row(
                            children: [
                              Text(
                                subwayBound,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800),
                              ),
                              Expanded(
                                child: Text(
                                  subwayHeading,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          context.push('/detail', extra: subway);
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
