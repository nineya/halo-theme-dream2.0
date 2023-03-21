<#include "templates/layout_pjax.ftl">
<#include "templates/main/article_literature.ftl">
<@layout title="${post.title!} - ${blog_title!}" canonical="${post.fullPath!}">
    <@articleLiterature post,"post" />
</@layout>