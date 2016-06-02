<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<title>吉他查询</title>
<link href="Css/bootstrap.css" rel="stylesheet">
<link href="Css/style.css" rel="stylesheet">
<style type="text/css">
        td
        {
         border-width:2px;
         border-style:solid;
         text-align:center;
         height:60px;
        }
    </style>
</head>
<body>
<h1 align=center>吉他购买</h1>
<hr/>
    <h2 align=center>查询结果</h2>
    <table width="600"  border="2" cellpadding="1" cellspacing="1" align="center">

<tr>
    <td>序列号</td>
	<td>制造商</td>
	<td>型号</td>
	<td>类型</td>
	<td>顶部材料</td>
	<td>背部材料</td>
	<td>价格</td>
</tr>

<c:forEach items="${res}" var="p">

	<tr>
	<td>${p.serialNumber}</td>
	<td>${p.getSpec().getBuilder()}</td>
	<td>${p.getSpec().getModel()}</td>	
	<td>${p.getSpec().getType()}</td>
	<td>${p.getSpec().getBackWood()}</td>
    <td>${p.getSpec().getTopWood()}</td>
	<td>${p.price}</td>	
	</tr>

</c:forEach>
</table>
<script src="Js/jquery.min。js"></script>
	<script src="Js/bootstrap.min.js"></script>
	<script src="Js/bootstrap.js"></script>
</body>
</html>