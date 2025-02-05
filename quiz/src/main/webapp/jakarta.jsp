<%--
    The block tag implements a basic but useful extensible template system.

    A base template consists of a block tag without a 'template' attribute.
    The template body is specified in a standard jsp:body tag, which can
    contain EL, JSTL tags, nested block tags and other custom tags, but
    cannot contain scriptlets (scriptlets are allowed in the template file,
    but only outside of the body and attribute tags). Templates can be
    full-page templates, or smaller blocks of markup included within a page.

    The template is customizable by referencing named attributes within
    the body (via EL). Attribute values can then be set either as attributes
    of the block tag element itself (convenient for short values), or by
    using nested jsp:attribute elements (better for entire blocks of markup).

    Rendering a template block or extending it in a child template is then
    just a matter of invoking the block tag with the 'template' attribute set
    to the desired template name, and overriding template-specific attributes
    as necessary to customize it.

    Attribute values set when rendering a tag override those set in the template
    definition, which override those set in its parent template definition, etc.
    The attributes that are set in the base template are thus effectively used
    as defaults. Attributes that are not set anywhere are treated as empty.

    Internally, attributes are passed from child to parent via request-scope
    attributes, which are removed when rendering is complete.

    Here's a contrived example:

    ====== WEB-INF/tags/block.tag (the template engine tag)

    <the file you're looking at right now>

    ====== WEB-INF/templates/base.jsp (base template)

    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
    <t:block>
        <jsp:attribute name="title">Template Page</jsp:attribute>
        <jsp:attribute name="style">
            .footer { font-size: smaller; color: #aaa; }
            .content { margin: 2em; color: #009; }
            ${moreStyle}
        </jsp:attribute>
        <jsp:attribute name="footer">
            <div class="footer">
                Powered by the block tag
            </div>
        </jsp:attribute>
        <jsp:body>
            <html>
                <head>
                    <title>${title}</title>
                    <style>
                        ${style}
                    </style>
                </head>
                <body>
                    <h1>${title}</h1>
                    <div class="content">
                        ${content}
                    </div>
                    ${footer}
                </body>
            </html>
        </jsp:body>
    </t:block>

    ====== WEB-INF/templates/history.jsp (child template)

    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
    <t:block template="base" title="History Lesson">
        <jsp:attribute name="content" trim="false">
            <p>${shooter} shot first!</p>
        </jsp:attribute>
    </t:block>

    ====== history-1977.jsp (a page using child template)

    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
    <t:block template="history" shooter="Han" />

    ====== history-1997.jsp (a page using child template)

    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
    <t:block template="history" title="Revised History Lesson">
        <jsp:attribute name="moreStyle">.revised { font-style: italic; }</jsp:attribute>
        <jsp:attribute name="shooter"><span class="revised">Greedo</span></jsp:attribute>
    </t:block>

--%>

<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag import="java.util.HashSet, java.util.Map, java.util.Map.Entry" %>
<%@ tag dynamic-attributes="dynattributes" %>
<%@ attribute name="template" %>
<%
    // get template name (adding default .jsp extension if it does not contain
    // any '.', and /WEB-INF/templates/ prefix if it does not start with a '/')
    String template = (String)jspContext.getAttribute("template");
    if (template != null) {
        if (!template.contains("."))
            template += ".jsp";
        if (!template.startsWith("/"))
            template = "/WEB-INF/templates/" + template;
    }
    // copy dynamic attributes into request scope so they can be accessed from included template page
    // (child is processed before parent template, so only set previously undefined attributes)
    Map<String, String> dynattributes = (Map<String, String>)jspContext.getAttribute("dynattributes");
    HashSet<String> addedAttributes = new HashSet<String>();
    for (Map.Entry<String, String> e : dynattributes.entrySet()) {
        if (jspContext.getAttribute(e.getKey(), PageContext.REQUEST_SCOPE) == null) {
            jspContext.setAttribute(e.getKey(), e.getValue(), PageContext.REQUEST_SCOPE);
            addedAttributes.add(e.getKey());
        }
    }
%>

<% if (template == null) { // this is the base template itself, so render it %>
    <jsp:doBody/>
<% } else { // this is a page using the template, so include the template instead %>
    <jsp:include page="<%= template %>" />
<% } %>

<%
    // clean up the added attributes to prevent side effect outside the current tag
    for (String key : addedAttributes) {
        jspContext.removeAttribute(key, PageContext.REQUEST_SCOPE);
    }
%>
