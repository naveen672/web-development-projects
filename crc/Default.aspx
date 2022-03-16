<%@ page title="Karnataka Police Academy, Mysuru(KPA)" language="C#" masterpagefile="~/KPA.master" autoeventwireup="true" inherits="_Default, App_Web_wz0ufgwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
<div class="container">
            	<div class="row">
                	<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                        <div id="kpa-carousel" class="carousel slide" data-ride="carousel">
                        
                          <ol class="carousel-indicators">
                                        <asp:ListView ID="lvbtn" runat="server" >
<ItemTemplate>        <li data-target="#kpa-carousel" data-slide-to='<%# DataBinder.Eval(Container.DataItem, "list")%>' class='<%# DataBinder.Eval(Container.DataItem, "Bactive")%>'></li>
                              </ItemTemplate></asp:ListView>  
                            </ol>
                            
                            <div class="carousel-inner" role="listbox">
                             <asp:Repeater ID="lvbnr" runat="server" >
<ItemTemplate>   
                                <div class="item <%# DataBinder.Eval(Container.DataItem, "Bactive")%>">
                                    <img src='<%# Folder +"uploads/banner" + "/" +  DataBinder.Eval(Container.DataItem,"Bimage") %>' class="img-responsive">
                                </div><!-- / .item -->
                                </ItemTemplate></asp:Repeater>
                            
                            </div><!-- / .carousel-inner -->
                        </div><!-- / .kap-crousel -->
                	</div><!-- / .col-lg-9 -->                  
                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    	<div class="row-fluid">
                        
                        	<div class="dr-msg">
                            <h1 class="hdn-kpa">Director’s Message</h1>
                                                       <asp:ListView ID="lvdirector" runat="server" >
<ItemTemplate>    
                                	<div class="row-fluid">
                                    	<img src='<%# Folder +"uploads/faculty" + "/" +  DataBinder.Eval(Container.DataItem,"Dimage") %>' style="width:95px;height:89px" class="img-responsive">
                                        <h5><%# DataBinder.Eval(Container.DataItem, "Dname")%></h5>
                                        <h6><%# DataBinder.Eval(Container.DataItem, "Ddesignation")%></h6>
                                        <p></p><p><%# DataBinder.Eval(Container.DataItem, "Ddesc")%>....<a href="Director_message.aspx">Read More</a></p>
                                    </div>
                        </ItemTemplate></asp:ListView>
                        
                            </div>
                            
                        </div><!-- / .row-fluid -->
                       
                        
                    </div><!-- / .col-lg-3 -->
                   
                </div><!-- / .row -->
            </div><!-- / .container -->
</section>
<style>#about p{text-align:justify;}</style>
<section>
 <div class="container">
            	<div class="row">
                
                	<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    
                    	<div class="row-fluid">
                        	<div class="k-police" id="about">
                                
                            	<h1 class="hdn-kpa">About K P A</h1>
<asp:Literal ID="ltrlabout" runat="server"></asp:Literal>
                                                        
                        </div>
                        </div><!-- / .row-fluid -->
                    
                        <div class="row-fluid ">
                        	<div class="k-ju">
                                 
                            	<h1 class="hdn-kpa">Work Opportunity in KPA</h1>
                                <img src="inner_banner/home/joinus.jpg" class="img-responsive"><br>
                                <p  class="text-justify">The Academy provides exciting job opportunities for senior police officers of Karnataka State Police at the rank of SP / Add.SP, DySP (both civil and armed), RPI, RSI, CHC/AHC and APC apart from healthy academic and sports environment, the Academy provides the opportunities for self development...<a href="Academy_JoinUs.aspx">Read&nbsp;More</a> </p>
                          <%--<asp:Literal ID="ltrljoin" runat="server"></asp:Literal>--%>
                          </div>
                        </div><!-- / .row-fluid -->
                        
                        
                   </div><!-- / .col-lg-3 -->
                 
                 <!--==============================================================================================-->  
                   <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                       <div class="row-fluid">

                           <div class="k-pro">
                                <a href="Programme.aspx">
                            	<h1 class="hdn-kpa"> Upcoming Training Programmes</h1>
                                </a>
                                <div class="row-fluid">
                                   <asp:Literal ID="Literalprogram" runat="server"></asp:Literal>
                                
                        
                                
                        
                                </div><!-- / .row-fluid -->
                                     
                                   
                                     
                                
                                </div><!-- / .k-pro -->

                       </div>
                   		
                        <div class="n-e">
                           
                            <a href="News_Events.aspx">
                        	<h1 class="hdn-kpa" style="margin-bottom:-10px">News &amp; Events </h1>
                                </a>
                                      <asp:Literal ID="Literalnews" runat="server"></asp:Literal>                  
                            
                                                  
                           
                            
                        </div><!-- / .n-e -->
                        
                        
                   </div><!-- / .col-lg-6 -->
                   
               <!--==============================================================================================-->        
                   <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 k-new-mrg">
                    
                    	
                        	
                              <div class="row-fluid">
                        	<div class="k-new">
                            	<h1 class="hdn-kpa" style="margin-bottom: 10px;"> What's New</h1>

                                
                                <div class="row-fluid">
