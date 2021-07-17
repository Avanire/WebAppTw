<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as logout>

<@c.page "Главная страница">
<div>
    <@logout.logout/>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение">
        <input type="text" name="tag" placeholder="Тег">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button>Добавить</button>
    </form>
</div>
<div>
    <h2>Список сообщений</h2>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter!""}">
        <button type="submit">Найти</button>
    </form>
<#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
    No messages
</#list>
</div>
</@c.page>