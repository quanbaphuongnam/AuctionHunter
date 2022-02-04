<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:layout_user title="404">
	<jsp:attribute name="content">
        <div class="container">
        	<div class="row">
            	<div class="col-12 col-sm-12 col-md-12 col-lg-12">	
        			<div class="empty-page-content text-center">
                        <h1>404 Page Not Found</h1>
                        <p>The page you requested does not exist.</p>
                        <p><a href="${pageContext.request.contextPath }/home" class="btn btn--has-icon-after">Continue shopping <i class="fa fa-caret-right" aria-hidden="true"></i></a></p>
                      </div>
        		</div>
        	</div>
        </div>
	</jsp:attribute>
</mt:layout_user>