<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page "Регистрация">
    <h1>Регистрация</h1>
    ${message!""}
    <@l.login "/registration" />
</@c.page>