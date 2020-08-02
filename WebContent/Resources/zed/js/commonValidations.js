function isFormFieldEmpty(value) {

    var result = true;
    if (value == "" || value == null) {
        result = false;
    }
    return result;
}

function displayErrorMessage(field_Id, Span_Id, msg, err_color) {
    document.getElementById(Span_Id).innerHTML = msg;
    styleMessage(Span_Id, err_color);
    boderColorVariation(field_Id, err_color);
    /*getFocus(field_Id);*/
}

function styleMessage(id, msg_color) {
    document.getElementById(id).style.color = msg_color;
}

function boderColorVariation(id, color) {
    document.getElementById(id).style.borderColor = color;
}

function getFocus(id) {
    document.getElementById(id).focus();
}

function initCap(id) {
    document.getElementById(id).value = document.getElementById(id).value[0].toUpperCase() + document.getElementById(id).value.slice(1).toLowerCase();
}

function commonCheckPassword_strength(message, span_id, message_color) {
    fieldNameDisplay(span_id, message, message_color);
}

function fieldNameDisplay(id, msg, color) {
    document.getElementById(id).innerHTML = msg;
    document.getElementById(id).style.color = color;
}

function animatingElement(Element, font_size, font_color, font_style) {
    Element.style.fontSize = font_size;
    Element.style.color = font_color;
    Element.style.fontStyle = font_style;

}

function hideError(id) {
    document.getElementById(id).innerHTML = "";
}

function commonForOnlyAlphabets(value) {
    var RegExp = /[A-Za-z]$/;
    var condition = true;
    if (!(RegExp.test((value.trim())))) {
        condition = false;
    }
    return condition;
}

function commonNullAndAlphabets(value) {
    var RegExp = /[A-Za-z]$/;
    var condition = true;
    if (!(RegExp.test((value.trim())))) {
        condition = false;
    }
    return condition;
}

function commonEmailValidation(email) {

    var condition = true;
    var RegExp_email = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    var check = RegExp_email.test(email);
    if (!(check)) {
        condition = false;
    }
    return condition;
}

function commonPasswordValidation(password) {
    var RegExp = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
    var condition = true;
    if (!(RegExp.test((password)))) {
        condition = false;
    }
    return condition;
}

function commonValidateRadioFields(class_name) {

    var array_elements = document.getElementsByClassName(class_name);
    var condition = true;
    var count = 0;
    for (var i = 0; i < array_elements.length; i++) {
        if (array_elements[i].checked == false) {
            count += 1;
        }
    }
    if (count == array_elements.length) {
        condition = false;
    }
    return condition;
}

function commonDateFormateValidation(entered_Date) {
    var RegExp_Date = /\d{2}[./-]\d{2}[./-]\d{4}$/;
    var condition = true;
    if (!(RegExp_Date.test(entered_Date))) {
        condition = false;
    }

    return condition;
}

function calculateAge(entered_Date, age_id, dateSpan_id, err_message, err_color) {

    var Today_Date = new Date();
    var condition = true;
    var Date_of_Birth = document.getElementById(entered_Date).value;
    var Today_Year = Today_Date.getFullYear();
    var Today_Month = Today_Date.getMonth();
    var Today_Day = Today_Date.getDate();
    var Birth_Month = Date_of_Birth.slice(0, 2);
    var Birth_Date = Date_of_Birth.slice(3, 5);
    var Birth_Year = Date_of_Birth.slice(6)
    var Age = parseInt(Today_Year) - parseInt(Birth_Year);
    if (Age < 0) {
        var message = err_message;
        displayErrorMessage(entered_Date, dateSpan_id, message, err_color);
        condition = false;
    } else {
        if (Today_Month >= Birth_Month) {
            document.getElementById(age_id).value = Age + 1;
        } else {
            document.getElementById(age_id).value = Age;
        }
    }
    return condition;
}

function commonForOnlyDigits(content) {
    var RegExp_numbers = /[1-9]{1,1}[0-9]{9,9}$/;
    var condition = true;
    if (!(RegExp_numbers.test(content))) {
        condition = false;
    }
    return condition;
}

function validateDropdownField(country_id) {
    var index = document.getElementById(country_id).selectedIndex;
    var Value = document.getElementById(country_id).options[index].value
    var condition = true;
    if (Value == -1) {
        condition = false;
    }

    return condition;
}

function commonValidationForAlphaNumeric(content) {
    var RegExp_AlphaNumeric = /[a-zA-Z0-9]$/;
    condition = true;
    if (!(RegExp_AlphaNumeric.test(content))) {
        condition = false;
    }
    return condition;
}


function decimalDigitValidation(element_id) {
    var RegExp_Decimal = /^\d+\.\d{0,2}$/;
    var value = document.getElementById(element_id).value;
    var condition = true;
    if (!(RegExp_Decimal.test(value))) {
        condition = false;
    }
    return condition;
}

function validateFileType(element_id) {
    var status = true;
    var Maxsize = 2097152;
    var Minsize = 174378;
    var file_size = document.getElementById(fieldId).files[0].size;
    var file = document.getElementById(fieldId).value;
    if (file_size >= Maxsize || file_size < Minsize) {
        status = false;
    }
    return status;
}