import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/reports_provider.dart';
import '../../utils/localization/application_localizations.dart';
import 'package:mgramseva/utils/constants/i18_key_constants.dart';
import '../../utils/notifiers.dart';
import '../../utils/testing_keys/testing_keys.dart';
import '../../widgets/button.dart';

class InactiveConsumerReport extends StatefulWidget {
  final Function onViewClick;

  InactiveConsumerReport({Key? key, required this.onViewClick}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CollectionReport();
  }
}

class _CollectionReport extends State<InactiveConsumerReport>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final reportProvider = Provider.of<ReportsProvider>(context);

    return LayoutBuilder(builder: (context, constraints) {
      final isWideScreen = constraints.maxWidth > 700;
      final containerMargin = isWideScreen
          ? const EdgeInsets.only(top: 5.0, bottom: 5, right: 20, left: 10)
          : const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8);

      return Container(
        margin: containerMargin,
        width: constraints.maxWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: constraints.maxWidth > 344?constraints.maxWidth / 2.5:constraints.maxWidth / 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3. ",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                        child: Text(
                          ApplicationLocalizations.of(context)
                              .translate(i18.dashboard.INACTIVE_CONSUMER_REPORT),
                          maxLines: 3,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Container(
                      width: 50,
                      child: Button(
                        ApplicationLocalizations.of(context)
                            .translate(i18.common.VIEW),
                            () {
                          if (reportProvider.selectedBillPeriod == null) {
                            Notifiers.getToastMessage(context, 'Select Billing Cycle', 'ERROR');
                          } else {
                            reportProvider.clearTableData();
                            reportProvider.getInactiveConsumerReport();
                            widget.onViewClick(
                                true, i18.dashboard.INACTIVE_CONSUMER_REPORT);
                          }
                        },
                        key: Keys.billReport.INACTIVE_CONSUMER_REPORT_VIEW_BUTTON,
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton.icon(
                      onPressed: () {
                        if (reportProvider.selectedBillPeriod == null) {
                          Notifiers.getToastMessage(context, '${ApplicationLocalizations.of(context).translate(i18.common.SELECT_BILLING_CYCLE)}', 'ERROR');
                        } else {
                          reportProvider.getInactiveConsumerReport(download: true);
                        }
                      },
                      icon: Icon(Icons.download_sharp,color: Color(0xff033ccf),),
                      label: Text(ApplicationLocalizations.of(context)
                          .translate(i18.common.CORE_DOWNLOAD),style: TextStyle(color: Color(0xff033ccf)),),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