<asp:ListView ID="Listnews" runat="server" >
<ItemTemplate>     

                                   
                                    <div class="col-xs-12 col-sm-12 l-no-padd">

                                        <a href="Latest_news.aspx?id=<%# DataBinder.Eval(Container.DataItem, "Eid")%>">

                                            <div class="new-cont">

                                                <h4><%# DataBinder.Eval(Container.DataItem, "Ename")%> </h4>

                                            </div>

                                        </a>
                                           <hr style="border-color:#20639c; border-top-width:2px;  margin-top: 0px; margin-bottom: 0px; ">
                                    </div>
                                 
          
</ItemTemplate></asp:ListView>
<asp:ListView ID="Listprogam" runat="server" >
<ItemTemplate>     

                                   
                                    <div class="col-xs-12 col-sm-12 l-no-padd">

                                        <a href="Latest_program.aspx?id=<%# DataBinder.Eval(Container.DataItem, "Pid")%>">

                                            <div class="new-cont">

                                                <h4><%# DataBinder.Eval(Container.DataItem, "Pname")%> </h4>

                                            </div>

                                        </a>
                                           <hr style="border-color:#20639c; border-top-width:2px;  margin-top: 0px; margin-bottom: 0px; ">
                                    </div>
                                 
          
</ItemTemplate></asp:ListView>

<asp:ListView ID="Listblog" runat="server" >
<ItemTemplate>     

                                   
                                    <div class="col-xs-12 col-sm-12 l-no-padd">

                                        <a href="Latest_blog.aspx?id=<%# DataBinder.Eval(Container.DataItem, "Bid") %>">

                                            <div class="new-cont">

                                                <h4><%# DataBinder.Eval(Container.DataItem, "Bname")%> </h4>

                                            </div>

                                        </a>
                                           <hr style="border-color:#20639c; border-top-width:2px;  margin-top: 0px; margin-bottom: 0px; ">
                                    </div>
                                 
          
</ItemTemplate></asp:ListView>

                                 
                                </div><!-- / .row-fluid -->

                               



                              </div>         
                        </div><!-- / .row-fluid -->
                       <div class="row-fluid">
                        	<div class="q-links">
                            	
                                 <ul>
                                	<li><h1>Quick Links</h1></li>
                                	<li><i class="fa fa-play" aria-hidden="true"></i><a href="Training_Courses.aspx">Courses</a></li>
                                    <li><i class="fa fa-play" aria-hidden="true"></i><a href="Programme.aspx">Upcoming Training Programmes</a></li>
                                    <li><i class="fa fa-play" aria-hidden="true"></i><a href="News_events.aspx">News & Events</a></li>
                                    <li><i class="fa fa-play" aria-hidden="true"></i><a href="Academy_CommunityOutreach.aspx">Community Outreach</a></li>
                                    <li><i class="fa fa-play" aria-hidden="true"></i><a href="Blog.aspx">Blog</a></li>
                                    <li><i class="fa fa-play" aria-hidden="true"></i><a href="Academy_RTI.aspx">RTI</a></li>
                                    <li><i class="fa fa-play" aria-hidden="true"></i><a href="Academy_Tenders.aspx">Tenders</a></li>
                                </ul>

                            </div>
                        </div><!-- / .row-fluid -->
                        
                   </div><!-- / .col-lg-3 -->
                   
                </div><!-- / .row -->
            </div>
 </section>

 <section>
 <div class="container">
            	<div class="row">
                
                	<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    
                    	<div class="row-fluid">
                        	<div class="k-gallery">
                                <a href="Gallery.aspx">
                            	<h1 class="hdn-kpa">Photo Gallery</h1>
                                </a>
                                <div class="row-fluid">
                                                                                       <asp:ListView ID="lvgallery" runat="server" >
