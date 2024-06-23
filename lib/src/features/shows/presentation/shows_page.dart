import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../shows.dart';

class ShowsPage extends StatefulWidget {
  const ShowsPage({super.key});

  @override
  State<ShowsPage> createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsPage> {
  late final ShowsCubit showsCubit;
  final _debouncer = Debouncer(delay: const Duration(seconds: 1));

  @override
  void initState() {
    super.initState();

    showsCubit = getIt<ShowsCubit>()..loadMore();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowsCubit, ShowsState>(
      bloc: showsCubit,
      builder: (context, state) {
        return Scaffold(
          // App bar
          appBar: const MainAppBar(),

          // Content
          body: Column(
            children: [
              // Listing
              Expanded(
                child: Builder(builder: (context) {
                  if (state.isLoadingMore && state.shows.isEmpty) {
                    return const LoadingList();
                  }

                  return Column(
                    children: [
                      // Field
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Seach for shows',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) => _debouncer.call(() {
                            showsCubit.loadMore(value);
                          }),
                        ),
                      ),

                      // Listing
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.shows.length,
                          itemBuilder: (context, index) {
                            final isLast =
                                (index + 1) == ((state.page + 1) * 250);
                            if (isLast && !state.isLoadingMore) {
                              showsCubit.loadMore();
                            }

                            final show = state.shows[index];

                            return ShowTile(show);
                          },
                        ),
                      ),
                    ],
                  );
                }),
              ),

              // Loading
              if (state.isLoadingMore && state.shows.isNotEmpty)
                const LoadingMore(),
            ],
          ),
        );
      },
    );
  }
}
