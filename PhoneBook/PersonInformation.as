package {

	public class PersonInformation {

		private var personeName: String = "null";
		private var surName: String = "null";
		private var phoneNumber: int =25;

		
		public function PersonInformation(PersonNameI: String, surNameI: String, PhoneNumberI: int) {
			this.personeName = PersonNameI;
			this.surName = surNameI;
			this.phoneNumber = PhoneNumberI;
		}
		public function getPersoneName(): String {
			return this.personeName;
		}
		public function getSurName(): String {
			return this.surName;
		}
		public function getPhoneNumber(): int {
			return this.phoneNumber;
		}
		public function setPersoneName(newName: String): void {
			this.personeName = newName;
		}
		public function setSurName(newSurName: String): void {
			this.surName = newSurName;
		}
		public function setPhoneNumber(newPhoneNumber: int): void {
			this.phoneNumber = newPhoneNumber;
		}
		public  function toString():String {
			return " \t Name = "   + getPersoneName() + "   \t  SurName      = \t" 
								   + getSurName() 	  + "   \t  PhoneNumber  = " 
								   + getPhoneNumber() + " ;\n "
		}
	}

}