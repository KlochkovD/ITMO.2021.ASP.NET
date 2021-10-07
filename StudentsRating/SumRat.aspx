<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SumRat.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentsRating.SumRat" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
      <p>Для подсчета суммы балов введите № зачетной книжки</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Сумма балов" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            
            <Columns>
                <asp:BoundField DataField="Cумма балов" HeaderText="Cумма балов" ReadOnly="True" SortExpression="Cумма балов" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBSFinal %>" SelectCommand="SELECT SUM(Rating) as 'Cумма балов' FROM [Students] WHERE ([UniqId] = @m)">
            <SelectParameters>
                <asp:Parameter DefaultValue="999" Name="m" />
            </SelectParameters>
        </asp:SqlDataSource>
      
    </div>
</asp:Content>
