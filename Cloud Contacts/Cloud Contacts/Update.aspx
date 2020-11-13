<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Cloud_Contacts.Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Update an Email Address</h2>
    <p>Here enter the Email Address to Update</p>


    <div class="row">
        <div class="col-sm-2 align-left">
            Old Email Address
        </div>
        <div class="col-sm-10">

            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Enter a Valid Email Address ?" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        </div>



    </div>
    <div class="row">
        <div class="col-sm-2 align-left">
            New Email Address
        </div>
        <div class="col-sm-10">

            <asp:TextBox ID="txtNewEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="Enter a Valid Email Address ?" ControlToValidate="txtNewEmail"></asp:RequiredFieldValidator>
        </div>
    </div>

    <asp:Label ID="lblErrorMessage" runat="server" Text=" "></asp:Label>

    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-10">
            <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        </div>
    </div>
</asp:Content>
