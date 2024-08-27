import 'package:first_bloc_calculate/ui/cubit/main_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //text conrollers
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //answer text
              BlocBuilder<MainPageCubit, double>(
                builder: (context, answer) {
                  return Text(
                    answer.toStringAsFixed(2),
                    style: const TextStyle(
                        fontSize: 27, fontWeight: FontWeight.bold),
                  );
                },
              ),
              const SizedBox(height: 16),
              //text field first
              TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              //text field second
              //sum button
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        context
                            .read<MainPageCubit>()
                            .calculateSum(_controller1.text, _controller2.text);
                      },
                      child: const Text(
                        "Sum",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        context.read<MainPageCubit>().calculateMulti(
                            _controller1.text, _controller2.text);
                      },
                      child: const Text(
                        "Multi",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        context.read<MainPageCubit>().delete();
                        _controller1.clear();
                        _controller2.clear();
                      },
                      child: const Text(
                        "Clean",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                ],
              )
              //multi button
            ],
          ),
        ),
      ),
    );
  }
}
