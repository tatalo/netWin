<!DOCTYPE html>
%{--博彩技巧 介紹--}%
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="default.webname.label"/></title>
</head>

<body>
<g:render template="/gambleTech/narbar1" model="[lv1IDX: lv1IDX]"/>
<g:render template="/gambleTech/narbar2" model="[lv1IDX: lv1IDX,lv2IDX: lv2IDX]"/>
<hr class="soften"/>

<div class="container">
    <g:render template="/base/content/content2" model="[nw400I: nw400I, backLink: backLink]"/>
</div>

</body>
</html>
