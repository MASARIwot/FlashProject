package  {
	
	 interface interfaceBook {

		// Interface methods:
		 function addPerson( PersonName:String , surName:String ,PhoneNumber:int ):void;
		 function getName(index:int):String; 
		 function namberOfPersone():int;
		 function toString():String; //return : " Name = " + getPersoneName() + " SurName = " + getSurName() + " PhoneNumber = " + getPhoneNumber() + ";\n"
		 function searchByName(personeName:String):String; //return : Phone number by name
		 function searchByPhone(phoneNumber:int):String; //return :  Name by phone number
		 function removePersoneByPhone(phoneNumber:int):void; // remove Person with such phone number
		 function changePersoneByPhone(oldPhone:int , newName:String, newSurName:String, newPhone:int):void; //change person information
		 function sortByName():void; //sort object by persone name
		 function sortByPhoneNamber():void; // sort object by pnone number
		 function showPersoneData(phoneNumber:int):String; //show Person //need phone

	}
	
}
