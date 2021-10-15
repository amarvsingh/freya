class InputValidatingService{
  //Declaring method required to validate the inputs of the User throughout the Modules
  bool isValidEmailPasswordLoginInputs(String email, String password){
    if (email.isNotEmpty && password.isNotEmpty){
      //If both email and password are not empty
      if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)){
        //If email pattern is correct
        if (password.length>=8){
          //If password length is more than 8
        }
        else{
          
        }
      }
      else{

      }
    }
    else{

    }

  }
}