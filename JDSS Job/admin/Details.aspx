<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="mskiForm.admin.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td:nth-child(1){
            padding-top:1%;
            padding-bottom:1%;
            text-align:center;
            color:#da542e;
            font-weight:bold;
            font-size:18pt !important;
        }
        td:nth-child(2){
            padding-top:1%;
            padding-bottom:1%;
            text-align:left;
            color:darkred;
            font-weight:bold;
            font-size:18pt !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h2 class="page-title pl-5">Full Details</h2>
                    <div class="ml-auto text-right">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Details</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid" style="overflow-x:auto;">
            <div class="row overflowgrid" style="overflow-x:auto;">
                <div class="card ml-5 pl-5" style="overflow-x:auto; width:70%;">
                    
                    <table class="w-100">
                        <tr>
                            <td>Applicant ID</td>
                            <td><asp:Label ID="lblid" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Name</td>
                            <td><asp:Label ID="lblname" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Phone</td>
                            <td><asp:Label ID="lblphone" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Email</td>
                            <td><asp:Label ID="lblemail" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant D.O.B</td>
                            <td><asp:Label ID="lbldob" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Address</td>
                            <td><asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant 10th</td>
                            <td><asp:Label ID="lbl10" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant 12th</td>
                            <td><asp:Label ID="lbl12" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Graduation</td>
                            <td><asp:Label ID="lblgrad" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Position</td>
                            <td><asp:Label ID="lblposition" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Type</td>
                            <td><asp:Label ID="lbltype" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Experience</td>
                            <td><asp:Label ID="lblexperience" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Eligible</td>
                            <td><asp:Label ID="lbleligible" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Applicant Account</td>
                            <td><asp:Label ID="lblaccount" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
