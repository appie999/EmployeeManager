<%--
  Created by IntelliJ IDEA.
  User: appie
  Date: 2/14/2025
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>

<%

if (request.getParameter("submit") != null){
  String Full_Name = request.getParameter("Full_Name");
  String poste = request.getParameter("poste");
  String salaire = request.getParameter("salaire");
  String email = request.getParameter("Email");

  Connection connection;
  PreparedStatement preparedStatement;
  ResultSet resultSet;

  Class.forName("com.mysql.jdbc.Driver");
  connection = DriverManager.getConnection("jdbc:mysql://localhost/employee","root","");
  preparedStatement = connection.prepareStatement("insert into records (fullname,email,poste,salary) values (?,?,?)");
  preparedStatement.setString(1, Full_Name);
  preparedStatement.setString(2,email );
  preparedStatement.setString(3,poste );
  preparedStatement.setString(4,salaire );
  preparedStatement.executeUpdate();

%>
<script>
  alert("Record Adddeddddd");
</script>
<%
  }
%>



<html>
  <head>
    <title>Home</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet"type="text/css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"type="text/css">
  </head>
  <body>
      <h1 class="text text-center">Employee Manage</h1>
      </br>
        <div class="row">

          <div class="col-1-sm-4">

            <form  method="POST" action="#">

              <div alight="left" >
                <label class="form-label" >Full Name</label>
                <input type="text" class="form-control" placeholder="Full Name" name="Full_Name" id="Full_Name" required>
              </div>

              <div alight="left" >
                <label class="form-label" >Poste</label>
                <input type="text" class="form-control" placeholder="Poste" name="Poste" id="Poste" required>
              </div>

              <div alight="left" >
                <label class="form-label" >salaire</label>
                <input type="text" class="form-control" placeholder="salaire" name="salaire" id="salaire" required>
              </div>

              <div alight="left" >
                <label class="form-label" >E-mail</label>
                <input type="text" class="form-control" placeholder="E-mail" name="Email" id="Email" required>
              </div>
                  </br>
              <div alight="right" >
                <input type="submit" value="submit" id="submit" name="submit" class="btn btn-info">
                <input type="reset" value="reset" id="reset" name="reset" class="btn btn-warning">
              </div>
            </form>
          </div>

          <div class="col-sm-8">
            <div class="panel-body">

              <table id="tbl-emp"class="table table-responsive table-bordered" cellpadding="0" width="100%">

                <thead>
                <tr>

                  <th>Full Name</th>
                  <th>Poste</th>
                  <th>salaire</th>
                  <th>E-mail</th>
                  <th>Update</th>
                  <th>delete</th>

                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                </thead>

              </table>

            </div>
          </div>

        </div>

  </body>
</html>
