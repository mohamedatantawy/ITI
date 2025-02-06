class User {
  final String? name;
  final PersonalInfo? personalInfo;

  User({this.name, this.personalInfo});
}

class PersonalInfo {
  final String? email;
  final Address? address;

  PersonalInfo({this.email, this.address});
}

class Address {
  final String? city;
  final String? street;
  final String? country;

  Address({this.city, this.street, this.country});
}
//  String personalinfo(String email,) {
//     return "$email $Address";
//   }

//   String Address(String city,String street) {
//     return "$city $street";
//   }

extension UserEX on User {
  String getfullinfo() {
    
    return "name: $name\n email: ${personalInfo?.email ?? "Unspecified"} \n city: ${personalInfo?.address!.city ?? "Unspecified"} \n country: ${personalInfo?.address?.country ?? "Unspecified"} \n street: ${personalInfo?.address?.street ?? "Unspecified"}";
  }
}

extension persenalEX on PersonalInfo {
  void getperson() {
    print("${email ?? 'Unspecified'} ${address ?? 'Unspecified'}");
  }
}

void main() {
  User ali = User(
    name: 'ali',
    personalInfo: PersonalInfo(
      email: 'ali@gmail.com',
      address: Address(city: 'damanhour', street: 'abodsalamstreet'),
    ),
  );
  print(ali.getfullinfo());
  print("-----------------");
  User ahmed = User(name: 'ahmed');
  print(ahmed.getfullinfo());
}
