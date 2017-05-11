<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PlaymySong.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
        <style>
            /* About */

            .about {
                padding: 50px 0;
            }

            .vid {
                position: relative;
                padding-bottom: 56.25%;
                padding-top: 30px;
                height: 0;
                overflow: hidden;
            }

                .vid iframe,
                .vid object,
                .vid embed {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                }

        </style>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">IM
                   
                        <small>Music Chart</small>
                    </h1>
                </div>
            </div>
            <!-- /.row -->


            <div class="input-group input-group-lg">
  <input id="textbox1" type="text" class="form-control" placeholder="www.link-you-want-to-share.com" aria-describedby="sizing-addon1" runat="server"/>
                <span class="input-group-btn">
        <button class="btn btn-default" type="button" runat="server" onserverclick="btnInsert_Click">Go!</button>
      </span>
</div>

            <!-- About -->
            <section id="about" class="about">
                <div class="container">
                    <div class="row">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src='<%#link_1 %>'>'></iframe>
                        </div>

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>

            <asp:LinkButton id="btn_1" CssClass="btn btn-default btn-lg" runat="server" onclick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_1%>
                    </asp:LinkButton>
            &nbsp;
            <span class="badge badge-primary"><%#contributer_1 %></span> 

            <hr />

            <div class="row">
                <div class="col-lg-12">
                    <h2>Next
                        <small>Up</small>
                    </h2>
                </div>
            </div>

            <!-- Project One -->
            <div class="row">
                <div class="col-md-1">
                   <h1>&#9312;</h1>                   
                </div>
                
                <div class="col-md-6">
                    <div class="vid">
                        <iframe src='<%#link_2 %>'></iframe>
                    </div>
                    <!--./vid -->
                </div>

                <div class="col-md-1">
                    <asp:LinkButton id="btn_2" CssClass="btn btn-default btn-lg" runat="server" onclick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_2%> 
                    </asp:LinkButton>          
                </div>

                <div class="col-md-3">
                    <span class="badge badge-primary"><%#contributer_2 %></span>                    
                </div>
            </div>
            <!-- /.row -->

            <hr/>
            
            <!-- Project Two -->
            <div class="row">
                <div class="col-md-1">
                    <h1>&#9313;</h1>                    
                </div>
                
                <div class="col-md-6">
                    <div class="vid">
                        <iframe src='<%#link_3 %>'></iframe>
                    </div>
                    <!--./vid -->
                </div>

                <div class="col-md-1">
                    <asp:LinkButton id="btn_3" CssClass="btn btn-default btn-lg" runat="server" onclick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_3%>
                    </asp:LinkButton>          
                </div>

                <div class="col-md-3">
                    <span class="badge badge-primary"><%#contributer_3 %></span>                    
                </div>
            </div>
            <!-- /.row -->

            <hr/>

            <!-- Project Three -->
            <div class="row">
                <div class="col-md-1">
                    <h1>&#9314;</h1>                    
                </div>

                <div class="col-md-6">
                    <div class="vid">
                        <iframe src="//www.youtube.com/embed/jeo3an2M_Lo"></iframe>
                    </div>
                    <!--./vid -->
                </div>

                <div class="col-md-1">
                    <button type="button" class="btn btn-default btn-lg">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> 14 
                    </button>          
                </div>

                <div class="col-md-3">
                    <span class="badge badge-primary">Abhishek</span>                    
                </div>
            </div>
            <!-- /.row -->


            <hr/>
            <br />
            <br />


        </div>
        <!-- /.container -->

        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </form>
</body>
</html>
