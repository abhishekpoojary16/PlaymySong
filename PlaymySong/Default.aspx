﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PlaymySong.Default" %>

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

            .badge-notify {
                background: red;
                position: relative;
                top: -20px;
                left: -35px;
            }
        </style>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Playing
                   
                        <small>Now</small>
                    </h1>
                </div>
            </div>
            <!-- /.row -->


            <div class="input-group input-group-lg">
                <input id="textbox1" type="text" class="form-control" placeholder="www.link-you-want-to-share.com" aria-describedby="sizing-addon1" runat="server" />
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">
                       <span class="badge badge-primary"> <span class="glyphicon glyphicon-remove"></span> Trap </span>
                    </button>
                    
                    <button id="btn_hip" class="btn btn-default" type="button">Hip hop</button>
                    <button class="btn btn-default" type="button" runat="server" onserverclick="btnInsert_Click">Go!</button>
                </span>
            </div>

            <br />

            <!-- Tags -->
            <button id="btn_hiphop" class="btn btn-primary" type="button">Hip hop</button>
            <button id="btn_instrumental" class="btn btn-success" type="button">Instrumental</button>
            <button id="btn_bollywood" class="btn btn-danger" type="button">Bollywood</button>


            <!-- About -->
            <div id="r1" runat="server" visible="false">
                <section id="about" class="about">
                    <div class="container">
                        <div class="row">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src='<%#link["link_1"]%>'>'></iframe>
                            </div>

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container -->
                </section>

                <asp:LinkButton ID="btn_1" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes["upvotes_1"]%>
                </asp:LinkButton>
                &nbsp;
            <span class="badge badge-primary"><%#contributer["contributer_1"] %></span>

                <hr />
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <h2>Next
                        <small>Up</small>
                    </h2>
                </div>
            </div>

            <!-- Up Next One -->
            <div id="r2" runat="server" visible="false">
                <div class="row">
                    <div class="col-md-1">
                        <h1>&#9312;</h1>
                    </div>

                    <div class="col-md-6">
                        <div class="vid">
                            <iframe src='<%#link["link_2"] %>'></iframe>
                        </div>
                        <!--./vid -->
                    </div>

                    <div class="col-md-1">
                        <asp:LinkButton ID="btn_2" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes["upvotes_2"]%> 
                        </asp:LinkButton>
                    </div>

                    <div class="col-md-3">
                        <span class="badge badge-primary"><%#contributer["contributer_2"] %></span>
                    </div>

                </div>
                <hr />
            </div>
            <!-- /.row -->



            <!-- Up Next Two -->
            <div id="r3" runat="server" visible="false">
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
                        <asp:LinkButton ID="btn_3" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_3%>
                        </asp:LinkButton>
                    </div>

                    <div class="col-md-3">
                        <span class="badge badge-primary"><%#contributer_3 %></span>
                    </div>

                </div>
                <hr />
            </div>
            <!-- /.row -->



            <!-- Up Next Three -->
            <div id="r4" runat="server" visible="false">
                <div class="row">
                    <div class="col-md-1">
                        <h1>&#9314;</h1>
                    </div>

                    <div class="col-md-6">
                        <div class="vid">
                            <iframe src='<%#link_4 %>'></iframe>
                        </div>
                        <!--./vid -->
                    </div>

                    <div class="col-md-1">
                        <asp:LinkButton ID="btn_4" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_4%>
                        </asp:LinkButton>
                    </div>

                    <div class="col-md-3">
                        <span class="badge badge-primary"><%#contributer_4 %></span>
                    </div>
                </div>
                <hr />
            </div>
            <!-- /.row -->

            <!-- Up Next Four -->
            <div id="r5" runat="server" visible="false">
                <div class="row">
                    <div class="col-md-1">
                        <h1>&#9315;</h1>
                    </div>

                    <div class="col-md-6">
                        <div class="vid">
                            <iframe src='<%#link_5 %>'></iframe>
                        </div>
                        <!--./vid -->
                    </div>

                    <div class="col-md-1">
                        <asp:LinkButton ID="btn_5" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_5%>
                        </asp:LinkButton>
                    </div>

                    <div class="col-md-3">
                        <span class="badge badge-primary"><%#contributer_5 %></span>
                    </div>
                </div>
                <hr />
            </div>
            <!-- /.row -->



            <!-- Up Next Five -->
            <div id="r6" visible="false" runat="server">
                <div class="row">
                    <div class="col-md-1">
                        <h1>&#9316;</h1>
                    </div>

                    <div class="col-md-6">
                        <div class="vid">
                            <iframe src='<%#link_6 %>'></iframe>
                        </div>
                        <!--./vid -->
                    </div>

                    <div class="col-md-1">
                        <asp:LinkButton ID="btn_6" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_6%>
                        </asp:LinkButton>
                    </div>

                    <div class="col-md-3">
                        <span class="badge badge-primary"><%#contributer_6 %></span>
                    </div>
                </div>
                <hr />
            </div>
            <!-- /.row -->


            <br />
            <br />


            <!-- Looper -->

            <% for (int i = 0; i < link.Count; i++)
               {
                   string index = "link_" + i;
                   
            %>

            <%--<div class="row">
                <div class="col-md-1">
                    <h1>&#9316;</h1>
                </div>

                <div class="col-md-6">
                    <div class="vid">
                        <iframe src='<%# link[] %>'></iframe>
                    </div>
                    <!--./vid -->
                </div>

                <div class="col-md-1">
                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnUpvote_Click">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> <%#upvotes_6%>
                    </asp:LinkButton>
                </div>

                <div class="col-md-3">
                    <span class="badge badge-primary"><%#contributer_6 %></span>
                </div>
            </div>--%>

            <%--<li style="height: 90px; margin: 0 8px 0 0; margin-bottom: 15px;">
                    <a href='javascript:refreshIframe("bbgoT7jq3x0")' id="episode1" style="width: 200px;" onclick="refreshIframe();">
                        <span style="float: left;">
                            <img width="120" alt="" src="default.jpg" />
                        </span>
                        <span style="height: 90px; margin-left: 2px;">KAPIL playing as Rajkumar and Sumona as Rajkumari in Comedy Circus 2013 Video in HD</span></a>
                </li>--%>
            <%}%>
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
