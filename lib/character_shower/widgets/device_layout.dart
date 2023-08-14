import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:show_characters_viewer/character_shower/character_shower.dart';

class DeviceLayout extends HookConsumerWidget {
  const DeviceLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceService = ref.watch(deviceServiceProvider);
    final isMobileDevice = deviceService.isMobileDevice();

    if (isMobileDevice) {
      return const Portal(child: SearchPage());
    } else {
      return const Portal(child: TabletLayout());
    }
  }
}

class DeviceService {
  bool isMobileDevice() {
    return Device.get().isPhone;
  }
}

final deviceServiceProvider = Provider((ref) => DeviceService());
