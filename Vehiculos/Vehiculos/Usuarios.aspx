<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Vehiculos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Bienvenido a la parte de Usuarios</p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="239px" ImageUrl="~/Imagenes/USUARIOS.jpg" Width="460px" />
    </p>
<p class="auto-style1">
    Digite su nombre:
    <asp:TextBox ID="TNomUsu" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p class="auto-style1">
    Digite su apellido:
    <asp:TextBox ID="TAUsuarios" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p class="auto-style1">
    Digite su correo:
    <asp:TextBox ID="TCCorreo" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p class="auto-style1">
    Digite su contraseña:
    <asp:TextBox ID="TCOUsuarios" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White"></asp:TextBox>
</p>
<p class="auto-style1">
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
<p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Eliminar" BackColor="Black" BorderColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Consultar" BackColor="Black" BorderColor="Black" ForeColor="White" />
</p>
<p class="auto-style1">
    &nbsp;</p>
<p class="auto-style1">
    
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    
</p>
<p class="auto-style1">
    &nbsp;</p>
</asp:Content>
