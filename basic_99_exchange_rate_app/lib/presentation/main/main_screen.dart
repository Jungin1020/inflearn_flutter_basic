import 'package:basic_99_exchange/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/pick_result_bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    final countries = state.exchanges.keys.toList();
    // viewModel.fetchExchanges(state.baseCountry);

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
                              Image.asset(
                                  'assets/images/exchange_rate_api_icon.png'),
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        PickResultBarWidget(
                          countries: countries,
                          country: state.baseCountry,
                          onPicked: (country) => viewModel.onChangeBaseCountry(country),
                        ),
                        const SizedBox(height: 24),
                        PickResultBarWidget(
                          countries: countries,
                          country: state.baseCountry,
                          onPicked: viewModel.onChangeTargetCountry,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      '2023.07.23 오전 12:01 UTC',
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade400),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
              // CountryPickerWidget(),
              // SizedBox(
              //   height: 250,
              //   child: CountryPickerWidget(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
