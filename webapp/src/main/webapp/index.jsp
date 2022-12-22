<%@page import="java.net.InetAddress"%> <%@page contentType="text/html"
pageEncoding="windows-1252"%>

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
      <td>
        <% try { out.println((InetAddress.getLocalHost().getHostName())); }
        catch (Exception e) { out.println("IMPOSSIBILE DETERMINARE MACCHINA"); }
        %>
      </td>
      <td>
        <% try { out.println((InetAddress.getLocalHost().getHostAddress())); }
        catch (Exception e) { out.println("IMPOSSIBILE DETERMINARE IP ADDRESS");
        } %>
      </td>
    </tr>
    <tr>
      <td>REAL PATH</td>
      <td>
        <% out.println(this.getServletContext().getRealPath("/WEB-INF")); %>
      </td>
    </tr>
  </tbody>
</table>
<br />
<h1>Hello World?#?</h1>
