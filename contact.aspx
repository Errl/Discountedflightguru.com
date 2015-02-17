<%@ Page Title="Discounted international business first airfare travel"
    MetaDescription="Discounted international business class, first class airfare flights travel. Cheap business class tickets Europe, discount flights to Europe"    
    MetaKeywords="Discounted International Airfare, First Class Flights Europe, Business class international airfare, Discounted Flights To, cheap international business class,
     cheap international first class, business class airfare, discounted business class, cheap first class flights Germany, cheap business class flights Europe " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<%@ Register Src="~/controls/constantcontact.ascx" TagPrefix="uc1" TagName="constantcontact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
			<div class="left">
				 <h4> <span class="page-title">Contact Us</span>
				<span class="page-desc">Speak to a Guru</span>	</h4>
              
			</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
    <div class="section-title">
				<span class="h3">Popular Destination</span>
				<a class="right" href="">See all destination</a>		
			</div>
			
			<div class="one-fourth">
				<div class="post-item">
					<div class="image-place">
						<img src="images/uploads/220x135/auckland-city.jpg" alt="image" />
					</div>
					<div class="post-content">
						<h4 class="post-title">Auckland Travel</h4>
						<p class="post-excerpt"></p>
					</div>
					<div class="post-meta">
					
						<a class="read-more" href="australia.aspx">Read More</a>
					</div>
				</div>
			</div>
			
			<div class="one-fourth">
				<div class="post-item">
					<div class="image-place">
						<img src="images/uploads/220x135/rio-de-jainero.jpg" alt="image" />
					</div>
					<div class="post-content">
						<h4 class="post-title">South America Travel</h4>
						<p class="post-excerpt"></p>
					</div>
					<div class="post-meta">
						
						<a class="read-more" href="lan.aspx">Read More</a>
					</div>
				</div>
			</div>
			
			<div class="one-fourth">
				<div class="post-item">
					<div class="image-place">
						<img src="images/uploads/220x135/florence-italy.jpg" alt="image" />
					</div>
					<div class="post-content">
						<h4 class="post-title">Italy Travel</h4>
						<p class="post-excerpt"></p>
					</div>
					<div class="post-meta">
						
						<a class="read-more" href="europe.aspx">Read More</a>
					</div>
				</div>
			</div>
			
			<div class="one-fourth last">
				<div class="post-item">
					<div class="image-place">
						<img src="images/uploads/220x135/auckland-city.jpg" alt="image" />
					</div>
					<div class="post-content">
						<h4 class="post-title">Australia Travel</h4>
						<p class="post-excerpt"></p>
					</div>
					<div class="post-meta">
						
						<a class="read-more" href="australia.aspx">Read More</a>
					</div>
				</div>
			</div>
			<br class="clear" />

     <div class="hr"><hr /></div>
    <div class="one-third">
        <uc1:constantcontact runat="server" ID="constantcontact" />
        <br />
        <strong><span style="font-size: medium">415 Madison Ave. 14th Floor <br />
        New York, New York 10017</span></strong>


				<h3>Ask us anything</h3>
				<p>Please dont hesitate to contact us regarding any question about our services</p>
				<p>We also have extensive amount of frequently asked question (FAQ) that you can access from our support page</p>
				<p>Any email requiring support will be answered not longer than 24 hours</p>
			</div>
			<!--one third -->
			
			<div class="one-third">
				<h3>Your Message</h3>
				<div class="name">		
                        Your Name:<br />												
                <asp:TextBox ID="newContact" CssClass="input" runat="server"></asp:TextBox>
					</div>
					<div class="email">						
						Your E-mail:<br />
                 
                            <asp:TextBox ID="newContactEmail" CssClass="input" runat="server"></asp:TextBox></div>
					
					<div class="text">
						
						Your Message:<br />
                   
                            <asp:TextBox ID="textArea" Columns="50" Rows="10" runat="server" TextMode="MultiLine"></asp:TextBox>
						</div>
					


					 <asp:Button ID="Button5" runat="server" CssClass="input" Text="Submit"  ViewStateMode="Enabled" />
                                <br />
                                
					</div>
    <br class="clear" />	
			 <div class="hr"><hr /></div>
</div>
</asp:Content>

