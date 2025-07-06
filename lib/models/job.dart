class Job {
  final String title;
  final String description;
  final String location;
  final String salary;

  Job({
    required this.title,
    required this.description,
    required this.location,
    required this.salary,
  });

  static List<Job> getMockJobs() {
    return [
      Job(
        title: 'Flutter Developer',
        description: 'Develop cross-platform apps',
        location: 'Toronto',
        salary: '\$80,000',
      ),
      Job(
        title: 'Backend Engineer',
        description: 'Work with APIs and databases',
        location: 'Remote',
        salary: '\$90,000',
      ),
    ];
  }
}
