<%@ Page Title="" Language="C#" MasterPageFile="~/csse_Master.master" AutoEventWireup="true" CodeFile="predent.aspx.cs" Inherits="predent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <style type="text/css">
        #notice{
               width:20%;height:700px;background-color: #fcfcfc;float:right;
    margin: 25px;
    color:black;
    margin-right: 10px;
    display:inline-block;
    clear:both;
    border-radius: 3px;
    box-shadow: 2px 2px 8px 0px rgba(0, 0, 0, 0.2), -2px 0px 8px 0px rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincon3" Runat="Server">
     <div id="bi2">
		<p style="padding: 8px";>Hon'ble President of CSSE <br> &emsp;Prof. Rakesh Kumar</p>
		<a href="predent.aspx">
		<input type="button" id="bt2" value="Message" style="background-color: grey";>
		</a>
		</div>
		
		<div id="bi1">
		<img id="imgvc" src="./logo/VC.png" title="Hon'ble Vice Chancellor" alt="Hon'ble Vice Chancellor">
		<p id="p1" style="padding: 8px";>Hon'ble Vice Chancellor <br> Prof. (Dr.) Onkar Singh </p>
		<a href="vcdent.aspx">
		<input type="button" id="bt1" value="Message" style="background-color: grey";>
		</a>
		</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincon1" Runat="Server">
    <div class="logform" style="text-align: center";>
                <asp:Label ID="Label2" runat="server" Text="Message from the desk of President of CSSE" Style="font-weight:bold;"></asp:Label>
            </div>
			<br><br>
			
			<hr>
			
			<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;It gives me immense pleasure in welcoming, on behalf of the department of 
			Computer Science and Engineering to the office bearers and members of newly constituted
			Computer Society for Soft Engineers of MCA Programme to this historic University. MCA  
			programme was started in the Department of Computer Science in the year <span style="color: #FF6666;">1987</span>. Over the
			years, this programme has evolved to reach and hold a unique position of pride in the 
			technical education system in India. After the upgradation of <span style=" color: #FF6666">MMM Engineering College to 
			MMM University of Technology</span>, Gorakhpur in <span style="color: #FF6666;">December 2013</span>, the University aims at
			facilitating and promoting studies, research, technology incubation, product innovation and
			extension work in science, Technology and Management Education for achieving excellence
			in higher technical education.</p>
			<br><br>
			<p>This society will be an added advantage for providing a platform so that they become globally
			acceptable personalities with communication skills, proper attitude and aptitude, problem
			solving capabilities and to work in as team. Also this society will inculcate value, social
			adaptability and human sensibility as integral part of his/her mindset.</p>
			<br><br>
			<p>I welcome and wish you all in the society for realizing your competence and to make the best
			use of opportunities and  facilities for transforming yourself into a competent technical
			professional and a great human being.</p>
			<br><br>
			<p>In the end I would mark my message that an investment in knowledge pays the best interest.</p><br><br>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincon2" Runat="Server">
    <div id="nt" style="text-align:center;background-color:cadetblue;">
            <h2 class="nttitle" style="padding:10px 0 10px 0;">Notice</h2>
             </div>
             
             <div id="ntcon" style="">
                 <form id="form2" runat="server" method="post" style="text-align:justify;padding:0 15px 0 15px;">
                    <marquee behavior="scroll" direction="up" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()" onclick="this.stop()" overflow="auto" style="height:380px;" > 
                        <center>
                   <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="false" DataKeyNames="FilePath">
                        <Columns>
                        <asp:BoundField DataField="Detail"/>
                        <asp:TemplateField>
                        <ItemTemplate><br />
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click" CssClass="trebtn" Style="font-size:10px;padding:10px 10px 10px 10px;border-radius:2px;"></asp:LinkButton>
                        <hr /></ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        </asp:GridView>
                     </center></marquee>
                </form>
             </div>
</asp:Content>

