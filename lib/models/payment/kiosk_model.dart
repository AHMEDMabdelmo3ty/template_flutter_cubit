// ignore_for_file: prefer_if_null_operators

class KioskModel {
  KioskModel({
    this.id,
    this.pending,
    this.amountCents,
    this.success,
    this.isAuth,
    this.isCapture,
    this.isStandalonePayment,
    this.isVoided,
    this.isRefunded,
    this.is3DSecure,
    this.integrationId,
    this.profileId,
    this.hasParentTransaction,
    this.order,
    this.createdAt,
    this.transactionProcessedCallbackResponses,
    this.currency,
    this.sourceData,
    this.apiSource,
    this.terminalId,
    this.merchantCommission,
    this.installment,
    this.isVoid,
    this.isRefund,
    this.data,
    this.isHidden,
    this.paymentKeyClaims,
    this.errorOccured,
    this.isLive,
    this.otherEndpointReference,
    this.refundedAmountCents,
    this.sourceId,
    this.isCaptured,
    this.capturedAmount,
    this.merchantStaffTag,
    this.updatedAt,
    this.owner,
    this.parentTransaction,
  });

  int? id;
  bool? pending;
  int? amountCents;
  bool? success;
  bool? isAuth;
  bool? isCapture;
  bool? isStandalonePayment;
  bool? isVoided;
  bool? isRefunded;
  bool? is3DSecure;
  int? integrationId;
  int? profileId;
  bool? hasParentTransaction;
  Order? order;
  DateTime? createdAt;
  List<dynamic>? transactionProcessedCallbackResponses;
  String? currency;
  SourceData? sourceData;
  String? apiSource;
  dynamic terminalId;
  int? merchantCommission;
  dynamic installment;
  bool? isVoid;
  bool? isRefund;
  KioskModelData? data;
  bool? isHidden;
  PaymentKeyClaims? paymentKeyClaims;
  bool? errorOccured;
  bool? isLive;
  dynamic otherEndpointReference;
  int? refundedAmountCents;
  int? sourceId;
  bool? isCaptured;
  int? capturedAmount;
  dynamic merchantStaffTag;
  DateTime? updatedAt;
  int? owner;
  dynamic parentTransaction;

  factory KioskModel.fromJson(Map<String, dynamic> json) => KioskModel(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: Order.fromJson(json["order"]),
        createdAt: DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses: List<dynamic>.from(
            json["transaction_processed_callback_responses"].map((x) => x)),
        currency: json["currency"],
        sourceData: SourceData.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data: KioskModelData.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims: PaymentKeyClaims.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: DateTime.parse(json["updated_at"]),
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );
}

class KioskModelData {
  KioskModelData({
    this.dueAmount,
    this.fromUser,
    this.amount,
    this.message,
    this.rrn,
    this.aggTerminal,
    this.gatewayIntegrationPk,
    this.paidThrough,
    this.billReference,
    this.klass,
    this.biller,
    this.otp,
    this.ref,
    this.txnResponseCode,
    this.cashoutAmount,
  });

  int? dueAmount;
  dynamic fromUser;
  dynamic amount;
  String? message;
  dynamic rrn;
  dynamic aggTerminal;
  int? gatewayIntegrationPk;
  String? paidThrough;
  int? billReference;
  String? klass;
  dynamic biller;
  String? otp;
  dynamic ref;
  String? txnResponseCode;
  dynamic cashoutAmount;

  factory KioskModelData.fromJson(Map<String, dynamic> json) => KioskModelData(
        dueAmount: json["due_amount"],
        fromUser: json["from_user"],
        amount: json["amount"],
        message: json["message"],
        rrn: json["rrn"],
        aggTerminal: json["agg_terminal"],
        gatewayIntegrationPk: json["gateway_integration_pk"],
        paidThrough: json["paid_through"],
        billReference: json["bill_reference"],
        klass: json["klass"],
        biller: json["biller"],
        otp: json["otp"],
        ref: json["ref"],
        txnResponseCode: json["txn_response_code"],
        cashoutAmount: json["cashout_amount"],
      );
}

class Order {
  Order({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.collector,
    this.amountCents,
    this.shippingData,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.items,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.merchantStaffTag,
    this.apiSource,
    this.data,
  });

  int? id;
  DateTime? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  dynamic collector;
  int? amountCents;
  IngData? shippingData;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  dynamic merchantOrderId;
  dynamic walletNotification;
  int? paidAmountCents;
  bool? notifyUserWithEmail;
  List<dynamic>? items;
  String? orderUrl;
  int? commissionFees;
  int? deliveryFeesCents;
  int? deliveryVatCents;
  String? paymentMethod;
  dynamic merchantStaffTag;
  String? apiSource;
  OrderData? data;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: IngData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: List<dynamic>.from(json["items"].map((x) => x)),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: OrderData.fromJson(json["data"]),
      );
}

class OrderData {
  OrderData();

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData();

  Map<String, dynamic> toJson() => {};
}

class Merchant {
  Merchant({
    this.id,
    this.createdAt,
    this.phones,
    this.companyEmails,
    this.companyName,
    this.state,
    this.country,
    this.city,
    this.postalCode,
    this.street,
  });

  int? id;
  DateTime? createdAt;
  List<String>? phones;
  List<String>? companyEmails;
  String? companyName;
  String? state;
  String? country;
  String? city;
  String? postalCode;
  String? street;

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );
}

class IngData {
  IngData({
    this.id,
    this.firstName,
    this.lastName,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.city,
    this.state,
    this.country,
    this.email,
    this.phoneNumber,
    this.postalCode,
    this.extraDescription,
    this.shippingMethod,
    this.orderId,
    this.order,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? street;
  String? building;
  String? floor;
  String? apartment;
  String? city;
  String? state;
  String? country;
  String? email;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? shippingMethod;
  int? orderId;
  int? order;

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
        id: json["id"] == null ? null : json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod:
            json["shipping_method"] == null ? null : json["shipping_method"],
        orderId: json["order_id"] == null ? null : json["order_id"],
        order: json["order"] == null ? null : json["order"],
      );
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    this.lockOrderWhenPaid,
    this.currency,
    this.orderId,
    this.amountCents,
    this.integrationId,
    this.pmkIp,
    this.exp,
    this.userId,
    this.billingData,
  });

  bool? lockOrderWhenPaid;
  String? currency;
  int? orderId;
  int? amountCents;
  int? integrationId;
  String? pmkIp;
  int? exp;
  int? userId;
  IngData? billingData;

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaims(
        lockOrderWhenPaid: json["lock_order_when_paid"],
        currency: json["currency"],
        orderId: json["order_id"],
        amountCents: json["amount_cents"],
        integrationId: json["integration_id"],
        pmkIp: json["pmk_ip"],
        exp: json["exp"],
        userId: json["user_id"],
        billingData: IngData.fromJson(json["billing_data"]),
      );
}

class SourceData {
  SourceData({
    this.type,
    this.pan,
    this.subType,
  });

  String? type;
  String? pan;
  String? subType;

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        type: json["type"],
        pan: json["pan"],
        subType: json["sub_type"],
      );
}
