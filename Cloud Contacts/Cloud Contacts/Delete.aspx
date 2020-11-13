<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Cloud_Contacts.Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete an Email ID</h2>
    <p>Please Enter a Email Address to Delete from Database</p>


    <div class="row">
        <div class="col-sm-2 align-left">
            Email Address
        </div>
        <div class="col-sm-10">

            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="Enter a Valid Email Address ?" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

        </div>
    </div>

     <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-10">
           
            <asp:Button ID="btnDelete" CssClass="btn btn-info" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        </div>
    </div>

</asp:Content>
