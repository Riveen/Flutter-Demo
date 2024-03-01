class ApiData {
  int? tmpId;
  Null tmpCode;
  Null tmpReference;
  int? tmpTemplate;
  String? temTemplate;
  int? tepId;
  String? tepParameter;
  String? tmpValue;
  Null tepCode;
  Null tepDescription;
  int? tepStatus;
  String? tmpStatusName;

  ApiData(
      {this.tmpId,
      this.tmpCode,
      this.tmpReference,
      this.tmpTemplate,
      this.temTemplate,
      this.tepId,
      this.tepParameter,
      this.tmpValue,
      this.tepCode,
      this.tepDescription,
      this.tepStatus,
      this.tmpStatusName});

  ApiData.fromJson(Map<String, dynamic> json) {
    tmpId = json['tmpId'];
    tmpCode = json['tmpCode'];
    tmpReference = json['tmpReference'];
    tmpTemplate = json['tmpTemplate'];
    temTemplate = json['temTemplate'];
    tepId = json['tepId'];
    tepParameter = json['tepParameter'];
    tmpValue = json['tmpValue'];
    tepCode = json['tepCode'];
    tepDescription = json['tepDescription'];
    tepStatus = json['tepStatus'];
    tmpStatusName = json['tmpStatusName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tmpId'] = this.tmpId;
    data['tmpCode'] = this.tmpCode;
    data['tmpReference'] = this.tmpReference;
    data['tmpTemplate'] = this.tmpTemplate;
    data['temTemplate'] = this.temTemplate;
    data['tepId'] = this.tepId;
    data['tepParameter'] = this.tepParameter;
    data['tmpValue'] = this.tmpValue;
    data['tepCode'] = this.tepCode;
    data['tepDescription'] = this.tepDescription;
    data['tepStatus'] = this.tepStatus;
    data['tmpStatusName'] = this.tmpStatusName;
    return data;
  }
}
