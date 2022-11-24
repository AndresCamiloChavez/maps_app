import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';

class GpsAccessScreen extends StatelessWidget {
  const GpsAccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<GpsBloc, GpsState>(
          builder: (context, state) {
            print('LOG valor ${ state.isGpsEnabled }');
            return !state.isGpsEnabled ? const _EnableGPSMessage() : const _AccessButtton();
          },
        ),
      ),
    );
  }
}

class _AccessButtton extends StatelessWidget {
  const _AccessButtton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Es necesario acceso a GPS'),
          MaterialButton(
              child: const Text(
                'Solicitar acceso',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              shape: const StadiumBorder(),
              elevation: 0,
              splashColor: Colors.transparent,
              onPressed: () {})
        ],
      ),
    );
  }
}

class _EnableGPSMessage extends StatelessWidget {
  const _EnableGPSMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Debe de habilitar el GPS',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
    );
  }
}
