const isMobileNumberValid = (mobileNumber) =>{
	
	if(isFormFieldEmpty(mobileNumber)){
		$("#reg-err-msg").html("Please Enter Mobile Number");
		$(".mobile-number").css({"border-color":"red"});
		$("#reg-err-msg").show();
		return false;
	}else{
		$("#reg-err-msg").hide();
		$(".mobile-number").css({"border-color":"green"});
		return true;
	}
}