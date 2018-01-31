/**
 * 工具js
 * author ydf
 */
/**
 * array push时进行去重
 */
function unique(arr) {
  var ret = [];
  var hash = {};

  for (var i = 0; i < arr.length; i++) {
    var item = arr[i]
    var key = typeof(item) + item
    if (hash[key] !== 1) {
      ret.push(item)
      hash[key] = 1
    }
  }

  return ret;
}
/**
 * 比上一种方法速度更快
 * @param arr
 * @returns {Array}
 */
function unique2(arr) {
	this.sort();
	var re=[this[0]];
	for(var i = 1; i < this.length; i++)
	{
		if( this[i] !== re[re.length-1])
		{
			re.push(this[i]);
		}
	}
	return re;
}

/**
 * 清空对象的内容
 * @param objName
 * @param objType
 */
function emptyObj(objName,objType){
	if(objType=="select"){
		$("#"+objName+"").html("");
	}
	if(objType=="form"){
		  // iterate over all of the inputs for the form
		  // element that was passed in
		  $(":input[name='"+objName+"']").each(function() {
		    var type = this.type;
		    var tag = this.tagName.toLowerCase(); // normalize case
		    // it's ok to reset the value attr of text inputs,
		    // password inputs, and textareas
		    if (type == 'text' || type == 'password' || tag == 'textarea')
		      this.value = "";
		    // checkboxes and radios need to have their checked state cleared
		    // but should *not* have their 'value' changed
		    else if (type == 'checkbox' || type == 'radio')
		      this.checked = false;
		    // select elements need to have their 'selectedIndex' property set to -1
		    // (this works for both single and multiple select elements)
		    else if (tag == 'select')
		      this.selectedIndex = -1;
		  });
	}
	if(objType=="grid"){
		$("#"+objName+"_tbody").html("");
		$("#"+objName+"_tbody").remove();//后改TBODY初始化的时候就产生，每次不需要清空,决定不改了
	}
}
function emptyUndefined(str){
	if(str==undefined||str=="undefined"){
		str="";
	}
	return str;
}


/**//**
 * 检查输入的一串字符是否是字符
 * 输入:str  字符串
 * 返回:true 或 flase; true表示为全部为字符 不包含汉字
 */
function checkStr(str){
    if (/[^\\x00-\\xff]/g.test(str)) {
        return false;
    }
    else {
        return true;
    }
}

/**//**
 * 检查输入的一串字符是否包含汉字
 * 输入:str  字符串
 * 返回:true 或 flase; true表示包含汉字
 */
function checkChinese(str){
    if (escape(str).indexOf("%u") != -1) {
        return true;
    }
    else {
        return false;
    }
}
/**//**
 * 检查输入的邮箱格式是否正确
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkEmail(str){
    if (str.match(/[A-Za-z0-9_-]+[@](\\S*)(net|com|cn|org|cc|tv|[0-9]{1,3})(\\S*)/g) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的手机号码格式是否正确
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkMobilePhone(str){
    if (str.match(/^(?:13\\d|15[89])-?\\d{5}(\\d{3}|\\*{3})$/) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的固定电话号码是否正确
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkTelephone(str){
    if (str.match(/^(([0\\+]\\d{2,3}-)?(0\\d{2,3})-)(\\d{7,8})(-(\\d{3,}))?$/) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查QQ的格式是否正确
 * 输入:str  字符串
 *  返回:true 或 flase; true表示格式正确
 */
