import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:services_watcher/services_watcher.dart';

class ServicesWatcherWidget extends StatelessWidget {
  const ServicesWatcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesWatcherBloc, ServicesWatcherState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DLSBody.s14(
              'Socket',
              color: state.isSocketAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Matrix',
              color: state.isMatrixAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Rest',
              color: state.isRestAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Sip',
              color: state.isSipAlive ? Colors.green : Colors.red,
            ),
            DLSBody.s14(
              'Network',
              color: state.isNetworkAlive ? Colors.green : Colors.red,
            ),
          ],
        );
      },
    );
  }
}
