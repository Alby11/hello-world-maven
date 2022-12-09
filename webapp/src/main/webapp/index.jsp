<%@page import="Ambiente.ServiceEnv" %>
<%@page import="java.net.InetAddress"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>

<table border="5">
    <thead>
        <tr>
            <th>INFO</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>SERVER INFO</td>
            <td><% out.println(this.getServletContext().getServerInfo()); %></td>
        </tr>
        <tr>
            <td>LOCAL HOST</td>
            <td><%
                try {
                    out.println((InetAddress.getLocalHost().getHostName()));
                } catch (Exception e) {
                    out.println("IMPOSSIBILE DETERMINARE MACCHINA");
                }
                %>
            </td>
        </tr>
        <tr>
            <td>REAL PATH</td>
            <td><% out.println(this.getServletContext().getRealPath("/WEB-INF")); %></td>
        </tr>
        <tr>
            <td>FRAMEWORK VERSION</td>
            <td><% out.println(ServiceEnv.getKarlyFrameworkVersion());%></td>
        </tr>
        <tr>
            <td>PARAMETRI FRAMEWORK</td>
            <td><% out.println(ServiceEnv.getFullConfParam());%></td>
        </tr>
    </tbody>
</table>
<br>
<h1> Hello World aaaaa !!! </h1>
