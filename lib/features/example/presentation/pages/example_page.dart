import 'package:base_bloc_3/base/base_widget.dart';
import 'package:base_bloc_3/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/index.dart';
import '../../../../common/widgets/buttons/app_button.dart';
import '../../domain/entity/player_entity.dart';
import '../bloc/example_bloc.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState
    extends BaseState<ExamplePage, ExampleEvent, ExampleState, ExampleBloc>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    bloc.pagingController.addPageRequestListener(
      (pageKey) => bloc.add(
        ExampleEvent.getPlayers(
          players: bloc.state.players,
          offset: pageKey,
        ),
      ),
    );
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: CustomListViewSeparated<PlayerEntity>(
                separatorBuilder: (c, i) => const Divider(),
                controller: bloc.pagingController,
                builder: (c, item, i) => PlayerItem(
                  data: item,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final total =
        context.select((ExampleBloc bloc) => bloc.state.players.length);
    return Container(
      decoration:
          BoxDecoration(color: Colors.greenAccent, border: Border.all()),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.svg.icProfile.svg(width: 16.w, height: 16.h),
          SizedBox(
            width: 8.w,
          ),
          Text("Count: $total"),
        ],
      ),
    );
  }
}

class PlayerItem extends StatelessWidget {
  final PlayerEntity data;
  const PlayerItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(data.firstName ?? ""),
          Text("Team: ${data.team}"),
        ],
      ),
    );
  }
}
