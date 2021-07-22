<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page "Регистрация">
    <h1 class="mb-1">Регистрация</h1>
    ${message!""}
    <@l.login "/registration" true/>
</@c.page>