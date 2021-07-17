<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page "Логин">
<h1>Логин</h1>
<@l.login "/login" />
<a href="/registration">Регистраиция</a>
</@c.page>