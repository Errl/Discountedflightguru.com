<%@ Page Title="Low international business first class airfare prices"
    MetaDescription="Get your free quote now. Best international business class flights and airfare. Travel in luxury business class discounte international flights."    
    MetaKeywords="Discounted International Airfare, First Class Flights Europe, Business class international airfare, Discounted Flights To, cheap international business class,
     cheap international first class, business class airfare, discounted business class, cheap first class flights Germany, cheap business class flights Europe " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="flighttrack.aspx.cs" Inherits="flighttrack" %>

<%@ Register Src="~/controls/constantcontact.ascx" TagPrefix="uc1" TagName="constantcontact" %>
<%@ Register Src="~/controls/constantcontact2.ascx" TagPrefix="uc1" TagName="constantcontact2" %>
<%@ Register Src="~/controls/miniform.ascx" TagPrefix="uc1" TagName="miniform" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <div class="left">
				  <h4><span class="page-title">Flight Tracker</span>
				<span class="page-desc">Track a flight</span>	</h4>
              
			</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
        <uc1:miniform runat="server" ID="miniform" />
        <div class="right"> 
        <uc1:constantcontact2 runat="server" ID="constantcontact2" />
 </div> 
					<div class="two_third">
						
                        <br />
						<div><iframe src="http://embed.flightaware.com/commercial/integrated/web/delay_map_fullpage.rvt" width="660" height="800" frameborder="0" marginheight="0" marginwidth="0"></iframe><br /><div style="font-size: x-small;"><a href="http://flightaware.com/">Flight Tracker courtesy of FlightAware.com</a></div></div>
					
					</div>
 
   
            
    </div>
</asp:Content>

