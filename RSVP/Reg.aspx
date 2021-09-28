<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" MasterPageFile="~/Site.Master" Inherits="ASP.NET.Reg"  UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server">

 <div>
 <h1>Приглашаем на семинар</h1>
 <p></p> 
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
 </div>
Добавьте серверные элементы, предназначенные для сбора информации от 
пользователей и кнопку для ее отправки:
 <div>
 <label>Ваше имя:</label><asp:TextBox ID="name"
runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Заполните поле имени" ForeColor="Red" Display="None">Не оставляйте поле пустым</asp:RequiredFieldValidator>
 </div>
 <div>
 <label>Ваш email:</label><asp:TextBox ID="email"
runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" Display="None" ErrorMessage="Заполните поле email" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Адрес введен неверно!!!" ForeColor="Red" ControlToValidate="email"></asp:RegularExpressionValidator>
 </div>
 <div>
 <label>Ваш телефон:</label><asp:TextBox ID="phone"
runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderStyle="None" ControlToValidate="phone" ErrorMessage="Заполните поле телефон" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
 </div>
 <div>
 <label>Вы будете делать доклад?</label>
 <asp:CheckBox ID="CheckBoxYN" runat="server" />
 </div>
 <div>
 <button type="submit">Отправить ответ на приглашение
RSVP</button>
 </div>
</asp:Content>
