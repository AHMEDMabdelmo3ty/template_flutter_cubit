class ConstDataPayment {
  String? id;
  String? apiKey;
  String? integrationId;
  String? integrationIdKiosk;

  ConstDataPayment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    apiKey = json['api_key'];
    integrationId = json['integration_id'];
    integrationIdKiosk = json['integration_id_kiosk'];
  }
}