function checkQQ(str){
    if (str.match(/^\\d{5,10}$/) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的身份证号是否正确
 * 输入:str  字符串
 *  返回:true 或 flase; true表示格式正确
 */
function checkCard(str){
    //15位数身份证正则表达式
    var arg1 = /^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$/;
    //18位数身份证正则表达式
    var arg2 = /^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[A-Z])$/;
    if (str.match(arg1) == null && str.match(arg2) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的IP地址是否正确
 * 输入:str  字符串
 *  返回:true 或 flase; true表示格式正确
 */
function checkIP(str){
    var arg = /^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$/;
    if (str.match(arg) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的URL地址是否正确
 * 输入:str  字符串
 *  返回:true 或 flase; true表示格式正确
 */
function checkURL(str){
    if (str.match("/(http[s]?|ftp):\\/\\/[^\\/\\.]+?\\..+\\w$/i") == null) {
        return false
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的字符是否具有特殊字符
 * 输入:str  字符串
 * 返回:true 或 flase; true表示包含特殊字符
 * 主要用于注册信息的时候验证
 */
function checkQuote(str){
    var items = new Array("~", "`", "!", "@", "#", "$", "%", "^", "&", "*", "{", "}", "[", "]", "(", ")");
    items.push(":", ";", "'", "|", "\\\\", "<", ">", "?", "/", "<<", ">>", "||", "//");
    items.push("admin", "administrators", "administrator", "管理员", "系统管理员");
    items.push("select", "delete", "update", "insert", "create", "drop", "alter", "trancate");
    str = str.toLowerCase();
    for (var i = 0; i < items.length; i++) {
        if (str.indexOf(items[i]) >= 0) {
            return true;
        }
    }
    return false;
}
/**//**
 * 检查输入的一串字符是否是字符
 * 输入:str  字符串
 * 返回:true 或 flase; true表示为全部为字符 不包含汉字
 */
function checkStr(str){
    if (/[^\\x00-\\xff]/g.test(str)) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的一串字符是否包含汉字
 * 输入:str  字符串
 * 返回:true 或 flase; true表示包含汉字
 */
function IsChinese(str)
{
 var reg=/^[\\u0391-\\uFFE5]+$/;
 return reg.test(str);
}
/**//**
 * 检查输入的邮箱格式是否正确
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkEmail(str){
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
	return reg.test(str); 
	/**
    if (str.match(/[A-Za-z0-9_-]+[@](\\S*)(net|com|cn|org|cc|tv|[0-9]{1,3})(\\S*)/g) == null) {
        return false;
    }
    else {
        return true;
    }**/
}
/**//**
 * 检查密码必须为6-18位字母、数字
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkPassword(str){
	var reg=/^(?![^a-zA-Z]+$)(?!\D+$)/
	return reg.test(str); 
	/**
    if (str.match(/[A-Za-z0-9_-]+[@](\\S*)(net|com|cn|org|cc|tv|[0-9]{1,3})(\\S*)/g) == null) {
        return false;
    }
    else {
        return true;
    }**/
}
/**//**
 * 检查输入的手机号码格式是否正确
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkMobile(v){    
    var a = /^((\\(\\d{3}\\))|(\\d{3}\\-))?13\\d{9}|14[57]\\d{8}|15\\d{9}|18\\d{9}$/ ;    
    if( v.length!=11||!v.match(a) )  
    {    
       alert("请输入正确的手机号码!");    
   }  
   else{  
        ;  
   }  
} 
/**//**
 * 检查输入的固定电话号码是否正确
 * 输入:str  字符串
 * 返回:true 或 flase; true表示格式正确
 */
function checkTelephone(str){
    if (str.match(/^(([0\\+]\\d{2,3}-)?(0\\d{2,3})-)(\\d{7,8})(-(\\d{3,}))?$/) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的IP地址是否正确
 * 输入:str  字符串
 *  返回:true 或 flase; true表示格式正确
 */
function checkIP(str){
    var arg = /^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$/;
    if (str.match(arg) == null) {
        return false;
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的URL地址是否正确
 * 输入:str  字符串
 *  返回:true 或 flase; true表示格式正确
 */
function checkURL(str){
    if (str.match("/(http[s]?|ftp):\\/\\/[^\\/\\.]+?\\..+\\w$/i") == null) {
        return false
    }
    else {
        return true;
    }
}
/**//**
 * 检查输入的字符是否具有特殊字符
 * 输入:str  字符串
 * 返回:true 或 flase; true表示包含特殊字符
 * 主要用于注册信息的时候验证
 */
function checkQuote(str){
    var items = new Array("~", "`", "!", "@", "#", "$", "%", "^", "&", "*", "{", "}", "[", "]", "(", ")");
    items.push(":", ";", "'", "|", "\\\\", "<", ">", "?", "/", "<<", ">>", "||", "//");
    items.push("admin", "administrators", "administrator", "管理员", "系统管理员");
    items.push("select", "delete", "update", "insert", "create", "drop", "alter", "trancate");
    str = str.toLowerCase();
    for (var i = 0; i < items.length; i++) {
        if (str.indexOf(items[i]) >= 0) {
            return true;
        }
    }
    return false;
}