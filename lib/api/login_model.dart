/// Response : {"status":true,"result":{"user":{"id":3,"registerid":"ENA3322760","name":"Vishnu C P","phone":"123456","image":"/image/user_dp/user.jpg","approve":1,"access_token":null,"activation_code":null,"email":"vishnu@webzonetech.qa","email_verified_at":null,"delete":0,"delete_at":null,"lastlogin":null,"teamid":"34158918","created_at":"2021-10-12T14:35:46.000000Z","updated_at":"2021-10-12T18:56:49.000000Z","roles":[{"id":2,"name":"User","guard_name":"web","created_at":"2021-10-12T12:41:53.000000Z","updated_at":"2021-10-12T12:41:53.000000Z","pivot":{"model_id":3,"role_id":2,"model_type":"App\\Models\\User"}}]},"role":"User","token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOC4xOTQuNTguMzVcL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MzcxMzUxOTcsImV4cCI6MTYzNzEzODc5NywibmJmIjoxNjM3MTM1MTk3LCJqdGkiOiJ1Z3lZN1BnOFFaVFh6ZlpVIiwic3ViIjozLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.yd69LPO79_dvUU1Mvg0oBBrarbaqtCmvQHaNGk2x1X0"},"message":"Login successfully"}

class LoginModal {
  LoginModal({
      this.response,});

  LoginModal.fromJson(dynamic json) {
    response = json['Response'] != null ? Response.fromJson(json['Response']) : null;
  }
  Response? response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (response != null) {
      map['Response'] = response?.toJson();
    }
    return map;
  }

}

/// status : true
/// result : {"user":{"id":3,"registerid":"ENA3322760","name":"Vishnu C P","phone":"123456","image":"/image/user_dp/user.jpg","approve":1,"access_token":null,"activation_code":null,"email":"vishnu@webzonetech.qa","email_verified_at":null,"delete":0,"delete_at":null,"lastlogin":null,"teamid":"34158918","created_at":"2021-10-12T14:35:46.000000Z","updated_at":"2021-10-12T18:56:49.000000Z","roles":[{"id":2,"name":"User","guard_name":"web","created_at":"2021-10-12T12:41:53.000000Z","updated_at":"2021-10-12T12:41:53.000000Z","pivot":{"model_id":3,"role_id":2,"model_type":"App\\Models\\User"}}]},"role":"User","token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOC4xOTQuNTguMzVcL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MzcxMzUxOTcsImV4cCI6MTYzNzEzODc5NywibmJmIjoxNjM3MTM1MTk3LCJqdGkiOiJ1Z3lZN1BnOFFaVFh6ZlpVIiwic3ViIjozLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.yd69LPO79_dvUU1Mvg0oBBrarbaqtCmvQHaNGk2x1X0"}
/// message : "Login successfully"

class Response {
  Response({
      this.status, 
      this.result, 
      this.message,});

  Response.fromJson(dynamic json) {
    status = json['status'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
    message = json['message'];
  }
  bool? status;
  Result? result;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (result != null) {
      map['result'] = result?.toJson();
    }
    map['message'] = message;
    return map;
  }

}

/// user : {"id":3,"registerid":"ENA3322760","name":"Vishnu C P","phone":"123456","image":"/image/user_dp/user.jpg","approve":1,"access_token":null,"activation_code":null,"email":"vishnu@webzonetech.qa","email_verified_at":null,"delete":0,"delete_at":null,"lastlogin":null,"teamid":"34158918","created_at":"2021-10-12T14:35:46.000000Z","updated_at":"2021-10-12T18:56:49.000000Z","roles":[{"id":2,"name":"User","guard_name":"web","created_at":"2021-10-12T12:41:53.000000Z","updated_at":"2021-10-12T12:41:53.000000Z","pivot":{"model_id":3,"role_id":2,"model_type":"App\\Models\\User"}}]}
/// role : "User"
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOC4xOTQuNTguMzVcL2FwaVwvYXV0aFwvbG9naW4iLCJpYXQiOjE2MzcxMzUxOTcsImV4cCI6MTYzNzEzODc5NywibmJmIjoxNjM3MTM1MTk3LCJqdGkiOiJ1Z3lZN1BnOFFaVFh6ZlpVIiwic3ViIjozLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.yd69LPO79_dvUU1Mvg0oBBrarbaqtCmvQHaNGk2x1X0"

