/**
 * 
 */

var synthesis = window.speechSynthesis;
var utterance = new SpeechSynthesisUtterance();

var dropdownService = async function(rootElementId, url, requestType, param, appender){
			var responses = await serviceCall(url,requestType,param);
			$(rootElementId).empty();
			if(appender == "TAGS"){
				appendTags(JSON.parse(responses),rootElementId);
			}if(appender == "CATEGORY"){
				appendCategories(JSON.parse(responses),rootElementId);
			}if(appender == "ADD_PRODUCT_CATEGORY"){
				appendAddProductCategories(JSON.parse(responses),rootElementId);
			}
		}
	
		var appendTags = function(tags,rootElementId){
			var options = "";
			for (var tag = 0; tag < tags.length; tag++) {
				options = options+"<option value='"+tags[tag].tagId+"'>"+tags[tag].tag+"</option>";
			}
			$(rootElementId).append(options);
		}
		
		var appendCategories = function(categories,rootElementId){
			var options = "";
			for (var category = 0; category < categories.length; category++) {
				options = options+"<option value='"+categories[category].categoryId+"'>"+categories[category].category+"</option>";
			}
			$(rootElementId).append(options);
		}
		
		var appendAddProductCategories = function(categories,rootElementId){
			var options = "";
			for (var category = 0; category < categories.length; category++) {
				options = options+"<option value='"+categories[category].category+"'>"+categories[category].category+"</option>";
			}
			$(rootElementId).append(options);
		}
		
		
		var serviceCall = function(url, method, param) {
			 return new Promise(resolve => {
			  var xhr = new XMLHttpRequest();
			  xhr.open(method, url, true);
			  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			  xhr.send(param);
			  xhr.onreadystatechange = function() {
			   if (xhr.readyState == 4) {
			    if (xhr.status == 200) {
			     resolve(xhr.response);
			    }
			   }
			  }
			 });
			}
		
