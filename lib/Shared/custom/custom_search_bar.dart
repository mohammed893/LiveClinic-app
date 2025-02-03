import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveclinic/cubit/cubit.dart';
import 'package:liveclinic/cubit/states.dart';

class Search extends StatelessWidget {
  final TextEditingController searchController;
  const Search({super.key , required this.searchController});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClinicCubit, ClinicStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            SearchBar(
              controller: searchController,
              hintText: 'search',
              leading:const Icon(Icons.search),
              onChanged:(value){
                 ClinicCubit.get(context).getSearch(value);
              },
              onSubmitted: (value) {
                print(value);
              },
            ),
            if (state is GetSearchSuccessState)
              Expanded(
                child: ListView.builder(
                  itemCount: ClinicCubit.get(context).search.length,
                  itemBuilder: (context, index) {
                    ClinicCubit.get(context).search[index];
                    return ListTile(
                      title: Text( ClinicCubit.get(context).search[index]['title'] ?? 'No title'),
                      subtitle: Text( ClinicCubit.get(context).search[index]['description'] ?? 'No description'),
                    );
                  },
                ),
              ),
            if (state is NewsGetSearchLoadingState)
              const Center(child: CircularProgressIndicator()),
          ],
        );
      },
    );
  }
}