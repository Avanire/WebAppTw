<#import "parts/common.ftlh" as c>


<@c.page "Главная страница">
    <form method="get" action="/main" class="row g-3">
        <div class="col-auto">
            <label for="search" class="visually-hidden">Поиск</label>
            <input type="text" name="filter" value="${filter!""}" class="form-control" id="search" placeholder="Найти">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-primary mb-3">Найти</button>
        </div>
    </form>
    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Добавить сообщение
    </a>
    <div class="collapse" id="collapseExample">
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3 row">
                <label for="message" class="col-sm-2 col-form-label">Сообщение</label>
                <div class="col-sm-10">
                    <input type="text" name="text" class="form-control" placeholder="Введите сообщение" id="message">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="tag" class="col-sm-2 col-form-label">Тег</label>
                <div class="col-sm-10">
                    <input type="text" name="tag" class="form-control" placeholder="Тег" id="tag">
                </div>
            </div>
            <div class="mb-3">
                <label for="formFile" class="form-label">Выбрать файл</label>
                <input type="file" name="file" id="formFile" class="form-control">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button class="btn btn-primary">Добавить</button>
            </div>
        </form>
    </div>

    <div>
        <div class="row row-cols-1 row-cols-md-3 g-4">

            <#list messages as message>
                <div class="col">
                    <div class="card my-3">
                        <#if message.filename??>
                            <img src="/img/${message.filename}" alt="" class="card-img-top">
                        </#if>
                        <div class="m-2">
                            <span>${message.text}</span>
                            <i>${message.tag}</i>
                        </div>
                        <div class="card-footer">
                            ${message.authorName}
                        </div>

                    </div>
                </div>
            <#else>
                No messages
            </#list>

        </div>
    </div>
</@c.page>