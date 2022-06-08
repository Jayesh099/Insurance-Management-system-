<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile_page.aspx.cs" Inherits="Insurance_management_System.Profile_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="Admin_assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="Admin_assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="Admin_assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        body {
            color: #797979;
            background: #f1f2f7;
            font-family: 'Open Sans', sans-serif;
            padding: 0px !important;
            margin: 0px !important;
            font-size: 13px;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
            -moz-font-smoothing: antialiased;
        }

        .profile-nav, .profile-info {
            margin-top: 30px;
        }

            .profile-nav .user-heading {
                background: #fbc02d;
                color: #fff;
                border-radius: 4px 4px 0 0;
                -webkit-border-radius: 4px 4px 0 0;
                padding: 30px;
                text-align: center;
            }

                .profile-nav .user-heading.round a {
                    border-radius: 50%;
                    -webkit-border-radius: 50%;
                    border: 10px solid rgba(255,255,255,0.3);
                    display: inline-block;
                }

                .profile-nav .user-heading a img {
                    width: 112px;
                    height: 112px;
                    border-radius: 50%;
                    -webkit-border-radius: 50%;
                }

                .profile-nav .user-heading h1 {
                    font-size: 22px;
                    font-weight: 300;
                    margin-bottom: 5px;
                }

                .profile-nav .user-heading p {
                    font-size: 12px;
                }

            .profile-nav ul {
                margin-top: 1px;
            }

                .profile-nav ul > li {
                    border-bottom: 1px solid #ebeae6;
                    margin-top: 0;
                    line-height: 30px;
                }

                    .profile-nav ul > li:last-child {
                        border-bottom: none;
                    }

                    .profile-nav ul > li > a {
                        border-radius: 0;
                        -webkit-border-radius: 0;
                        color: #89817f;
                        border-left: 5px solid #fff;
                    }

                        .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active a {
                            background: #f8f7f5 !important;
                            border-left: 5px solid #fbc02d;
                            color: #89817f !important;
                        }

                    .profile-nav ul > li:last-child > a:last-child {
                        border-radius: 0 0 4px 4px;
                        -webkit-border-radius: 0 0 4px 4px;
                    }

                    .profile-nav ul > li > a > i {
                        font-size: 16px;
                        padding-right: 10px;
                        color: #bcb3aa;
                    }

        .r-activity {
            margin: 6px 0 0;
            font-size: 12px;
        }


        .p-text-area, .p-text-area:focus {
            border: none;
            font-weight: 300;
            box-shadow: none;
            color: #c3c3c3;
            font-size: 16px;
        }

        .profile-info .panel-footer {
            background-color: #f8f7f5;
            border-top: 1px solid #e7ebee;
        }

            .profile-info .panel-footer ul li a {
                color: #7a7a7a;
            }

        .bio-graph-heading {
            background: #fbc02d;
            color: #fff;
            text-align: center;
            font-style: italic;
            padding: 40px 110px;
            border-radius: 4px 4px 0 0;
            -webkit-border-radius: 4px 4px 0 0;
            font-size: 16px;
            font-weight: 300;
        }

        .bio-graph-info {
            color: #89817e;
        }

            .bio-graph-info h1 {
                font-size: 22px;
                font-weight: 300;
                margin: 0 0 20px;
            }

        .bio-row {
            width: 50%;
            float: left;
            margin-bottom: 10px;
            padding: 0 15px;
        }

            .bio-row p span {
                width: 100px;
                display: inline-block;
            }

        .bio-chart, .bio-desk {
            float: left;
        }

        .bio-chart {
            width: 40%;
        }

        .bio-desk {
            width: 60%;
        }

            .bio-desk h4 {
                font-size: 15px;
                font-weight: 400;
            }

                .bio-desk h4.terques {
                    color: #4CC5CD;
                }

                .bio-desk h4.red {
                    color: #e26b7f;
                }

                .bio-desk h4.green {
                    color: #97be4b;
                }

                .bio-desk h4.purple {
                    color: #caa3da;
                }

        .file-pos {
            margin: 6px 0 10px 0;
        }

        .profile-activity h5 {
            font-weight: 300;
            margin-top: 0;
            color: #c3c3c3;
        }

        .summary-head {
            background: #ee7272;
            color: #fff;
            text-align: center;
            border-bottom: 1px solid #ee7272;
        }

            .summary-head h4 {
                font-weight: 300;
                text-transform: uppercase;
                margin-bottom: 5px;
            }

            .summary-head p {
                color: rgba(255,255,255,0.6);
            }

        ul.summary-list {
            display: inline-block;
            padding-left: 0;
            width: 100%;
            margin-bottom: 0;
        }

            ul.summary-list > li {
                display: inline-block;
                width: 19.5%;
                text-align: center;
            }

                ul.summary-list > li > a > i {
                    display: block;
                    font-size: 18px;
                    padding-bottom: 5px;
                }

                ul.summary-list > li > a {
                    padding: 10px 0;
                    display: inline-block;
                    color: #818181;
                }

            ul.summary-list > li {
                border-right: 1px solid #eaeaea;
            }

                ul.summary-list > li:last-child {
                    border-right: none;
                }

        .activity {
            width: 100%;
            float: left;
            margin-bottom: 10px;
        }

            .activity.alt {
                width: 100%;
                float: right;
                margin-bottom: 10px;
            }

            .activity span {
                float: left;
            }

            .activity.alt span {
                float: right;
            }

            .activity span, .activity.alt span {
                width: 45px;
                height: 45px;
                line-height: 45px;
                border-radius: 50%;
                -webkit-border-radius: 50%;
                background: #eee;
                text-align: center;
                color: #fff;
                font-size: 16px;
            }

            .activity.terques span {
                background: #8dd7d6;
            }

            .activity.terques h4 {
                color: #8dd7d6;
            }

            .activity.purple span {
                background: #b984dc;
            }

            .activity.purple h4 {
                color: #b984dc;
            }

            .activity.blue span {
                background: #90b4e6;
            }

            .activity.blue h4 {
                color: #90b4e6;
            }

            .activity.green span {
                background: #aec785;
            }

            .activity.green h4 {
                color: #aec785;
            }

            .activity h4 {
                margin-top: 0;
                font-size: 16px;
            }

            .activity p {
                margin-bottom: 0;
                font-size: 13px;
            }

            .activity .activity-desk i, .activity.alt .activity-desk i {
                float: left;
                font-size: 18px;
                margin-right: 10px;
                color: #bebebe;
            }

            .activity .activity-desk {
                margin-left: 70px;
                position: relative;
            }

            .activity.alt .activity-desk {
                margin-right: 70px;
                position: relative;
            }

                .activity.alt .activity-desk .panel {
                    float: right;
                    position: relative;
                }

        .activity-desk .panel {
            background: #F4F4F4;
            display: inline-block;
        }


        .activity .activity-desk .arrow {
            border-right: 8px solid #F4F4F4 !important;
        }

        .activity .activity-desk .arrow {
            border-bottom: 8px solid transparent;
            border-top: 8px solid transparent;
            display: block;
            height: 0;
            left: -7px;
            position: absolute;
            top: 13px;
            width: 0;
        }

        .activity-desk .arrow-alt {
            border-left: 8px solid #F4F4F4 !important;
        }

        .activity-desk .arrow-alt {
            border-bottom: 8px solid transparent;
            border-top: 8px solid transparent;
            display: block;
            height: 0;
            right: -7px;
            position: absolute;
            top: 13px;
            width: 0;
        }

        .activity-desk .album {
            display: inline-block;
            margin-top: 10px;
        }

            .activity-desk .album a {
                margin-right: 10px;
            }

                .activity-desk .album a:last-child {
                    margin-right: 0px;
                }
               
    </style>
    <style>
        body {
 /* background-image: url("dummy/back.jpg");*/
  background-repeat: no-repeat, repeat;
  background-color: #cccccc;
   background-size: cover;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <a href="index.aspx" style="text-decoration: none; font-size: 20px; margin-left: 50px;">Back to Home</a>

        <div class="container bootstrap snippets bootdey">
            <div class="row">
                <div class="profile-nav col-md-3">
                <%--    <div class="panel">
                        <div class="user-heading round">
                            <a href="#">
                                <img src="<%= Session["profile"] %>" alt="">
                            </a>
                            <h1 style="margin-top: 20px;">Profile</h1>
                            <p style="margin-top: 10px; font-size: 20px;"><%= Session["email"] %></p>
                        </div>

                        <ul class="nav nav-pills nav-stacked" style="font-size: 20px; padding: 20px; text-align: center;">
                            <li><a href="#" style="text-decoration: none"><i class="fa fa-edit"></i>Edit profile</a></li>
                        </ul>
                    </div>--%>
                </div>
                <div class="profile-info col-md-9">
                    <div class="panel">
                    </div>
                    <div class="panel">
                        <div class="bio-graph-heading" style="font-size: 30px;">
                            See Your Profile .
                        </div>
                        <div class="panel-body bio-graph-info" style="margin-top: 50px;">
                            <h1>Details About Yours</h1>
                            <asp:Repeater ID="rep1" runat="server">
                                <ItemTemplate>
                                    <div class="row" style="margin-top: 40px;">
                                        <div class="bio-row">
                                            <p><span><strong><b >Name</b></strong> </span >:<strong><b > <%# Eval("Name") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Email </b></strong> </span>:<strong><b >  <%# Eval("email") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Contact</b></strong> </span>:<strong><b >  <%# Eval("Contact") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Father Name </b></strong>  </span>:<strong><b >  <%# Eval("Fathername") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Mother Name</b></strong></span>:<strong><b >  <%# Eval("Mothername") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >AdharNumber </b></strong></span>:<strong><b >  <%# Eval("AdharNumber") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Existing Illness </b></strong></span>:<strong><b >  <%# Eval("ExistingIllness") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Age </b></strong></span>:<strong><b >  <%# Eval("Age") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Gender </b></strong></span>:<strong><b >  <%# Eval("Gender") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Dob </b></strong></span>:<strong><b >  <%# Eval("Dob") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Address</b></strong> </span>:<strong><b >  <%# Eval("Address") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Occuption</b></strong> </span>:<strong><b >  <%# Eval("occuption") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Qualification</b></strong></span>:<strong><b >  <%# Eval("Qualification") %></b></strong></p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><strong><b >Qualification</b></strong></span>:<strong><b >  <%# Eval("Annualincome") %></b></strong></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div>
                            <h3 style="margin-left: 470px; margin-top: 30px;">----- Your selected Policy   -----</h3>
                            <a href="Report.aspx" class="btn btn-danger" style="width: 300px; margin-left: 580px; ">Show your Report</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>