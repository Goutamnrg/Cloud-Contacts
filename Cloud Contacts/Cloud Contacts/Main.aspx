<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Cloud_Contacts.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container text-center">
        <h2>Login Page</h2>
    </div>
    <div class="container text-center">
        <h3>Welcome to Cloud Contacts </h3>
    </div>

    <div class="container text-center">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="200px" ImageUrl="~/Logo/cloud note logo.png" />
    </div>

    <div class="container text-center">
        <h4>Please enter your User Name and Password</h4>
    </div>

    <div class="row">
        <div class="col-sm-6 text-right"><h5>UserName</h5></div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 text-right"><h5>Password</h5></div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </div>
    </div>

    <div class="container text-center">
        <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
    </div>


    <div class="container text-center">
        <asp:Button ID="btnLogin" CssClass="btn btn-info" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>

</asp:Content>
