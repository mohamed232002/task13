import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/money_cubit.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(this.name, this.price, this.fun, {Key? key})
      : super(key: key);

  var name = TextEditingController();
  var price = TextEditingController();
  VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoneyCubit, MoneyState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = MoneyCubit.get(context);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: name,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: price,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: fun
              , child: Text("Add")),
            ),
            ElevatedButton(onPressed: (
                ){
              cubit.getTotal();
            }, child:Text('total')),
          ],
        );
      },
    );
  }
}
