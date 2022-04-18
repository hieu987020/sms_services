class EdgeDevice {
  EdgeDevice(this.deviceId, this.deviceType, this.ownerId, this.zoneId,
      this.receiverId, this.state, this.lastUpdated);

  /// Creates the edgeDevice class with required details.
  final String deviceId;
  final String deviceType;
  final String ownerId;
  final String zoneId;
  final String receiverId;
  final String state;
  final String lastUpdated;
}
