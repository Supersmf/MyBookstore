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
<div class="row" style="background-color:#003366;text-align:center;padding:10px;">
                          <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">
                            <div>
<span style="text-shadow: 0px 2px 6px #800000;font-size:17px;color:gold;font-family:initial;">
Welcome : &nbsp;${SessionAdminName} (Administrator)</span>
                            </div>
                          </div>
                         <div class="col-sm-4" align="right">
<button type="submit" onclick="location.href='goback'" class="btn btn-default">
Go Home</button>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
<button type="submit" onclick="location.href=''" class="btn btn-default">Log Out</button>
                         </div>
                     </div>
               </div><br/>
               <div class="container text-center" >   
                      <div class="row">
                         <div class="col-sm-12 well">    
                              <div class="well">
<button onclick="location.href='addToLib'" class="btn btn-default" 
style="background-color:#003366;color:white;height:60px;"><h4>Add Books to Library</h4></button>
                              </div>
                       </div>
                       </div>
                     <div class="row">
                           <div class="col-sm-12 well">
                             <div class="well">
<button type="submit"  onclick="location.href='viewlibrary'" class="btn btn-default" 
style="background-color:seagreen;color:white;height:60px;"><h4>
&nbsp; View Library (Edit + Update + Delete) &nbsp;</h4></button>
                              </div>
                        </div>
                      </div>
              </div>
              <br/>

               <table width="100%" text-align="center">
                  <tr>
                      <td style="background-color:#003366;color:white;padding:5px">
                          <footer class="container-fluid text-center">
                              <p>
 <mark style="background-color:transparent;color:white">${codedBy}</mark>&nbsp;&nbsp;
                              </p>
                        </footer>
                    </td>
                </tr>
                </table>
             </td>
         </tr>
    </table>
</body>
</html>