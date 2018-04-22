<%-- 
    Document   : listBook
    Created on : Apr 13, 2018, 3:52:35 PM
    Author     : ThoConXInhXan
--%>

<%@page import="sessionbeans.CategoryFacadeLocal"%>
<%@page import="javax.ejb.EJB"%>
<%@page import="java.util.List"%>
<%@page import="entities.items.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>

        <!--thanh tiêu đề-->
        <div class="menu">
            <ul>
                <li><a href="index.jsp">Trang chủ</a></li>
                    <%
                        List<Typecategory> listTC = (List<Typecategory>) session.getAttribute("listTypeCategory");
                        List<Category> listC = (List<Category>) session.getAttribute("listCategory");
                        for (Typecategory elem : listTC) {
                    %>
                <li><a href="#"><% out.print(elem.getType()); %></a>
                    <ul>
                        <%
                            for (Category el : listC) {
                                if (elem.getId() == el.getTypeCategoryId().getId()) {
                        %>
                        <li><a href="#"><% out.print(el.getName()); %></a></li>
                            <%
                                    }
                                }
                            %>
                    </ul>
                    <%
                        }
                    %>
            </ul>
        </div>
    </body>
</html>
