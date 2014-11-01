package {


	public class phoneBook implements interfaceBook {

		var names: Array; // = new Array.<PersonInformation>(" "," ",25);// = new Array();

		public function phoneBook() {

			names = new Array();
		}
		//override
		public function addPerson(PersonNameI: String, surNameI: String, PhoneNumberI: int): void {
			
			names.push(new PersonInformation(PersonNameI, surNameI, PhoneNumberI));

		}
		//*****************Get********************
		public function getName(index: int): String {
			return names[index].getPersoneName();
		}
		public function getPhoneNumber(index: int): int {
			return names[index].getPhoneNumber();
		}
		public function getSurName(index: int): String {
			return names[index].getSurName();
		}
		//*****************Set********************
		public function setName(index: int, newName: String): void {
			names[index].setPersoneName(newName);
		}
		public function setPhoneNumber(index: int, newPhoneNumber: int): void {
			names[index].setPhoneNumber(newPhoneNumber);
		}
		public function setSurName(index: int, newSurName: String): void {
			names[index].setSurName(newSurName);
		}
		//****************************************

		public function toString(): String {
			return names.toString(); 	 
		}

		public function namberOfPersone(): int {
			return names.length; 	 
		}

		public function searchByName(personeName2: String): String {
			for each(var i: PersonInformation in names) {
				if (i.getPersoneName() == personeName2) {
					//return names[names.indexOf(i)].getPhoneNumber();
					return "Phone : " + getPhoneNumber(names.indexOf(i)) +" -Surname : "+ getSurName(names.indexOf(i));
				}
			}
			return "ups it*s error ";
		}

		public function searchByPhone(phoneNumber: int): String {
			for each(var i: PersonInformation in names) {
				if (i.getPhoneNumber() == phoneNumber) {
					return "Full Name Surname : " + getName(names.indexOf(i)) +" "+ getSurName(names.indexOf(i));
				}
			}
			return " ups it*s error ";
		}

		public function removePersoneByPhone(phoneNumber: int): void {
			//removeItemAt
			for each(var i: PersonInformation in names) {
				if (i.getPhoneNumber() == phoneNumber) {
					names.splice(names.indexOf(i), 1)//names.indexOf(i));
				}
			}
		}

		public function changePersoneByPhone(oldPhone: int, newName: String, newSurName: String, newPhone: int): void {
			for each(var i: PersonInformation in names) {
				if (i.getPhoneNumber() == oldPhone) {
					setName(names.indexOf(i), newName);
					setSurName(names.indexOf(i), newSurName);
					setPhoneNumber(names.indexOf(i), newPhone);

				}
			}
		}
		

		public function sortByName(): void {
			names.sort();

		}
		public function sortByPhoneNamber(): void {
			names.sort(sortOnPhoneNamber);

		}
		public function sortOnPhoneNamber(a: PersonInformation, b: PersonInformation): Number {
			var aPhone: Number = a.getPhoneNumber();
			var bPhone: Number = b.getPhoneNumber();

			if (aPhone > bPhone) {
				return 1;
			} else if (aPhone < bPhone) {
				return -1;
			} else {
				//aPhone == bPhone
				return 1111;
			}
		}
		public function showPersoneData(phoneNumber:int):String {
			for each(var i: PersonInformation in names) {
				if (i.getPhoneNumber() == phoneNumber) {
					return "Full Name Surname : "   + getName(names.indexOf(i)) +"  " 
													+ getSurName(names.indexOf(i)) + " Phone = " 
													+ getPhoneNumber(names.indexOf(i));
				}
			}
			return " ups it*s error ";	
			
		}

	}

}