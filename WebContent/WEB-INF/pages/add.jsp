<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <title>Bookstore</title>
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
<button type="submit" onclick="location.href='goback'" class="btn btn-default">Go Home</button>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<button type="submit" onclick="location.href=''" class="btn btn-default">Log Out</button>
                            </div>
                          </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="container text-center" >
                         <div class="row">
                              <h3 style="color:#1E90FF">Add Book to Library</h3><br/>
                                   <div class="col-sm-12">
                                      <div>
                              <form class="form-inline"  method="post" action="adding">
                                                <div class="form-group">
<label for="bookname">Book Name&nbsp;:</label>
<input type="text" class="form-control"
Style="background-color:#cce6ff;" name="name" placeholder="Enter Name">
                                                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <div class="form-group">
                                                 <label for="booktype">Book Type:
                                                 </label>
<select class="form-control" Style="background-color:#cce6ff;" name="type">
                                                      <option>Technical</option>
                                                      <option>Guide</option>
                                                      <option>History</option>
                                                      <option>Others</option>
                                                </select>
                                                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <div class="form-group">
                             <label for="bookedtion">Book Edition&nbsp;:</label>
<select class="form-control" Style="background-color:#cce6ff;" name="edition">
                                                         <option>First</option>
                                                          <option>Second</option>
                                                          <option>Third</option>
                                                          <option>Latest</option>
                                                     </select>
                                             </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                          <div class="form-group">
                                    <label for="quantity">Quantity&nbsp;:</label>
 <select class="form-control" Style="background-color:#cce6ff;" name="quantity">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                            </select>
                                         </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                          <div class="form-group">
                                                  <label for="price">Price&nbsp;:
                                                  </label>
<input type="text" class="form-control"
Style="background-color:#cce6ff;" name="price" placeholder="Enter Price">
                                            </div>
                                          <br/><br/>
                    <button type="submit" class="btn btn-primary">Submit</button>
                                  </form>
                             </div>
                          </div>
                    </div>
                </div>
            <hr/>
            <div class="container">
<div style="text-align:center;"><h3 style="color:#1E90FF;font-size:25px">Your Library</h3>&nbsp;
                  </div>       
                      <table class="table table-striped" align="center">
                            <thead>
                              <tr>
                                <th>Book Name</th>
                                <th>Book Type</th>
                                <th>Book Edition</th>
                                <th>Quantity</th>
                                <th>Price</th>
                              </tr>
                            </thead>
                               <tbody>
                                  <tr>
                                      <td>${librarymodel.name}</td>
                                      <td>${librarymodel.type}</td>
                                      <td>${librarymodel.edition}</td>
                                      <td>${librarymodel.quantity}</td>
                                      <td>${librarymodel.price}</td>
                                  </tr>
                            </tbody>
                        </table>
                  </div>
            </td>
        </tr>
             <tr align="center"><td>
                 <span style="color:green;"><h4>${success}</h4></span>
                 <span style="color:red;"><h4>${fail}</h4></span><br/>
             </td>
         </tr>
    </table>
</body>
</html>
