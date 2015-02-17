<%@ Page Title="Lan Airlines business class, South America" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lan.aspx.cs" Inherits="lan" %>

<%@ Register Src="~/controls/miniform.ascx" TagPrefix="uc1" TagName="miniform" %>
<%@ Register Src="~/controls/constantcontact2.ascx" TagPrefix="uc1" TagName="constantcontact2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div class="left">
				  <span class="page-title">Lan Airlines</span>
				<span class="page-desc">We can help plan your next trip to South America</span>
              
			</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
        <uc1:miniform runat="server" ID="miniform" />
        <br />
        <div class="right">
            <uc1:constantcontact2 runat="server" ID="constantcontact2" />
        </div>
        <div class="wrap">


                 <h2 style="color: rgb(3, 61, 125); font-weight: bold; font-style: normal; font-variant: normal; font-size: 16px; line-height: normal; font-family: Arial, Helvetica, sans-serif; margin: 0px; padding: 25px 0px 5px; clear: both; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 250);">Discover the difference it makes to fly LAN</h2>
                 <p style="margin: 0px; padding: 0px 0px 15px; line-height: 1.3em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 250);">
                     Our service classes have been designed to provide you with the best travel experience possible. On your next long distance flight, our Premium Business class will provide you with the highest level of service in order to guarantee your rest - with fully flat, 100% horizontal seats. For regional flights, our Premium Economy class provides you with all the space and comfort you need for your next trip. And to make sure time will fly while traveling with us, check out are redesigned Economy class, which features more space and better entertainment.</p>
                 <p style="margin: 0px; padding: 0px 0px 15px; line-height: 1.3em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 250);">
                     <strong>Enjoy the experience only LAN can provide.</strong></p>


             </div>
    </div>
</asp:Content>

