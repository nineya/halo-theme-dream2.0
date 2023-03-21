<#include "templates/layout_pjax.ftl">
<#global is_first_index=(posts.number == 0) >
<@layout title="${blog_title!}" canonical="${blog_url!}">
    <#if posts.content?? && posts.content?size gt 0>
        <#include "templates/main/article_list.ftl">
        <@article_list posts.content/>
        <#include "templates/main/pagination.ftl">
        <@pagination method="index" datas=posts display="${settings.page_number!5}" />
    <#else>
        <div class="card card-empty">
            <i class="fa fa-inbox"></i>
            还没有发表过文章
        </div>
    </#if>
</@layout>