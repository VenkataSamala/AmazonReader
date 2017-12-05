<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmazonReader._Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#Ebookbtn").click(function () {
                $("#DvdId").hide();
                $("#EbooksId").show();
            });
            $("#Dvdbtn").click(function () {
                $("#DvdId").show();
                $("#EbooksId").hide();
            });
        })
       
    </script>
    &nbsp;<asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server" Height="698px" HorizontalAlign="Left" Width="387px" style="margin-right: 0px">
            <table class="nav-justified" style="height: 750px; width: 153%;">
                <tr>
                    <td colspan="2" style="height: 49px">
                      <h4><asp:Label ID="Label1" runat="server" Text="AMAZON FESTIVE OFFERS"></asp:Label></h4>
                        <p>
                            <input class="btn btn-primary" type="button"  id="Dvdbtn" value="DVD" />
                            <input class="btn btn-success" type="button" id="Ebookbtn" value="Ebooks" />
                            <ajaxToolkit:AnimationExtender ID="Label1_AnimationExtender" runat="server" BehaviorID="Label1_AnimationExtender" TargetControlID="Label1">
                            </ajaxToolkit:AnimationExtender>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 134px">
                        &nbsp;<br />
                        <br />
                        &nbsp;<br />
                    </td>
                    <td style="width: 767px">
                        <div id="DvdId">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <br />
                                    <h3><asp:Label ID="Label3" runat="server" Text=<%#Eval("Title") %>></asp:Label></h3>
                                    <asp:Label ID="Label2" runat="server" Text=<%#Eval("Description") %> />
                                    <h4><asp:Label ID="Label4" runat="server" Text=<%#Eval("PublishDate") %>></asp:Label></h4>                             
                                </ItemTemplate>
                                <SeparatorTemplate>
                                    <asp:Label ID="Label2" runat="server" Text=<%#Eval("Description") %> />
                                </SeparatorTemplate>
                            </asp:Repeater>
                        </div>
                        <div id="EbooksId" hidden="true">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <br />
                                <h3><asp:Label ID="Label3" runat="server" Text=<%#Eval("Title") %>></asp:Label></h3>
                                <asp:Label ID="Label2" runat="server" Text=<%#Eval("Description") %> />
                                <h4><asp:Label ID="Label4" runat="server" Text=<%#Eval("PublishDate") %>></asp:Label></h4>
                            </ItemTemplate>
                            <SeparatorTemplate>
                                <asp:Label ID="Label2" runat="server" Text=<%#Eval("Description") %> />
                            </SeparatorTemplate>
                        </asp:Repeater>
                        </div>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </asp:Panel>
    
</asp:Content>
