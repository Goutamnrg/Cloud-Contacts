<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Cloud_Contacts.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Stay Touch with US</h3>
    <address>
        Toronto<br />
        Ontario, CANADA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">CloudSupport@IBT.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">CloudMarketing@IBT.com</a>
    </address>
</asp:Content>
