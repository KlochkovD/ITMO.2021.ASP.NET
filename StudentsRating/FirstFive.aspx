<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstFive.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentsRating.Start" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">

    <div>
        
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="№ зачетной книжки" HeaderText="№ зачетной книжки" SortExpression="№ зачетной книжки" />
                <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" />
                <asp:BoundField DataField="Балл" HeaderText="Балл" SortExpression="Балл" />
                <asp:BoundField DataField="Дата занятия" HeaderText="Дата занятия" SortExpression="Дата занятия" />
                <asp:BoundField DataField="Описание занятия" HeaderText="Описание занятия" SortExpression="Описание занятия" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBSFinal %>" SelectCommand="SELECT TOP (5) WITH TIES [UniqId] as '№ зачетной книжки', [Name] as 'ФИО', [Rating] as 'Балл', [LessonDate] as 'Дата занятия', [LessonDescription] as 'Описание занятия' FROM [Students] WHERE ([Rating] IS NOT NULL) ORDER BY [Rating] DESC"></asp:SqlDataSource>
        
    </div>
</asp:Content>
