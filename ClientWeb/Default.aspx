<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClientWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <center>
    <h2>Recherche Simple  </h2>
    </center>
    <br />

    <center>
    <asp:TextBox ID="tbRech" runat="server"></asp:TextBox>
    <asp:DropDownList ID="dlPrixMax" runat="server">
        <asp:ListItem Value="-1">Prix max</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>300</asp:ListItem>
        <asp:ListItem>500</asp:ListItem>
        <asp:ListItem>1000</asp:ListItem>
        <asp:ListItem>2000</asp:ListItem>
        <asp:ListItem>3000</asp:ListItem>
        <asp:ListItem>10000</asp:ListItem>
        <asp:ListItem>20000</asp:ListItem>
        <asp:ListItem>30000</asp:ListItem>
        <asp:ListItem>40000</asp:ListItem>
        <asp:ListItem>50000</asp:ListItem>
        <asp:ListItem>60000</asp:ListItem>
        <asp:ListItem>70000</asp:ListItem>
        <asp:ListItem>80000</asp:ListItem>
        <asp:ListItem>90000</asp:ListItem>
        <asp:ListItem>100000</asp:ListItem>
        <asp:ListItem>110000</asp:ListItem>
        <asp:ListItem>120000</asp:ListItem>
        <asp:ListItem>130000</asp:ListItem>
        <asp:ListItem>140000</asp:ListItem>
        <asp:ListItem>150000</asp:ListItem>
        <asp:ListItem>160000</asp:ListItem>
        <asp:ListItem>170000</asp:ListItem>
        <asp:ListItem>180000</asp:ListItem>
        <asp:ListItem>190000</asp:ListItem>
        <asp:ListItem>200000</asp:ListItem>
        <asp:ListItem>210000</asp:ListItem>
        <asp:ListItem>220000</asp:ListItem>
        <asp:ListItem>230000</asp:ListItem>
        <asp:ListItem>240000</asp:ListItem>
        <asp:ListItem>250000</asp:ListItem>
        <asp:ListItem>260000</asp:ListItem>
        <asp:ListItem>270000</asp:ListItem>
        <asp:ListItem>280000</asp:ListItem>
        <asp:ListItem>290000</asp:ListItem>
        <asp:ListItem>300000</asp:ListItem>
        <asp:ListItem>350000</asp:ListItem>
        <asp:ListItem>400000</asp:ListItem>
        <asp:ListItem>450000</asp:ListItem>
        <asp:ListItem>500000</asp:ListItem>       
        <asp:ListItem>550000</asp:ListItem>       
        <asp:ListItem>600000</asp:ListItem>
        <asp:ListItem>650000</asp:ListItem>
        <asp:ListItem>700000</asp:ListItem>
        <asp:ListItem>750000</asp:ListItem>
        <asp:ListItem>800000</asp:ListItem>
        <asp:ListItem>850000</asp:ListItem>
        <asp:ListItem>900000</asp:ListItem>
        <asp:ListItem>950000</asp:ListItem>
        <asp:ListItem>1000000</asp:ListItem>
        
    </asp:DropDownList>
    <asp:DropDownList ID="dlTypeBien" runat="server"  >
        <asp:ListItem Value="null">Type de Bien</asp:ListItem>
        <asp:ListItem Value="0">Appartement</asp:ListItem>
        <asp:ListItem Value="1">Maison</asp:ListItem>
        <asp:ListItem Value="2">Garage</asp:ListItem>
        <asp:ListItem Value="3">Terrain</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="dlNbPieces" runat="server">
        <asp:ListItem Value="-1">Nombre de Pièces</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="tbCp" runat="server" placeholder="Code Postal" Width="75px"></asp:TextBox>
    <asp:TextBox ID="tbVille" runat="server" placeholder="Ville" ></asp:TextBox>
    <br />
   
    <asp:Button ID="rechercher" runat="server" OnClick="rechercher_Click" Text="Rechercher" Height="25px" Width="292px" style="margin-left: 0px" />
    <br /><br /><br />
    </center>



    

    
    <div id="tab"  style="margin-left: 10vw;margin-right: 10vw">
        </div>
    <center>
    <div>
        <center><h2>Recherche avancée </h2></center>
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
                <td><asp:Label ID="Label1" runat="server" Text="Prix (en €) :"></asp:Label></td>
                <td><asp:TextBox ID="tbPrixMinAv" runat="server" placeholder="minimum"  ></asp:TextBox></td>
                <td><asp:TextBox ID="tbPrixMaxAv" runat="server" placeholder="maximum"  ></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Surface (en m²) :"></asp:Label></td>
                <td><asp:TextBox ID="tbSurfMinAv" runat="server"  placeholder="minimum"  ></asp:TextBox></td>
                <td><asp:TextBox ID="tbSurfMaxAv" runat="server" placeholder="maximum"  ></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Montant charges (en €) :"></asp:Label></td>
                <td><asp:TextBox ID="tbMontMinAv" runat="server" placeholder="minimum" ></asp:TextBox></td>
                <td><asp:TextBox ID="tbMontMaxAv" runat="server" placeholder="maximum" ></asp:TextBox></td>
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
        


        
        
        
        <br />

        
        

        

        <br />
        <asp:Button ID="rechAv" runat="server"  Text="Rechercher" OnClick="rechAv_Click" />
        <br />
        <br />
        <br />
        <br />

    </div>
    </center>
    <center>
    <asp:Repeater ID="rpResultats" runat="server">
        <ItemTemplate>
        <div id ="res" >
            
            <table>
                <tr>
                    <td><%# Eval("Titre") %></td>
                    <td>Prix :</td>
                    <td><%# Eval("Prix") %></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <a href="./DetailsBien.aspx?id=<%# Eval("Id") %>">Voir les détails</a>
                    </td>
                </tr>
            </table>
                
        </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:Repeater>
        </center>



  
</asp:Content>
