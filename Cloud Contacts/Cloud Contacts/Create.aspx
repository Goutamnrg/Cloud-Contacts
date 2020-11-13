<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Cloud_Contacts.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container align-left">
         <h2>Create a new contact</h2>
        <p>Please Enter Full Name, Phone number and Email Address</p>
    </div>
   
    <div class="container">
        <div class="row">
            <div class="col-sm-2 align-left">
               <h5>Full Name</h5>
            </div>
            <div class="col-sm-10">

                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter your Full Name ?" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </div>
        </div>

         <div class="row">
            <div class="col-sm-2 align-left">
               Phone Number
             
            </div>
            <div class="col-sm-10">

                <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ErrorMessage="Enter a valid Phone Number ?" ControlToValidate="txtNumber" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </div>

        </div>


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
        <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>

        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-10">
            <asp:Button ID="btnCreate" CssClass="btn btn-info" runat="server" Text="Create" OnClick="btnCreate_Click" />
        </div>
    </div>
    </div>
</asp:Content>
