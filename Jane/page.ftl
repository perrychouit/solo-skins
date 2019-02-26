<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-2019, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "macro-head.ftl">
<#include "macro-comments.ftl">
<#include "../../common-template/macro-comment_script.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="${page.pageTitle} - ${blogTitle}">
    <meta name="keywords" content="${metaKeywords},${page.pageTitle}"/>
    <meta name="description" content="${metaDescription}"/>
</@head>
</head>
<body>
<#include "header.ftl">
<div id="pjax" class="wrapper">
    <#if pjax><!---- pjax {#pjax} start ----></#if>
    <article class="article__item">
        <h2 class="article__title">
            <a href="${servePath}${page.pagePermalink}">${page.pageTitle}</a>
        </h2>
        <div class="fn__clear">
            <a class="ft__red fn__right" href="#comments"><#if page.pageCommentCount gt 0>${page.pageCommentCount} </#if>${commentLabel}</a>
        </div>
        <div class="content-reset article__content">
        ${page.pageContent}
        </div>
    </article>
    <@comments commentList=pageComments article=page></@comments>
    <#if pjax><!---- pjax {#pjax} end ----></#if>
</div>
<#include "footer.ftl">
<#if pjax><!---- pjax {#pjax} start ----></#if>
<@comment_script oId=page.oId commentable=page.commentable></@comment_script>
<#if pjax><!---- pjax {#pjax} end ----></#if>
</body>
</html>
