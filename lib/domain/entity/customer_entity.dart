class CustomerEntity{
  late int id;
  final String surname;
  final String name;
  late String middlename;
  final String phoneNumber;

  CustomerEntity({
    this.id = 0,
    required this.surname,
    required this.name,
    this.middlename = '-',
    required this.phoneNumber
  });
}