class SampleRequestModel {
  final String strVal;
  final int intVal;

  SampleRequestModel(this.strVal, this.intVal);

  SampleRequestModel.fromJson(Map<String, dynamic> json) :
        strVal = json['strVal'],
        intVal = json['intVal'];

  Map<String, dynamic> toJson() => {
    "strVal": this.strVal,
    "intVal": this.intVal
  };
}