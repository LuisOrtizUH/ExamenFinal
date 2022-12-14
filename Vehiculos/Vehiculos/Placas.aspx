<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Placas.aspx.cs" Inherits="Vehiculos.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: left;
    }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Bienvenido a Placas</p>
    <p class="auto-style2">
        <asp:Image ID="Image1" runat="server" Height="207px" ImageUrl="~/Imagenes/PLACAS.jpg" Width="346px" />
    </p>
    <p>
        &nbsp;</p>
<p class="auto-style1">
    Digite su Numero de Placa (6 espacios) :<asp:TextBox ID="TNum" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p>
    Digite su usuario:
    <asp:TextBox ID="TUsuario" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p>
    Digite el precio:
    <asp:TextBox ID="TPrecio" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button3" runat="server" Text="Eliminar" OnClick="Button3_Click" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button4" runat="server" Text="Consultar" OnClick="Button4_Click" BackColor="Black" BorderColor="Black" ForeColor="White" />
<br />
<asp:Label ID="Label1" runat="server"></asp:Label>
<br />
<br />
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
&nbsp;<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
</asp:Content>
