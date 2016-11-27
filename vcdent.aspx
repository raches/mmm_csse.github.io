<%@ Page Title="" Language="C#" MasterPageFile="~/csse_Master.master" AutoEventWireup="true" CodeFile="vcdent.aspx.cs" Inherits="vcdent" %>

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
                <asp:Label ID="Label2" runat="server" Text="Message of the Vice Chancellor" Style="font-weight:bold;"></asp:Label>
            </div>
		<br /><br />
		<p>&nbsp;<img src="./logo/Prof.OnkarSingh1.jpg" width="145px"> Madan Mohan Malaviya University of Technology, Gorakhpur has been&nbsp;&nbsp; established&nbsp; in&nbsp;&nbsp;&nbsp; year 2013 by the Government of Uttar Pradesh in the form of a non-affiliating, teaching and research University after reconstituting the Madan Mohan Malaviya University of Technology, Gorakhpur which was established in 1962. The University aims at facilitating and promoting studies, research, technology incubation, product innovation and extension work in Science, Technology and Management Education for achieving excellence in higher technical education. <br /><br />
		On academic front, the University is presently running five B.Tech. programmes in Civil Engineering, Electrical Engineering, Mechanical Engineering, Electronics and Communication Engineering and Computer Science & Engineering along with M.B.A., M.C.A., M.Tech. in 12 disciplines and full time Ph.D. programme in number of disciplines as part of Quality Improvement Programme of MHRD and TEQIP-II project. In view of the emerging need of the hour the University is planning to start number of programmes at undergraduate and post graduate level in near future.  <br /><br />
		The University provides a congenial environment for the holistic growth and all round development of the student through suitably designed teaching learning processes. The training is provided to the students such that they become globally acceptable personalities with communication skills, proper attitudes and aptitudes, problem solving capabilities and to work in as team. Due care is also taken to imbibe not only technical skills but also the values and social adaptability and human sensibility as integral part of his/her mindset and to make him/her a complete “self”. <br /><br />
		I welcome you in the portals of MMM University of Technology for realizing your dreams and to make the best use of opportunities & facilities for transforming yourself into a competent technical professional and a great human being.<br />
		Jai Hind !
		</p>
    <br><br>
			<div>
			<a  href="Pdf/VC_msg_Students_July112016.pdf" target="_blank" style="float: left"><b>Hon'ble Vice-Chancellor's message for Students - Dated: July 11, 2016</b></a> <br />    
			     
				<br><a  href="Pdf/MMMUTVCProfile.pdf" target="_blank" style="float: left"><b>Profile of Vice-Chancellor</b></a>
						 
			<h4 style="float: right;"> Prof. Onkar Singh <br />Vice-Chancellor <br />
			Email:vc@mmmut.ac.in
			</h4>
			</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincon2" Runat="Server">
    
<div id="nt" style="text-align:center;background-color:cadetblue;">
            <h2 class="nttitle" style="padding:10px 0 10px 0;">Notice</h2>
             </div>
             
             <div id="ntcon" style="">
                 <form id="form2" runat="server" method="post" style="text-align:justify;padding:0 15px 0 15px;">
                    <marquee behavior="scroll" direction="up" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()" onclick="this.stop()" overflow="auto"> 
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

