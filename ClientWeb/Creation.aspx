<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Creation.aspx.cs" Inherits="ClientWeb.Creation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<div style="margin-top : 5em">
    <table>
            <tr>
                <td>Nom :</td>
                <td><asp:TextBox ID="tb_Nom" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Prix :</td>
                <td><asp:TextBox ID="tb_Prix" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Ville :</td>
                <td><asp:TextBox ID="tb_Ville" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Code Postal : </td>
                <td><asp:TextBox ID="tb_Cp" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Adresse :</td>
                <td><asp:TextBox ID="tb_Adresse" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Charges : </td>
                <td><asp:TextBox ID="tb_Charges" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nombre d'Etages : </td>
                <td><asp:TextBox ID="tb_nbEtages" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nombre de pièces : </td>
                <td><asp:TextBox ID="tb_nbPieces" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Numéro étage : </td>
                <td><asp:TextBox ID="tb_numEtage" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Surface : </td>
                <td><asp:TextBox ID="tb_Surface" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Transaction : </td>
                <td><asp:DropDownList ID="dl_TypeTrans" runat="server"  Width="100%"  >
                        <asp:ListItem Value="1">Location</asp:ListItem>
                        <asp:ListItem Value="0">Vente</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Type de bien : </td>
                <td><asp:DropDownList ID="dl_TypeBien" runat="server"  Width="100%">
                    <asp:ListItem Value="0">Appartement</asp:ListItem>
                    <asp:ListItem Value="1">Maison</asp:ListItem>
                    <asp:ListItem Value="2">Garage</asp:ListItem>
                    <asp:ListItem Value="3">Terrain</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Energie : </td>
                <td><asp:DropDownList ID="dl_Energie" runat="server" Width="100%">
                        <asp:ListItem Value="0">Aucune</asp:ListItem>
                        <asp:ListItem Value="1">Fioul</asp:ListItem>
                        <asp:ListItem Value="2">Gaz</asp:ListItem>
                        <asp:ListItem Value="3">Electrique</asp:ListItem>
                        <asp:ListItem Value="4">Bois</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Chauffage : </td>
                <td><asp:DropDownList ID="dl_Chauffage" runat="server" Width="100%">
                        <asp:ListItem Value="0">Aucun</asp:ListItem>
                        <asp:ListItem Value="1">Individuel</asp:ListItem>
                        <asp:ListItem Value="2">Collectif</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
        <table>
            <tr>
                <td>Photo</td>
                <td><asp:FileUpload ID="Fileup" runat="server" Width="100%"></asp:FileUpload></td>
            </tr>
        </table>

        <div style="width : 50%">
            <h3>Description</h3>
            <p>
                <asp:TextBox ID="tb_Desc" runat="server" Width ="100%" Height="300px "></asp:TextBox>
            </p>
        </div>
        
        <asp:Button ID="bt_Valider" runat="server" Text="Valider" OnClick="valider_onClick" />

</div>
</center>
</asp:Content>
