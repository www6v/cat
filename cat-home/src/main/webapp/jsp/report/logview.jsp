<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="a" uri="/WEB-INF/app.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="res" uri="http://www.ebay.com/webres"%>
<jsp:useBean id="ctx" type="com.dianping.cat.report.page.logview.Context" scope="request"/>
<jsp:useBean id="payload" type="com.dianping.cat.report.page.logview.Payload" scope="request"/>
<jsp:useBean id="model" type="com.dianping.cat.report.page.logview.Model" scope="request"/>

<a:body>

<res:useCss value='${res.css.local.default_css}' target="head-css"/>
<res:useCss value='${res.css.local.logview_css}' target="head-css"/>

<c:choose>
	<c:when test="${empty model.table}">
		<div class="error"></div>Sorry, this message had already been archived.</div>
	</c:when>
	<c:otherwise>${model.table}</c:otherwise>
</c:choose>

</a:body>