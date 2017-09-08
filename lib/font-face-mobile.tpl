@font-face {
    font-family: "<%=fontFamily%>";
    src: <%if (local) {%>local("<%=local%>"), <%}%><% if (base64) { %>url(<%=base64%>) format("truetype")<% } else { %>url("<%=fontPath%><%=fontFile%>.ttf") format("truetype")<% } %>;
    font-style: normal;
    font-weight: normal;
}

<% if (glyph) { %>
[class^="<%=iconPrefix%>-"],
[class*=" <%=iconPrefix%>-"]:after {
    font-family: "<%=fontFamily%>";
    speak: none;
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

<% _.each(glyfList, function(glyf) { %>
.<%=iconPrefix%>-<%=glyf.name%>:before {
    content: "<%=glyf.codeName%>";
}
<% }); %>
<% }; %>
