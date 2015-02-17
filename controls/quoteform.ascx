<%@ Control Language="C#" AutoEventWireup="true" CodeFile="quoteform.ascx.cs" Inherits="controls_quoteforml" %>




<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="qformcontainer">
        <div class="two-third2">
            <div id="searchmodule" class="tabs">
                <div id="flight-search" class="tab-content form" >
                  
                    <div style="text-align:center">
                        <asp:RadioButtonList ID="newTrip" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="60%" BackColor="Beige" BorderStyle="None" BorderWidth="0px" OnSelectedIndexChanged="newTrip_SelectedIndexChanged" >
                                    <asp:ListItem Value="1">oneway</asp:ListItem>
                                    <asp:ListItem Value="2" Selected="True">roundtrip</asp:ListItem>
                                    <asp:ListItem Value="3">multi-stop</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                    </div>
                    <div class="one_half2">
                        <asp:Label ID="Label1" runat="server" CssClass="formlabel" Text="From (departure city)"></asp:Label>
                        <asp:TextBox ID="newFrom" CssClass="txtboxform"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a departure city" Text="*required" Display="Dynamic" ControlToValidate="newFrom" ForeColor="Red">*required</asp:RequiredFieldValidator>
                    </div>
                    <div class="one_half2 last">
                        <asp:Label ID="Label3" runat="server" CssClass="formlabel" Text="To (arrival city)"></asp:Label>
                        <asp:TextBox ID="newTo" CssClass="txtboxform"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a destination city" Text="*required" Display="Dynamic" ControlToValidate="newTo" ForeColor="Red">*required</asp:RequiredFieldValidator>
                    </div>

                    <div class="one_half2">
                        <asp:Label ID="Label2" runat="server" CssClass="formlabel" Text="Depart"></asp:Label>           
                        <asp:TextBox ID="newFromDate"  Text="mm/dd/yyyy" CssClass="txtboxform" runat="server"></asp:TextBox>
                    </div>                        
                    <div class="one_half2 last">
                        <asp:Label ID="returnlabel" runat="server" CssClass="formlabel" Text="Return"></asp:Label>                
                        <asp:TextBox ID="newToDate" Text="mm/dd/yyyy" CssClass="txtboxform" runat="server"></asp:TextBox>
                    </div>

                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <div class="one_half2">
                            <asp:Label ID="Label9" runat="server" CssClass="formlabel" Text="From (departure city)"></asp:Label>          
                            <asp:TextBox ID="newFrom2" CssClass="txtboxform"  runat="server"></asp:TextBox><br />
                        </div>                        
                        <div class="one_half2 last">
                            <asp:Label ID="Label10" runat="server" CssClass="formlabel" Text="To (arrival city)"></asp:Label>                
                            <asp:TextBox ID="newTo2" CssClass="txtboxform" runat="server"></asp:TextBox><br />
                        </div>

                        <div class="one_half2">
                            <asp:Label ID="Label11" runat="server" CssClass="formlabel" Text="Depart"></asp:Label>
                            <asp:TextBox ID="newFromDate2"  Text="mm/dd/yyyy" CssClass="txtboxform" runat="server"></asp:TextBox>
                        </div>                        
                        <div class="one_hal2f last">
                            
                        </div>

                        <div class="one_half2">
                            <asp:Label ID="Label12" runat="server" CssClass="formlabel" Text="From (departure city)"></asp:Label>             
                            <asp:TextBox ID="newFrom3" CssClass="txtboxform"  runat="server"></asp:TextBox><br /> 
                        </div>                        
                        <div class="one_half2 last">
                             <asp:Label ID="Label13" runat="server" CssClass="formlabel" Text="To (arrival city)"></asp:Label>                 
                             <asp:TextBox ID="newTo3" CssClass="txtboxform"  runat="server"></asp:TextBox><br />
                        </div>

                        <div class="one_half2">
                             <asp:Label ID="Label14" runat="server" CssClass="formlabel" Text="Depart"></asp:Label>           
                             <asp:TextBox ID="newFromDate3"  Text="mm/dd/yyyy" CssClass="txtboxform" runat="server"></asp:TextBox><br />
                        </div>                        
                        <div class="one_half2 last">
                            
                        </div>


                    </asp:Panel>
                    <div class="one_half2">
                        <asp:Label ID="Label4" runat="server" CssClass="formlabel" Text="Passengers"></asp:Label><br />            
                        <asp:DropDownList ID="newPassengers" CssClass="txtboxform3" runat="server">
                                    <asp:ListItem Selected="True">1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                    </div>                        
                    <div class="one_half2 last">
                         <asp:Label ID="Label5" runat="server" CssClass="formlabel" Text="Cabin"></asp:Label>  <br />                    
                         <asp:DropDownList ID="newCabin" runat="server" CssClass="txtboxform3" >
                                    <asp:ListItem>economy</asp:ListItem>
                                    <asp:ListItem Selected="True">business</asp:ListItem>
                                    <asp:ListItem>first</asp:ListItem>
                         </asp:DropDownList>
                    </div>
                    <br />
                    <div class="one_half2">                        
                        <br />
                        <asp:Label ID="Label7" runat="server" CssClass="formlabel" Text="*Email:"></asp:Label>
                         <asp:TextBox ID="newEmail" CssClass="txtboxform" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="newEmail" Display="Dynamic" ErrorMessage="Please enter a valid EMail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Invalid Email</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="newEmail" Display="Dynamic" ErrorMessage="Please enter Email Address" ForeColor="Red">* required</asp:RequiredFieldValidator>
                        
                    </div>                        
                    <div class="one_half2 last">
                        <br />
                        <asp:Label ID="Label8" runat="server" CssClass="formlabel"  Text="*Phone:"></asp:Label>
                       <asp:TextBox ID="newPhone" CssClass="txtboxform" runat="server"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="newPhone" ErrorMessage="Please enter a phone #" ForeColor="Red" Display="Dynamic">* required</asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="one_half2">
                       <asp:Label ID="Label6" runat="server" CssClass="formlabel"  Text="*Name"></asp:Label>
                        <asp:TextBox ID="newName" CssClass="txtboxform" runat="server"></asp:TextBox>
                    </div>                        
                    <div class="one_half2 last">
                         <div style="text-align:right; vertical-align:bottom; padding-bottom:1em; margin-top:.71EM; width:100%">
                             <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/searchbutton.png"  />
                             
                        </div>
                    </div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please fix items below" ShowMessageBox="True" />
                       
                        
                        
                       
                        
                            
                    
                    
                </div>
            </div>
        </div>
            </div>

    </ContentTemplate>
    
</asp:UpdatePanel>
