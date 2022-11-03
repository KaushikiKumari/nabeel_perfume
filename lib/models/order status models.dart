class OrderInfo {
  const OrderInfo({
    required this.id,
    required this.date,
 
    required this.deliveryProcesses,
  });

  final int id;
  final String date;
  
  final List<DeliveryProcess> deliveryProcesses;
}


class DriverInfo {
  const DriverInfo({
    required this.name,
    required
    this.thumbnailUrl,
  });

  final String name;
  final String thumbnailUrl;
}


class DeliveryProcess {
  const DeliveryProcess(
    this.status,
    this.name,
     {
    this.messages = const [],
  });

 

  final String name;
  final bool status;
  final List<DeliveryMessage> messages;

  bool get isCompleted => name == 'Done';
}


class DeliveryMessage {
  const DeliveryMessage(this.createdAt, this.message);

  final String createdAt; // final DateTime createdAt;
  final String message;

  @override
  String toString() {
    return '$createdAt $message';
  }
}