<ItemTemplate>     

                                	<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 gal-img">
                           	    		<a href="Gallery.aspx"><img src='<%# Folder +"uploads/gallery/icon" + "/" +  DataBinder.Eval(Container.DataItem,"Timage") %>' class="img-responsive" /></a>
                                	</div>

                                    </ItemTemplate></asp:ListView>

                                  
                                
                                 
                                 
                                    
                                </div><!-- / .row-fluid -->
                                
                          </div>
                        </div><!-- / .row-fluid -->
                        
                    </div><!-- / .col-lg-3 -->
                    
                    <!--==============================================================================================-->
                	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    	<div class="k-vid">
                            <a href="Video_gallery.aspx">
                                 <h1 class="hdn-kpa">Videos</h1>
                            </a>
                         
                                
                          <div class="row-fluid">
                          <div class="kpa-vid">
                                                                           <asp:ListView ID="lvvideo" runat="server" >
<ItemTemplate>    


                            <iframe src='<%# DataBinder.Eval(Container.DataItem, "Vlink")%>' frameborder="0" allowfullscreen="">

                                   		Your browser does not support the video.
                                   </iframe>

                                   </ItemTemplate></asp:ListView>
                                   
                           </div>
                          </div><!-- / .row-fluid -->
                       </div>
                    </div><!-- / .col-lg-6 -->                    
                    <!--==============================================================================================-->
                   <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                       <div class="row-fluid">
                        	<div class="log-in">
                            	<h1 class="hdn-kpa">Login</h1>
                                <div class="col-xs-12 col-sm-12">
                                    <a href="login.aspx">
                                        <img src="inner_banner/home/kpalogin.jpg" alt="" class="img-responsive">
                                    </a>
                                    </div>
                                </div>
                           </div>
                                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3" style="display:none">
                       <div class="row-fluid">
                        	<div class="log-in">
                            	<h1 class="hdn-kpa">Login</h1>
                                <div class="col-xs-12 col-sm-12">
                                <section class="demo-section-box" >
            <div class="section-container">
              <div class="demo-box">
                <div class="breaking-news-ticker" id="newsTicker10">
                  <div class="bn-news">
                    <marquee class = "marquee" behavior="scroll" direction="left" scrollamount="05">
                                <span class="blink2">new</span><i class="fa fa-hand-o-right" aria-hidden="true"></i><p>
                        
                        <a target="_blanck" href=" http://covid19dashboard.karnataka.gov.in/ "  target="_blank" >COVID-190Government of Karnataka Official Dashboard</a>
                      
                      </p>                                              

                      </p>                    </marquee>
                  </div>
                </div>
                                	
                                	<div class="form-group">
                                        <span id="ContentPlaceHolder1_LabelUser" for="realname">User Name</span>
                                    	
                                        <input name="ctl00$ContentPlaceHolder1$realname" type="text" id="ContentPlaceHolder1_realname" class="form-control">
                                    </div>
                                    <div class="form-group">
                                         <span id="ContentPlaceHolder1_LabelPsw" for="psw">Password</span>
                                        
                                         <input name="ctl00$ContentPlaceHolder1$psw" type="password" id="ContentPlaceHolder1_psw" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$Button1" value="Login" id="ContentPlaceHolder1_Button1" class="btn btn-default">
                                    	
                                        <span id="ContentPlaceHolder1_lbl_info"></span>
                                           
                                    </div>
                                
                                
                                </div>
                                
                            </div>                          
                        </div><!-- / .row-fluid -->
                    </div><!-- / .col-lg-6 -->
                </div><!-- / .row -->
            </div>
        </div>
 </section>
</asp:Content>

