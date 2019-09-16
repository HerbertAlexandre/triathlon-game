
class User {

  int id;
  String firstName;
  String lastName;
  String userName;
  String phone;
  String email;

  User();

  void merge(User user){
    this.firstName = user.firstName;
    this.lastName = user.lastName;
    this.userName = user.userName;
    this.phone = user.phone;
    this.email = user.email;
  }

  User copy(){
    User newUser = User();
    newUser.firstName = this.firstName;
    newUser.lastName = this.lastName;
    newUser.userName = this.userName;
    newUser.phone = this.phone;
    newUser.email = this.email;
    return newUser;
  }

  static User fromJson(Map json){
    User user = User();
    user.id = json["id"];
    user.firstName = json["firstName"];
    user.lastName = json["lastName"];
    user.userName = json["userName"];
    user.phone = json["phone"];
    user.email = json["email"];
    return user;
  }

  Map toJson() =>
      {"id":this.id,
        "firstName":this.firstName,
        "lastName":this.lastName,
        "userName":this.userName,
        "phone":this.phone,
        "email":this.email
      };
}