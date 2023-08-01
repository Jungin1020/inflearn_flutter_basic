import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/input_select_money_code_widget.dart';
import 'main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _baseMoneyController = TextEditingController();
  final _targetMoneyController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   Future.microtask(() {
  //     final viewModel = context.read<MainViewModel>();
  //
  //     viewModel.onEvent(const LoadData());
  //   });
  // }

  @override
  void dispose() {
    _baseMoneyController.dispose();
    _targetMoneyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    _baseMoneyController.text = state.baseMoney.toString();
    _targetMoneyController.text = state.targetMoney.toString();

    _baseMoneyController.selection = TextSelection.fromPosition(
        TextPosition(offset: _baseMoneyController.text.length));
    _targetMoneyController.selection = TextSelection.fromPosition(
        TextPosition(offset: _targetMoneyController.text.length));

    // final countries = state.exchanges.keys.toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 48,
                    // color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/exchange_rate_api_icon.png'),
                              const SizedBox(width: 5),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3),
                                  Text(
                                    'ExchangeRate-APP',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'with ExchangeRate-API',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    height: 240,
                    // color: Colors.grey,
                    child: Image.network(
                        'https://www.exchangerate-api.com/img/brochure/saas-1-edit-cc.png'),
                  ),
                  const SizedBox(height: 64),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      children: [
                        InputSelectMoneyCodeWidget(
                          baseMoneyController: _baseMoneyController,
                          targetMoneyController: _targetMoneyController,
                          viewModel: viewModel,
                          state: state,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      state.lastUpdateTime,
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade400),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
