import 'package:flutter/material.dart';
import '../models/job.dart';
import '../job_data.dart';

class PostJobScreen extends StatelessWidget {
  final titleController = TextEditingController();
  final descController = TextEditingController();
  final locationController = TextEditingController();
  final salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post a Job')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Job Title', border: OutlineInputBorder()),
              ),
              SizedBox(height: 12),
              TextField(
                controller: descController,
                maxLines: 4,
                decoration: InputDecoration(labelText: 'Description', border: OutlineInputBorder()),
              ),
              SizedBox(height: 12),
              TextField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location', border: OutlineInputBorder()),
              ),
              SizedBox(height: 12),
              TextField(
                controller: salaryController,
                decoration: InputDecoration(labelText: 'Salary', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String title = titleController.text.trim();
                  String desc = descController.text.trim();
                  String location = locationController.text.trim();
                  String salary = salaryController.text.trim();

                  if (title.isEmpty || desc.isEmpty || location.isEmpty || salary.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill in all fields')),
                    );
                    return;
                  }

                  Job newJob = Job(
                    title: title,
                    description: desc,
                    location: location,
                    salary: salary,
                  );
                  jobList.add(newJob);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Job posted successfully!')),
                  );

                  Navigator.pop(context);
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
