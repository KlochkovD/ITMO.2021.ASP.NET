<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="ASP.NET.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Список участников<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ASP.NET.SampleContext" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting" Select="new (Name, Phone, Email, WillAttend, Rdate, Reports)" TableName="GuestResponses">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:CheckBoxField DataField="WillAttend" HeaderText="WillAttend" ReadOnly="True" SortExpression="WillAttend" />
                <asp:BoundField DataField="Rdate" HeaderText="Rdate" ReadOnly="True" SortExpression="Rdate" />
            </Columns>
        </asp:GridView>
</h2>
</asp:Content>
