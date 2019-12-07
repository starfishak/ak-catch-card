class LogEntry {
  // Specs
  DateTime timestamp;

  // Data
  num soakTime;
  num numberOfPots;
  num gallons;
  DateTime date;

  // Location Specs
  String reportingArea;
  String bay;
  num latitude;
  num longitude;
  
  LogEntry({this.date, this.soakTime, this.numberOfPots, this.gallons, 
    this.reportingArea, this.bay, this.latitude, this.longitude}) {
    this.timestamp = new DateTime.now();
  }
}