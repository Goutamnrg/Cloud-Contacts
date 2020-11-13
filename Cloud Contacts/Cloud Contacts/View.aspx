<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Cloud_Contacts.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View All Contacts</h2>
    <p>Here you can see all the Contacts from the your Database</p>

    <asp:GridView ID="gvContacts" runat="server"></asp:GridView>
   
</asp:Content>
