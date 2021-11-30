import 'package:flutter/material.dart';
import 'package:job_finder_app/Models/job.dart';
import 'package:job_finder_app/Screens/home/Widgets/job_item.dart';

import 'job_detail.dart';

class JobList extends StatelessWidget {
  final joblist = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                    context: context,
                    builder: (contexJt) => JobDetail(
                          job: joblist[index],
                        ));
              },
              child: JobItem(job: joblist[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: joblist.length),
    );
  }
}
