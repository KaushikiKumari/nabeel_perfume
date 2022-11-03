import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nabeel_perfume/pages/dashboard/dashboard_controller.dart';
import 'package:nabeel_perfume/utils/colors.dart';
import 'package:nabeel_perfume/utils/strings_style.dart';
import 'package:timelines/timelines.dart';
import 'package:nabeel_perfume/models/order%20status%20models.dart';

// import '../widget.dart';

const kTileHeight = 50.0;

class PackageDeliveryTrackingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(DashboardController(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
              icon: Icon(Icons.clear, size: 25, color: Colors.white))
        ],
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        excludeHeaderSemantics: false,
        backgroundColor: HexColor("#CC9D76"),
        centerTitle: true,
        title: Text("ORDER STATUS", style: StringsStyle.registertitlestyle),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                color: HexColor("#CC9D76"),
              ),
            ),
            preferredSize: Size.fromHeight(15)),
      ),
      backgroundColor: HexColor("#CC9D76"),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            final data = _data(index + 1);
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(height: 4.0),
                _DeliveryProcesses(processes: data.deliveryProcesses),
                Divider(height: 1.0),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _InnerTimeline extends StatelessWidget {
  const _InnerTimeline({
    required this.messages,
  });

  final List<DeliveryMessage> messages;

  @override
  Widget build(BuildContext context) {
    bool isEdgeIndex(int index) {
      return index == 0 || index == messages.length + 1;
    }

    return Padding(
        padding: const EdgeInsets.all(10), child: Text(messages[0].toString()));
  }
}

class _DeliveryProcesses extends StatelessWidget {
  const _DeliveryProcesses({Key? key, required this.processes})
      : assert(processes != null),
        super(key: key);

  final List<DeliveryProcess> processes;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Color(0xff9b9b9b),
        fontSize: 13,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            color: HexColor("#CC9D76"),
            indicatorTheme: IndicatorThemeData(
              position: 0,
              size: 25.0,
            ),
            connectorTheme: ConnectorThemeData(
              thickness: 2,
            ),
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: processes.length,
            contentsBuilder: (_, index) {
              if (processes[index].isCompleted) return null;

              return Padding(
                padding: EdgeInsets.only(bottom: 30, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      processes[index].name,
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                    ),
                    _InnerTimeline(messages: processes[index].messages),
                  ],
                ),
              );
            },
            indicatorBuilder: (_, index) {
              if (processes[index].status == true) {
                return DotIndicator(
                  color: HexColor("#CC9D76"),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12.0,
                  ),
                );
              } else {
                return OutlinedDotIndicator(
                  borderWidth: 2.5,
                );
              }
            },
            connectorBuilder: (_, index, ___) => SolidLineConnector(
                color: processes[index].status == true
                    ? HexColor("#CC9D76")
                    : null),
          ),
        ),
      ),
    );
  }
}

OrderInfo _data(int id) => OrderInfo(
      date: "1/2/2222",
      id: 1,
      deliveryProcesses: [
        //    _DeliveryProcess.complete(),
        //  _DeliveryProcess.complete(),
        DeliveryProcess(
          true,
          'Order placed',
          messages: [
            DeliveryMessage(
                '', 'Your order #212423 was placed on 23th\n  November 2019'),
            DeliveryMessage('11:30am ', 'Reached halfway mark'),
          ],
        ),
        DeliveryProcess(
          true,
          'Processing',
          messages: [
            DeliveryMessage('',
                'Your order still needs to be processed by\n  our store before sending it to you.'),
            DeliveryMessage('11:30am ', 'Reached halfway mark'),
          ],
        ),
        DeliveryProcess(
          true,
          'Picked up by the courier',
          messages: [
            DeliveryMessage('',
                'Your order has been picked up by one of\n  our couriers and its on your way.'),
            DeliveryMessage('11:30am ', 'Reached halfway mark'),
          ],
        ),

        DeliveryProcess(
          false,
          'Delivering',
          messages: [
            DeliveryMessage('',
                'The package is on your way.Make sure\n  to be at the location to meet the courier.'),
            DeliveryMessage('11:35am ', 'Package delivered by m.vassiliades'),
          ],
        ),
        DeliveryProcess(
          false,
          'Delivered',
          messages: [
            DeliveryMessage('',
                'TIt seems like the package has arrived to\n  you.Hope you are happy with it!'),
            DeliveryMessage('11:35am ', 'Package delivered by m.vassiliades'),
          ],
        ),
      ],
    );
