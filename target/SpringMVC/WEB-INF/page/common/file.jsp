<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/lib/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/lib/jquery-easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/acceptance.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/register.css">
<script type="text/javascript" src="<%=basePath%>/jquery-easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.edatagrid.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/ajaxfileupload.js"></script>
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>
 
    <center>
        <h2>Hello World</h2>
        <h3>
            <a href="welcome.action?name=zhangsan">点击跳转</a>
        </h3>
        <input id="file1" name="files" type="file"/>
        <input id="file2" name="files" type="file"/>
        <input id="file3" name="files" type="file"/>
        <button onclick="multiFileUpload()">多文件上传</button>
    </center>
</body>
<script type="text/javascript" >
//多文件上传
function multiFileUpload() {
    debugger;
    $.ajaxFileUpload({
        url: '/pubFileUpload/multiFileUpload.action',
        type:'post',
        //secureuri: false, //是否需要安全协议，一般设置为false
        fileElementId: ['file1','file2','file3'], //文件上传域的ID
        success: function (data){
            $.messager.alert("操作提示", "文件上传成功！","info");
        }
    });
}

</script>
</html>