/**
 * DataTable请求报错公共调用函数
 * 
 * @param xhr
 * @param textStatus
 * @param error
 * @returns
 */
function ajaxError(xhr, textStatus, error) {
	document.write(xhr.responseText);
}