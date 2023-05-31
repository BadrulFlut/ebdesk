import 'package:ebdeskgpt/module/chart/widget/bar_chart.dart';
import 'package:ebdeskgpt/module/chart/widget/line_chart.dart';
import 'package:ebdeskgpt/module/chart/widget/message_widget_chat.dart';
import 'package:ebdeskgpt/module/chart/widget/pie_chart.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/chart_controller.dart';

class ChartView extends StatefulWidget {
  const ChartView({Key? key}) : super(key: key);

  Widget build(context, ChartController controller) {
    controller.view = this;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          width: w,
          height: h,
          color: Colors.white,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 56),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: w,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xFFECF1EC)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/backbutton.png"))),
                        ),
                      ),
                      textNunito("Chat", 20, Colors.black, FontWeight.w600),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icons/clock.png"))),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MessageWidgetChat1(
                        isMe: true,
                        w: w,
                        chat2: "",
                        chat1: "Tampilkan top person dalam bentuk Bar Chart",
                        widget: SizedBox(),
                        controller: controller,
                      ),
                      MessageWidgetChat1(
                        isMe: false,
                        w: w,
                        chat1:
                            "Berikut ini, hasil top person dalam bentuk Bar Chart :",
                        chat2: "",
                        widget: Builder(
                          builder: (context) {
                            return Container(
                              color: Theme.of(context).cardColor,
                              padding: const EdgeInsets.all(12.0),
                              child: SfCartesianChart(
                                isTransposed: true,
                                borderWidth: 2,
                                primaryXAxis: NumericAxis(decimalPlaces: 0),
                                series: <ChartSeries>[
                                  BarSeries<Map, int>(
                                    dataSource: controller.chartData,
                                    xValueMapper: (Map data, _) => data["year"],
                                    yValueMapper: (Map data, _) =>
                                        data["sales"],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        controller: controller,
                      ),
                      MessageWidgetChat1(
                        isMe: true,
                        w: w,
                        chat2: "",
                        chat1: "Tampilkan top person dalam bentuk Pie Chart",
                        widget: const SizedBox(),
                        controller: controller,
                      ),
                      MessageWidgetChat1(
                          chat2:
                              "Berikut ini, hasil top person dalam bentuk Pie Chart :",
                          chat1: "",
                          widget: Builder(
                            builder: (context) {
                              return Container(
                                color: Theme.of(context).cardColor,
                                padding: const EdgeInsets.all(12.0),
                                child: SfCircularChart(
                                  legend: Legend(isVisible: true),
                                  series: <CircularSeries>[
                                    PieSeries<Map, String>(
                                      dataSource: controller.chartDataPie,
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                        isVisible: true,
                                      ),
                                      xValueMapper: (Map data, _) =>
                                          data["year"],
                                      yValueMapper: (Map data, _) =>
                                          data["sales"],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          controller: controller,
                          w: w,
                          isMe: false),
                      MessageWidgetChat1(
                        isMe: true,
                        w: w,
                        chat2: "",
                        chat1: "Tampilkan top person dalam bentuk Line Chart",
                        widget: SizedBox(),
                        controller: controller,
                      ),
                      MessageWidgetChat1(
                          chat2:
                              "Berikut ini, hasil top person dalam bentuk Line Chart :",
                          chat1: "",
                          widget: Builder(
                            builder: (context) {
                              return Container(
                                color: Theme.of(context).cardColor,
                                padding: const EdgeInsets.all(12.0),
                                child: SfCartesianChart(
                                  series: <ChartSeries>[
                                    // Renders line chart
                                    LineSeries<Map, int>(
                                      dataSource: controller.chartData,
                                      xValueMapper: (Map data, _) =>
                                          data["year"],
                                      yValueMapper: (Map data, _) =>
                                          data["sales"],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          controller: controller,
                          w: w,
                          isMe: false)
                    ],
                  ),
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: primary,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/lamp.png"))),
          )),
      bottomNavigationBar: Container(
        width: w,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 10))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 41,
              width: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6)),
                  border: Border.all(color: const Color(0xFFEAEAEA))),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/ebdesk_green.png"))),
              ),
            ),
            Expanded(
              child: Container(
                height: 41,
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6)),
                    border: Border.all(color: const Color(0xFFEAEAEA))),
                child: TextFormField(
                  // controller: ,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icons/send.png"))),
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 16,
                height: 16,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/refresh.png"))),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<ChartView> createState() => ChartController();
}
