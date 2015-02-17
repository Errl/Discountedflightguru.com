<%@ Control Language="C#" AutoEventWireup="true" CodeFile="miniform.ascx.cs" Inherits="controls_miniform" %>
<%@ Register Src="~/controls/quotesearch.ascx" TagPrefix="uc1" TagName="quotesearch" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        
        
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: medium; font-weight: 700" >Searh for Flights Now -- New Search Form</asp:LinkButton>
        <asp:ImageButton ID="ImageButton1" BorderStyle="none" runat="server" ImageAlign="Bottom" Width="25px" Height="25px" ImageUrl="~/images/icons16/bullet_arrow_down.png" OnClick="ImageButton1_Click" />
        <asp:Panel ID="miniformpanel" runat="server" Visible="false">
          
             <div class="qformcontainer">
                      <div id="searchmodule" class="tabs">
                           <div id="flight-search" class="tab-content form" >
                <uc1:quotesearch runat="server" ID="quotesearch" />
                </div>
            </div>
                 </div>
        </asp:Panel>
               
    </ContentTemplate>
</asp:UpdatePanel>
