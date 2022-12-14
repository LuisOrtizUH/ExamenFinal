<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Vehiculos.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Vamos a generar un reporte</p>
<p>
    Digite el numero de placa el cual desea generar un reporte</p>
<p class="auto-style1">
    <asp:TextBox ID="TReporte" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p class="auto-style1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="GReporte" runat="server" OnClick="GReporte_Click" Text="Generar Reporte" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="auto-style1">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</p>
</asp:Content>
