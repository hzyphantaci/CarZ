<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<option value="null" style="display: none" disabled selected>选择车型</option>
<c:forEach items="${modelList}" var="model">
	<option value="${model}">${model}</option>
</c:forEach>