class Result {
  Result({
      this.user, 
      this.role, 
      this.token,});

  Result.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    role = json['role'];
    token = json['token'];
  }
  User? user;
  String? role;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['role'] = role;
    map['token'] = token;
    return map;
  }

}

/// id : 3
/// registerid : "ENA3322760"
/// name : "Vishnu C P"
/// phone : "123456"
/// image : "/image/user_dp/user.jpg"
/// approve : 1
/// access_token : null
/// activation_code : null
/// email : "vishnu@webzonetech.qa"
/// email_verified_at : null
/// delete : 0
/// delete_at : null
/// lastlogin : null
/// teamid : "34158918"
/// created_at : "2021-10-12T14:35:46.000000Z"
/// updated_at : "2021-10-12T18:56:49.000000Z"
/// roles : [{"id":2,"name":"User","guard_name":"web","created_at":"2021-10-12T12:41:53.000000Z","updated_at":"2021-10-12T12:41:53.000000Z","pivot":{"model_id":3,"role_id":2,"model_type":"App\\Models\\User"}}]

class User {
  User({
      this.id, 
      this.registerid, 
      this.name, 
      this.phone, 
      this.image, 
      this.approve, 
      this.accessToken, 
      this.activationCode, 
      this.email, 
      this.emailVerifiedAt, 
      this.delete, 
      this.deleteAt, 
      this.lastlogin, 
      this.teamid, 
      this.createdAt, 
      this.updatedAt, 
      this.roles,});

  User.fromJson(dynamic json) {
    id = json['id'];
    registerid = json['registerid'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    approve = json['approve'];
    accessToken = json['access_token'];
    activationCode = json['activation_code'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    delete = json['delete'];
    deleteAt = json['delete_at'];
    lastlogin = json['lastlogin'];
    teamid = json['teamid'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['roles'] != null) {
      roles = [];
      json['roles'].forEach((v) {
        roles?.add(Roles.fromJson(v));
      });
    }
  }
  int? id;
  String? registerid;
  String? name;
  String? phone;
  String? image;
  int? approve;
  dynamic accessToken;
  dynamic activationCode;
  String? email;
  dynamic emailVerifiedAt;
  int? delete;
  dynamic deleteAt;
  dynamic lastlogin;
  String? teamid;
  String? createdAt;
  String? updatedAt;
  List<Roles>? roles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['registerid'] = registerid;
    map['name'] = name;
    map['phone'] = phone;
    map['image'] = image;
    map['approve'] = approve;
    map['access_token'] = accessToken;
    map['activation_code'] = activationCode;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['delete'] = delete;
    map['delete_at'] = deleteAt;
    map['lastlogin'] = lastlogin;
    map['teamid'] = teamid;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (roles != null) {
      map['roles'] = roles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// name : "User"
/// guard_name : "web"
/// created_at : "2021-10-12T12:41:53.000000Z"
/// updated_at : "2021-10-12T12:41:53.000000Z"
/// pivot : {"model_id":3,"role_id":2,"model_type":"App\\Models\\User"}

class Roles {
  Roles({
      this.id, 
      this.name, 
      this.guardName, 
      this.createdAt, 
      this.updatedAt, 
      this.pivot,});

  Roles.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    guardName = json['guard_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  int? id;
  String? name;
  String? guardName;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['guard_name'] = guardName;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (pivot != null) {
      map['pivot'] = pivot?.toJson();
    }
    return map;
  }

}

/// model_id : 3
/// role_id : 2
/// model_type : "App\\Models\\User"

class Pivot {
  Pivot({
      this.modelId, 
      this.roleId, 
      this.modelType,});

  Pivot.fromJson(dynamic json) {
    modelId = json['model_id'];
    roleId = json['role_id'];
    modelType = json['model_type'];
  }
  int? modelId;
  int? roleId;
  String? modelType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['model_id'] = modelId;
    map['role_id'] = roleId;
    map['model_type'] = modelType;
    return map;
  }

}