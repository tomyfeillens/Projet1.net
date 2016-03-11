<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="ClientWeb.Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /></br></br></br></br>
    <center>
        <a href="Creation.aspx">Creation d'un nouveau bien</a>
        </br></br></br></br></br>
        <center>
    <div>
        <center><h2>Recherche  </h2></center>
        <br />
        <table>
            <tr>
                <td><asp:TextBox ID="tbRechAv" runat="server" Width="200%" Height="1.5em"></asp:TextBox></td>
            </tr 
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Lieux :"></asp:Label></td>
                <td><asp:TextBox ID="tbCpAv" runat="server" placeholder="Code Postal" ></asp:TextBox></td>
                <td><asp:TextBox ID="tbVilleAv" runat="server" placeholder="Ville"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="Bien :"></asp:Label></td>
                <td><asp:DropDownList ID="dlTypeTransAv" runat="server"  Width="100%">
                        <asp:ListItem Value="null">Location/Vente</asp:ListItem>
                        <asp:ListItem Value="1">Location</asp:ListItem>
                        <asp:ListItem Value="0">Vente</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="dlTypeBienAv" runat="server"  Width="100%">
                        <asp:ListItem Value="null">Type de Bien</asp:ListItem>
                        <asp:ListItem Value="0">Appartement</asp:ListItem>
                        <asp:ListItem Value="1">Maison</asp:ListItem>
                        <asp:ListItem Value="2">Garage</asp:ListItem>
                        <asp:ListItem Value="3">Terrain</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label9" runat="server" Text="Energie/Chauffage"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="dlTypeChauffAv" runat="server" Width="100%">
                        <asp:ListItem Value="null">Chauffage</asp:ListItem>
                        <asp:ListItem Value="0">Aucun</asp:ListItem>
                        <asp:ListItem Value="1">Individuel</asp:ListItem>
                        <asp:ListItem Value="2">Collectif</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="dlTypeEnerAv" runat="server" Width="100%">
                        <asp:ListItem Value="null">Energie</asp:ListItem>
                        <asp:ListItem Value="0">Aucune</asp:ListItem>
                        <asp:ListItem Value="1">Fioul</asp:ListItem>
                        <asp:ListItem Value="2">Gaz</asp:ListItem>
                        <asp:ListItem Value="3">Electrique</asp:ListItem>
                        <asp:ListItem Value="4">Bois</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Surface (en m²) :"></asp:Label></td>
                <td><asp:TextBox ID="tbSurfMinAv" runat="server"  placeholder="minimum"  ></asp:TextBox></td>
                <td><asp:TextBox ID="tbSurfMaxAv" runat="server" placeholder="maximum"  ></asp:TextBox></td>
            </tr>

            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Nombre d'étages :"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="dlNbEtagesMin" runat="server" Width="100%">
                        <asp:ListItem Value="-1">Minimum</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="dlNbEtagesMax" runat="server" Width="100%">
                        <asp:ListItem Value="-1">Maximum</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem Value="max">20 et +</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Numéro étage :"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="dlNumEtageMin" runat="server" Width="100%">
                        <asp:ListItem Value="-1">Minimum</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="dlNumEtageMax" runat="server" Width="100%">
                        <asp:ListItem Value="null">Maximum</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem Value="max">20 et +</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Nombre de pièces : "></asp:Label></td>
                <td>
                    <asp:DropDownList ID="dlNbPiecesMinAv" runat="server" Width="100%">
                        <asp:ListItem Value="-1">Minimum</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>    
                    </asp:DropDownList></td>
                <td>
                    <asp:DropDownList ID="dlNbPiecesMaxAv" runat="server" Width="100%">
                        <asp:ListItem Value="-1">Maximum</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem Value="max">20 et +</asp:ListItem>
            </asp:DropDownList>
                </td>
            </tr>
        </table>
            <asp:Button ID="Button" runat="server" Text="Rechercher" OnClick="onCLick"></asp:Button>
        </center>

        </br></br></br>
    <asp:GridView ID="gvResultats" runat="server" AutoGenerateColumns =" false">
        <Columns>
            <asp:hyperlinkfield datatextfield="Titre"
                                datanavigateurlfields="Id"
                                datanavigateurlformatstring="~\DetailsBien.aspx?ID={0}"          
                                headertext="Titre"
                                target="_blank" />
            <asp:BoundField DataField="Prix" ReadOnly="True" 
                            SortExpression="Prix" HeaderText="Prix (€)" ItemStyle-Width ="100px"/>
            <asp:BoundField DataField="TypeBien" ReadOnly="True" 
                            SortExpression="TypeBien" HeaderText="Type de bien" />
            <asp:BoundField DataField="TypeTransaction" ReadOnly="True" 
                            SortExpression="TypeTransaction" HeaderText="Type de transaction" />
            <asp:BoundField DataField="Ville" ReadOnly="True" 
                            SortExpression="Ville" HeaderText="Ville" ItemStyle-Width ="100px"/>
            <asp:TemplateField>
                <HeaderTemplate>Photo</HeaderTemplate>
                <ItemTemplate>
                   <img src="<%# "data:image/png;base64," + Eval("PhotoPrincipaleBase64")%>" width="200" height="150">
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Modifier</HeaderTemplate>
                <ItemTemplate>
                   <a href="./Modifier.aspx?id=<%# Eval("Id") %>"><img src="./Images/modifier.png" ></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Supprimer</HeaderTemplate>
                <ItemTemplate>
                   <a href="./Supprimer_v.aspx?id=<%# Eval("Id") %>"><img src="./Images/supprimer.png" ></a>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>
    </center>
</asp:Content>
