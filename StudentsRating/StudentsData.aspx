<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsData.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentsRating.StudentsData" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">
    <div>
            <h1>Ввод данных о студентах</h1>
        </div>
            <div>
            <label>Введите ФИО студента:</label><asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Заполните поле" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
            </div>
            
            <div>
            <label>Введите № зачетной книжки:</label><asp:TextBox ID="uniqid" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1"  type="Double" runat="server" ErrorMessage="целые числа" ControlToValidate="uniqid" Operator="NotEqual"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uniqid" ErrorMessage="Заполните поле" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
           </div>
            <div>
            <label>Введите балл:</label><asp:TextBox ID="rating" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="rating" ErrorMessage="Только целые числа" Operator="NotEqual" Type="Double"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rating" ErrorMessage="Заполните поле" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
           </div>
             <div>
            <label>Введите дату занятия:</label><asp:TextBox ID="lessondate" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lessondate" ErrorMessage="Заполните поле" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
           </div>
            <div>
            <label>Введите описание занятия:</label><asp:TextBox ID="lessondescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lessondescription" ErrorMessage="Заполните поле" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
           </div>
       
            <div>
            <button type="submit">Внести данные</button>
            </div>
</asp:Content>
        
    