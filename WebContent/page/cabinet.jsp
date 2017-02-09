<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../pagehelp/localization.jspf" %>

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta charset="utf-8">
		
		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700&amp;subset=cyrillic">
		<link rel="stylesheet" href="css/style.css">
		<title>Personal Area</title>
</head>
<body>
	<header class="main-header"> 
				<div class="container clearfix">
					<nav class="main-navigation">
						<a class="logo-inner" href="index">
							<img src="img/loggo-inner.png" width="111" height="24" alt="Borodinski">
						</a>
						<ul>						
							<li>
								<a href="#">${navigation_Information}</a>
							</li>
							<li>
								<a href="#">${navigation_news}</a>
							</li>
							<li>
								<a href="price-list">${navigation_price}</a>
							</li>
							<li>
								<a href="shop.html">${navigation_shop}</a>
							</li>
							<li>
								<a href="#">${navigation_contacts}</a>
							</li>
						</ul>	
					</nav>
					<div class="user-block">
						<c:if test="${sessionScope.logged == null}">
							<a class="login" href="#">${navigation_signIn}</a>
						</c:if>
						<c:if test="${sessionScope.logged == true}">
							<a class="login1" href="#">
								<c:out value="${user.name}"></c:out>
							</a>
						</c:if>
						<form action="controller" method="post">
							<input type="hidden" name="command" value="localization" />
							<button class="rus-localization" type="submit" name="local" value="ru"></button>
							<button class="us-localization" type="submit" name="local" value="en"></button>
						</form>
					</div>
				</div>
		</header>
		
		
		
		<main class="container">
		<div class="inner-page-title">
			<h1>Прайс-лист</h1>
			<ul class="breadcrumbs">
				<li>
					<a href="index">Главная</a>
				</li>
				<li class="current">
					Прайс-лист
				</li>			
			</ul>
		</div>
		<div class="inner-content">
			<div class="big-heading">
				<h2>Истинно мужская классика</h2>
			</div>
			<div class="inner-columns clearfix">
				<div class="inner-column-left">
					<ul class="custom-list-1">
					<h2>Мы используем только лучшие средства</h2>
						<li>Baxter of California</li>
						<li>Mr Natty</li>
						<li>Suavecito</li>
						<li>Malin+Goetz</li>				
					</ul>
				</div>
				<div class="inner-column-right">	
					<h2>Цены на услуги наших мастеров:</h2>
					<table class="price-table">
						<tr>
							<td>Стрижка</td>
							<td>50 р.</td>
						</tr>
						<tr>
							<td>Стрижка бороды</td>
							<td>20 р.</td>
						</tr>
						<tr>
							<td>Накрутка усов</td>
							<td>15 р.</td>
						</tr>
					</table>
				</div>	
			</div>
			<div class="inner-columns clearfix">
				<h2>Несколько слов о нас:</h2>
				<div class="inner-column-left">
					<p>	
						Наша парикмахерская заниается исключительно мужскими стрижками.
						Стрижка каждого клиента для нас - это уникальная и продуманая до мелочей работа.
						Мы не работаем на качество, мы делаем качество.
					</p>
				</div>
				<div class="inner-column-right">
					<p>
						Наша мастерская расположена в центре города, поэтому стильную стрижку можно сделать в любое время, даже в обеденный перерыв.
						Здесь вы можете погрузиться в удобную для вас атмосферу, чувствовать себя комфортно и свободно!
					</p>
				</div>
			</div>	
		</div>
		</main>
		
		
		
		<footer class="main-footer">
			<div class="container clearfix">
				<section class="footer-contacts">
					${footer_contacts_first} <br>
					${footer_contacts_second}<br>
					<a href="#">${footer_contacts_thrid}</a><br>
					${footer_contacts_forsth}
				</section>
				<section class="footer-social">
					<p>
						${footer_social}
					</p>
					<a class="social-btn social-btn-vk" href="#">Вконтакте</a>
					<a class="social-btn social-btn-fb" href="#">Фейсбук</a>
					<a class="social-btn social-btn-inst" href="#">Инстаграм</a>
					
				</section>
				<section class="footer-copyright">
					<p>${footer_copyright}</p>
					<a class="btn" href="#">Николаев Илья</a>
				</section>
			</div>
		</footer>
		<!-- POP UP логинация -->
		<div class="modal-content">
			<button class="modal-content-close" type="button" title="Закрыть">Закрыть</button>
			<h2 class="modal-content-title">Личтный кабинет</h2>
			<p>Введите свой логин и пароль</p>
			<form class="login-form" action="controller" method="post">
				<input class="icon-user" type="text" name="user_login" placeholder="Логин" required="required">
				<input class="icon-password" type="password" name="user_password" placeholder="Пароль" required="required">
				<label class="login-checkbox">
					<input type="checkbox" name="remember">
					<span class="checbox-indicator"></span>
					Запомнить меня
					</label>
					<a class="restore" href="#">Я забыл пароль</a>
					<a class="restore" href="registration">Регистрация</a>
				
				<button class="btn" type="submit" name="command" value="signin">Войти</button>
			</form>
		</div>
		<!-- КАРТА С POP-UP -->
		<div class="modal-content-map">
			 <button class="modal-content-close" type="button" title="Закрыть">Закрыть</button>
			 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2346.8370973253445!2d27.664170516205665!3d53.97016048011455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbc8de62279abb%3A0x2a802aca07fcef6a!2z0YPQuy4g0JLQsNC70LXRgNGM0Y_QvdC-0LLQviAxNiwg0JLQsNC70LXRgNGM0Y_QvdC-0LLQviAyMjMwNTMsINCR0LXQu9Cw0YDRg9GB0Yw!5e0!3m2!1sru!2sru!4v1484740519890" width="766" height="561" frameborder="0" style="border:0" allowfullscreen></iframe>
			 <div class="yandex-map"></div>
		</div>
		<div class="modal-overlay"></div>
		
		<script src="js/javascript.js"></script>
</body>
</html>