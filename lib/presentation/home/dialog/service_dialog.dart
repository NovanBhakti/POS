import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/buttons.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/service/service_bloc.dart';

class ServiceDialog extends StatefulWidget {
  const ServiceDialog({super.key});

  @override
  State<ServiceDialog> createState() => _ServiceDialogState();
}

class _ServiceDialogState extends State<ServiceDialog> {
  @override
  void initState() {
    context.read<ServiceBloc>().add(const ServiceEvent.addService());
    super.initState();
  }

  int? serviceIdSelected;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'Service Charge',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: BlocBuilder<ServiceBloc, ServiceState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (service) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: service
                    .map(
                      (service) => ListTile(
                        title: Text(
                          '${service.name}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          '${service.value}%',
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        trailing: Checkbox(
                          value: service.id == serviceIdSelected,
                          onChanged: (value) {
                            setState(() {
                              if (service.id == serviceIdSelected) {
                                serviceIdSelected = 0;
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.removeServiceCharge(
                                          service),
                                    );
                              } else {
                                serviceIdSelected = service.id!;
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addServiceCharge(service),
                                    );
                              }
                            });
                          },
                        ),
                        onTap: () {
                          setState(() {
                            if (service.id == serviceIdSelected) {
                              serviceIdSelected = null;
                              context.read<CheckoutBloc>().add(
                                    CheckoutEvent.removeServiceCharge(service),
                                  );
                            } else {
                              serviceIdSelected = service.id!;
                              context.read<CheckoutBloc>().add(
                                    CheckoutEvent.addServiceCharge(service),
                                  );
                            }
                          });
                        },
                      ),
                    )
                    .toList(),
              );
            },
          );
        },
      ),
      actions: [
        Button.filled(
          onPressed: () {
            Navigator.of(context).pop();
          },
          label: 'Close',
        ),
      ],
    );
  }
}
