// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  final _debouncer = Debouncer(delay: const Duration(milliseconds: 600));

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
                  if (state.isLoading && state.shows.isEmpty) {
                    return const LoadingList();
                  }

                  return Column(
                    children: [
                      // Field
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: TextFormField(
                          initialValue: state.showName ?? '',
                          decoration: InputDecoration(
                            suffixIcon: state.showName != null
                                ? IconButton(
                                    onPressed: () {
                                      showsCubit.loadMore( );
                                    },
                                    icon: const Icon(
                                      Icons.close,
                                    ),
                                  )
                                : null,
                            hintText: 'Seach for shows...',
                            border: const OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if (value.isEmpty) return;

                            _debouncer.call(() {
                              showsCubit.loadMore(value);
                            });
                          },
                        ),
                      ),

                      // Listing
                      Expanded(
                        child: Builder(builder: (context) {
                          if (state.errorMessage != null) {
                            return ErrorData(state.errorMessage!);
                          }

                          return ListView.builder(
                            itemCount: state.shows.length,
                            itemBuilder: (context, index) {
                              final isLast =
                                  (index + 1) == ((state.page + 1) * 250);
                              if (isLast && !state.isLoading) {
                                showsCubit.loadMore();
                              }

                              final show = state.shows[index];

                              return ShowTile(show);
                            },
                          );
                        }),
                      ),
                    ],
                  );
                }),
              ),

              // Loading
              if (state.isLoading && state.shows.isNotEmpty)
                const LoadingMore(),
            ],
          ),
        );
      },
    );
  }
}
