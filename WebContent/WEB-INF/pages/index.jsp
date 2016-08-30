<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Bookstore</title>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      
      
      <style>
          body 
          {
            color: black
        }
    </style>
</head>
<body>
    <table width="50%" align="center" style="margin-top:3%;box-shadow: 0px 9px 30px #888888;">
        <tr>
            <td>
                <div class="container-fluid">
                      <div class="row">
  <div class="col-sm-12" style="background-color:#003366;text-align:center;padding:13px;">
                                <div>
 <span style="text-shadow: 0px 2px 6px #800000;font-size:17px;color:gold;font-family:initial;">
 MVC Web Application using Spring, Hibernate, PostgreeSQL</span>
                                </div>
    
    
                           </div>
                      </div>
                </div>
                <br/><br/><hr>
                <div class="container text-center" >    
                      <div class="row">
                        <h3>Your Home Library</h3><h4><mark>Add, Delete and Update</mark></h4><br/>
                               <div class="col-sm-12 well">
                                 <div class="well">
                                        <p>Sign up login: "Oleg" & password: "admin"</p>
                        <form class="form-inline" role="form" method="post" action="home">
                                            <div class="form-group">
                                                  <label for="name">Name:</label>
     <input type="text" class="form-control" name="name" placeholder="Enter name">
                                               </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <div class="form-group">
                                                   <label for="pwd">Password:</label>
     <input type="password" class="form-control" name="password"  placeholder="Enter password">
                                            </div>
                                               <p></p>
<button type="submit" class="btn btn-default" style="background-color:#003366;color:white">Submit</button>
                                          </form>
                                </div>
                          </div>
                      </div>
                 </div>
               <br/>
<table width="100%" text-align="center">
      <tr>
          <td style="background-color:#003366;color:white;padding:5px">
              <footer class="container-fluid text-center">
 <p>Created by <mark style="background-color:transparent;color:white">
 Oleg Gaidykevich</mark>&nbsp;&nbsp;</p>
            </footer>
        </td>
    </tr>
</table>
  </td>
  </tr>
</table>
</body>
</html>