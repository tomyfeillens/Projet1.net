<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Modifier.aspx.cs" Inherits="ClientWeb.Modifier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html xmlns="http://www.w3.org/1999/xhtml"> 
    <h2 id="test"><asp:Label ID="lb_Nom" runat="server" Text="Label"></asp:Label></h2>
    
        <p>&nbsp;&nbsp;</p>

    <div style =" width:70%" >

        <table>
            <tr>
                <td>Caractéristique</td>
                <td>Actuelle</td>
                <td>Nouvelle</td>
            </tr>
            <tr>
                <td>Nom :</td>
                <td><asp:Label ID="lb_Nom2" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_Nom" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Prix :</td>
                <td><asp:Label ID="lb_Prix" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_Prix" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Ville :</td>
                <td><asp:Label ID="lb_Ville" runat="server" Text="Label"></asp:Label></td>
                <td>
                    <asp:TextBox ID="tb_Ville" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Code Postal : </td>
                <td><asp:Label ID="lb_Cp" runat="server" Text="Label"></asp:Label></td>
                <td>
                    <asp:TextBox ID="tb_Cp" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Adresse :</td>
                <td><asp:Label ID="lb_Adresse" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_Adresse" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Charges : </td>
                <td><asp:Label ID="lb_Charges" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_Charges" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nombre d'Etages : </td>
                <td><asp:Label ID="lb_nbEtages" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_nbEtages" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nombre de pièces : </td>
                <td><asp:Label ID="lb_nbPieces" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_nbPieces" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Numéro étage : </td>
                <td><asp:Label ID="lb_numEtage" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_numEtage" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Surface : </td>
                <td><asp:Label ID="lb_Surface" runat="server" Text="Label"></asp:Label></td>
                <td><asp:TextBox ID="tb_Surface" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Transaction : </td>
                <td><asp:Label ID="lb_TypeTrans" runat="server" Text="Label"></asp:Label></td>
                <td><asp:DropDownList ID="dl_TypeTrans" runat="server"  Width="100%"  >
                        <asp:ListItem Value="null">Location/Vente</asp:ListItem>
                        <asp:ListItem Value="1">Location</asp:ListItem>
                        <asp:ListItem Value="0">Vente</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Type de bien : </td>
                <td><asp:Label ID="lb_TypeBien" runat="server" Text="Label"></asp:Label></td>
                <td><asp:DropDownList ID="dl_TypeBien" runat="server"  Width="100%">
                    <asp:ListItem Value="null">Type de Bien</asp:ListItem>
                    <asp:ListItem Value="0">Appartement</asp:ListItem>
                    <asp:ListItem Value="1">Maison</asp:ListItem>
                    <asp:ListItem Value="2">Garage</asp:ListItem>
                    <asp:ListItem Value="3">Terrain</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Energie : </td>
                <td><asp:Label ID="lb_Energie" runat="server" Text="Label"></asp:Label></td>
                <td><asp:DropDownList ID="dl_Energie" runat="server" Width="100%">
                        <asp:ListItem Value="null">Energie</asp:ListItem>
                        <asp:ListItem Value="0">Aucune</asp:ListItem>
                        <asp:ListItem Value="1">Fioul</asp:ListItem>
                        <asp:ListItem Value="2">Gaz</asp:ListItem>
                        <asp:ListItem Value="3">Electrique</asp:ListItem>
                        <asp:ListItem Value="4">Bois</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Chauffage : </td>
                <td><asp:Label ID="lb_Chauffage" runat="server" Text="Label"></asp:Label></td>
                <td><asp:DropDownList ID="dl_Chauffage" runat="server" Width="100%">
                        <asp:ListItem Value="null">Chauffage</asp:ListItem>
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

        </div>

        <div style="width : 50%">
            <h3>Description</h3>
            <p>
                <asp:Label ID="lb_Desc" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="tb_Desc" runat="server" Width ="100%" Height="300px "></asp:TextBox>
            </p>
        </div>
        <asp:Button ID="bt_Valider" runat="server" Text="Modifier" OnClick="modifier_onClick"  />
</html>




</asp:Content>
