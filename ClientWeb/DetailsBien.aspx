<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="DetailsBien.aspx.cs" Inherits="ClientWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<html xmlns="http://www.w3.org/1999/xhtml"> 
    <h2 id="test"><asp:Label ID="lb_Nom" runat="server" Text="Label"></asp:Label></h2>
        <p>&nbsp;&nbsp;</p>

    <div style =" float : left; width : 40% ">
        <asp:Image ID="Image1" runat="server" />
    </div>  
    <div style ="float:right; width:40%">

        <table>

            <tr>
                <td>Prix :</td>
                <td><asp:Label ID="lb_Prix" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Date :</td>
                <td><asp:Label ID="lb_Date" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Ville :</td>
                <td><asp:Label ID="lb_Ville" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Code Postal : </td>
                <td><asp:Label ID="lb_Cp" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Adresse :</td>
                <td><asp:Label ID="lb_Adresse" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Type de bien : </td>
                <td><asp:Label ID="lb_TypeBien" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Energie : </td>
                <td><asp:Label ID="lb_Energie" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Chauffage : </td>
                <td><asp:Label ID="lb_Chauffage" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Charges : </td>
                <td><asp:Label ID="lb_Charges" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Nombre d'Etages : </td>
                <td><asp:Label ID="lb_nbEtages" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Nombre de pièces : </td>
                <td><asp:Label ID="lb_nbPieces" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Numéro étage : </td>
                <td><asp:Label ID="lb_numEtage" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Surface : </td>
                <td>
        <asp:Label ID="lb_Surface" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Transaction : </td>
                <td>
        <asp:Label ID="lb_TypeTrans" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>

        </div>

        <div style="float : left">
            <h3>Description</h3>
            <p>
                <asp:Label ID="lb_Desc" runat="server" Text="Label"></asp:Label>
            </p>
        </div>
</html>




</asp:Content>

