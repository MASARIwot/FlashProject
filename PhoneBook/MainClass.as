package {

	import flash.display.MovieClip;
	import fl.controls.Button;
	import fl.accessibility.ButtonAccImpl;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.accessibility.ButtonAccImpl;
	import flash.display.Graphics;
	import fl.controls.Label;
	import fl.controls.ColorPicker;


	public class MainClass extends MovieClip {

		var namePerson:String;// = String(NameAdd.text);
		var surName:String;// = String(surNameAdd.text);
		var phone:int;// = int(PhoneAdd.text);
		
		var newNamePerson:String;
		var newSurName:String;
		var newPhone:int;
		var phoneToChangePersone:int;
		
		
		var searchNameFromPhone:int;
		var searchPhoneFromName:String;
			
		var phoneBookEdit:phoneBook;// = new phoneBook();

		public function MainClass() {
		 phoneBookEdit = new phoneBook();
			// constructor code
						
			ButtonAddPersone.addEventListener(MouseEvent.CLICK, AddPersone2);
			ButtonFind.addEventListener(MouseEvent.CLICK, Find);
			Find2Butto.addEventListener(MouseEvent.CLICK, Find2);
			ChangeButton.addEventListener(MouseEvent.CLICK, Change);
			SortNameButton.addEventListener(MouseEvent.CLICK, SortName);
			SortSurPhoneButton.addEventListener(MouseEvent.CLICK, sortPhoneNamber);
			ShowListButton.addEventListener(MouseEvent.CLICK, ShowList);
			DeletThsiPersone.addEventListener(MouseEvent.CLICK, deletPersone);
			ShowPersone.addEventListener(MouseEvent.CLICK, showPersone);
			
			
			/*
			Same persons for testing program
			*/
			phoneBookEdit.addPerson("Pit", "Latimer", 2600);
			phoneBookEdit.addPerson("Alexandr", "Bobrov", 4500);
			phoneBookEdit.addPerson("Nika", "Bering", 3870);
			phoneBookEdit.addPerson("Vili", "Vonka", 4010);
			phoneBookEdit.addPerson("Fredy", "Merkury", 2900);
			phoneBookEdit.addPerson("Yoda", "Green", 3500);
		
		}

		private function AddPersone2(event: MouseEvent): void {
			namePerson = String(NameAdd.text);
			surName = String(surNameAdd.text);
			phone = int(PhoneAdd.text);
			phoneBookEdit.addPerson(namePerson,surName,phone);
			TextFildArea.text = "Add Persone - Name : " + namePerson +" "+ surName +" -Phone "+ phone;
			
		}
		private function Find2(event: MouseEvent): void {
			searchNameFromPhone = int(findByName.text);
			TextFildArea.text = "Result : " + phoneBookEdit.searchByPhone(searchNameFromPhone);
		}
		private function Find(event: MouseEvent): void {
			searchPhoneFromName = String(findByPhone.text);
			TextFildArea.text = "Result : " + phoneBookEdit.searchByName(searchPhoneFromName);
			
		}
		private function Change(event: MouseEvent): void {
			phoneToChangePersone = int(oldPhone.text);
			newNamePerson = String(newName.text);
			newSurName = String(NewSurName.text);
			newPhone = int(NewPhone.text);
			phoneBookEdit.changePersoneByPhone(phoneToChangePersone, newNamePerson, newSurName, newPhone);
			TextFildArea.text = phoneBookEdit.toString();
			
		}
		private function SortName(event: MouseEvent): void {
			phoneBookEdit.sortByName();
			TextFildArea.text = phoneBookEdit.toString();
		}
		private function sortPhoneNamber(event: MouseEvent): void {
			phoneBookEdit.sortByPhoneNamber();
			TextFildArea.text = phoneBookEdit.toString();
		}
		private function ShowList(event: MouseEvent): void {
			TextFildArea.text = phoneBookEdit.toString();
			
		}
		private function deletPersone(event: MouseEvent): void {
				phone = int(oldPhone.text);
				phoneBookEdit.removePersoneByPhone(phone);
				TextFildArea.text = phoneBookEdit.toString();
		}
		private function showPersone(event: MouseEvent): void {
			phone = int(oldPhone.text);
			TextFildArea.text = "Result : " + phoneBookEdit.showPersoneData(phone);
			
		}

		

	}

}