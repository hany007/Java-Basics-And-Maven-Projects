
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4>Login or Register</h4>
					<form class="aa-login-form" name="login"
						action="<C:url value='j_spring_security_check'/>" method="post">
						<C:if test="${not empty error }">
							<div class="error" style="color: #ff0000;"></div>
						</C:if>
						<divclass="span9center"> <C:if test="${not empty msg}">
							<divclass"msg">${msg}
				</div>
				</C:if>
			</div>
			<label for="UserName">Username<span>*</span></label> <input
				type="text" id="username" name="username" class="form-control"
				placeholder="Username"> <label for="">Password<span>*</span></label>
			<input type="password" id="password" name="password"
				class="form-control" placeholder="Password">
			<input type="submit" value="login" class="aa-browse-btn">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<label for="rememberme" class="rememberme"><input
				type="checkbox" id="rememberme"> Remember me </label>
			<p class="aa-lost-password">
				<a href="#">Lost your password?</a>
			</p>
			<div class="aa-register-now">
				Don't have an account?<a href="account">Register now!</a>
			</div>
			</form>
		</div>
	</div>
	<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	</div>
</body>
</html>