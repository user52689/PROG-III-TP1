﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP_3._1._0.WebForm1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .text-position {
            margin-left: 25%;
            font-weight: bold; 
        }
        .auto-style1 {
            width: 100%;
            font-size: larger;
        }
        .auto-style3 {
            width: 290px;
        }
        .auto-style5 {
            width: 290px;
            height: 37px;
        }
        .auto-style6 {
            height: 37px;
        }
        .auto-style8 {
            width: 290px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            width: 304px;
            height: 29px;
        }
        .auto-style11 {
            width: 304px;
        }
        .auto-style12 {
            width: 304px;
            height: 37px;
        }
        .auto-style13 {
            width: 304px;
            height: 34px;
        }
        .auto-style14 {
            width: 290px;
            height: 34px;
        }
        .auto-style15 {
            height: 34px;
        }
        .auto-style16 {
            width: 304px;
            height: 24px;
        }
        .auto-style17 {
            width: 290px;
            height: 24px;
        }
        .auto-style18 {
            height: 24px;
        }
        .auto-style19 {
            width: 304px;
            height: 30px;
        }
        .auto-style20 {
            width: 290px;
            height: 30px;
        }
        .auto-style21 {
            height: 30px;
        }
        .auto-style22 {
            width: 304px;
            height: 44px;
        }
        .auto-style23 {
            width: 290px;
            height: 44px;
        }
        .auto-style24 {
            height: 44px;
        }
        .auto-style25 {
            width: 304px;
            height: 26px;
        }
        .auto-style26 {
            width: 290px;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <strong>Localidades</strong>
        </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style22">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNombreLocalidad" runat="server" Text="Nombre de Localidad:"></asp:Label>
                </td>
                <td class="auto-style23">
        <asp:TextBox ID="txtLocalidadIngresada" runat="server" Width="198px" ValidationGroup="grupo1"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLocalidadIngresada" ID="rfvLocalidades" Text="Ingrese Localidad" EnableClientScript="False" Display="Dynamic" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvLocalidadesDuplicadas" runat="server" ControlToValidate="txtLocalidadIngresada" EnableClientScript="False" OnServerValidate="cvLocalidadesDuplicadas_ServerValidate" ValidationGroup="grupo1">Localidad existente!</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" OnClick="btnGuardarLocalidad_Click" ValidationGroup="grupo1" />
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblUsuarios" runat="server" Font-Bold="True" Font-Size="15pt" Text="Usuarios"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNombreUsuario" runat="server" Width="194px" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ClientIDMode="Static" ControlToValidate="txtNombreUsuario" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ValidationGroup="grupo2">Ingrese un usuario</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Constraseña:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtBoxContraseña1" runat="server" Width="194px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblContraseñaUno" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Repetir Contraseña:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtBoxContraseña2" runat="server" Width="194px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblCotraseña" runat="server" ClientIDMode="Static"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Correo electrónico:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtBoxCorreo" runat="server" Width="194px" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CP:&nbsp;</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtCP" runat="server" Width="194px" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RangeValidator ID="RvCP" runat="server" ClientIDMode="Static" ControlToValidate="txtCP" EnableClientScript="False" ErrorMessage="RangeValidator" MaximumValue="9999" MinimumValue="1000" Type="Integer" ValidateRequestMode="Disabled" ValidationGroup="grupo2">Número Invalido</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblLocalidades" runat="server" Text="Localidades:"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlLocalidades" runat="server" Width="201px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3"> <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" Width="129px" OnClick="btnGuardarUsuario_Click" ValidationGroup="grupo2" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>