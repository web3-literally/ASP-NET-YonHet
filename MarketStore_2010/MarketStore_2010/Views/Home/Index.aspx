<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MarketStore_2010.Models.Store>>" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="store-head">
            <div class="store-logo">
                <style type="text/css">
                    .style3
                    {
                        color: #669900;
                        font-size: xx-large;
                    }
                    
                    .style4
                    {
                        width: 621px;
                    }
                    
                    .style5
                    {
                        color: #C0C0C0;
                        font-size: xx-large;
                    }
                    
                    .style6
                    {
                        color: #CCCC00;
                        font-size: xx-large;
                    }
                    
                    .logo
                    {
                        width: 200px;
                    }
                    
                    .store-button
                    {
                        padding: 2em 0 3em;
                        display: flex;
                    }
                    
                    .search-form
                    {
                        flex: 1;
                        text-align: right;
                        margin-top: 20px;
                    }
                    
                    .tab-btn
                    {
                        padding: 0.6em 1.5em;
                    }
                    a
                    {
                        cursor: pointer;
                    }
                    
                    .login-link
                    {
                        color: White;
                        background-color: #3399FF;
                        text-decoration: underline;
                        margin-top: 20px;
                    }
                    
                    .store-register
                    {
                        max-width: 600px;
                        margin: 20px auto;
                    }
                    
                    .store-register .row
                    {
                        margin-top: 10px;
                    }
                    .store-register .row label
                    {
                        flex-basis: 40%;
                        text-align: left;
                    }
                    
                    .store-register .row input
                    {
                        flex-basis: 60%;
                    }
                    
                    .store-register .row textarea
                    {
                        flex-basis: 60%;
                    }
                    
                    .store-content
                    {
                        display: flex;
                        flex-wrap: wrap;
                    }
                    
                    .store-item-inner
                    {
                        background-color: #f5f5f5;
                    }
                    
                    .store-item-image
                    {
                        width: 100%;
                        padding-top: 100%;
                        height: 0;
                        background-size: contain;
                        background-position: center;
                        background-repeat: no-repeat;
                    }
                    
                    .container
                    {
                        max-width: 1300px;
                    }
                    .store-button
                    {
                        flex-direction: column;
                    }
                    
                    .tab-btn
                    {
                        flex: 1;
                        text-align: center;
                        padding-left: 10px;
                        padding-right: 10px;
                    }
                    .store-item
                    {
                        flex-basis: 20%;
                        padding: 2px;
                    }
                    
                    @media (max-width: 1300px)
                    {
                        .container
                        {
                            max-width: 1100px;
                        }
                        .store-button
                        {
                            flex-direction: column;
                        }
                    
                        .tab-btn
                        {
                            flex: 1;
                            text-align: center;
                            padding-left: 10px;
                            padding-right: 10px;
                        }
                        .store-item
                        {
                            flex-basis: 25%;
                            padding: 2px;
                        }
                    }
                    
                    @media (max-width: 991px)
                    {
                        .container
                        {
                            max-width: 900px;
                        }
                        .store-button
                        {
                            flex-direction: column;
                        }
                    
                        .tab-btn
                        {
                            flex: 1;
                            text-align: center;
                            padding-left: 10px;
                            padding-right: 10px;
                        }
                        .store-item
                        {
                            flex-basis: 33.33%;
                            padding: 2px;
                        }
                    }
                    @media (max-width: 700px)
                    {
                        .container
                        {
                            max-width: 550px;
                        }
                        .store-item
                        {
                            flex-basis: 100%;
                            padding: 2px;
                        }
                        .store-item
                        {
                            flex-basis: 50%;
                            padding: 2px;
                        }
                    }
                    @media (max-width: 550px)
                    {
                        .container
                        {
                            max-width: 450;
                        }
                        .store-register .row label
                        {
                            flex-basis: 100%;
                            text-align: left;
                        }
                    
                        .store-register .row input
                        {
                            flex-basis: 100%;
                        }
                    
                        .store-register .row textarea
                        {
                            flex-basis: 100%;
                        }
                        .tab-btn
                        {
                            flex-basis: 100%;
                        }
                    
                        .store-item
                        {
                            flex-basis: 100%;
                            padding: 2px;
                        }
                        .d-flex.d-lg-inline-block
                        {
                            flex-wrap: wrap;
                        }
                    }
                    @media (max-width: 450px)
                    {
                        .container
                        {
                            max-width: 300;
                        }
                    }
                </style>
                <div class="d-inline-block">
                    <img class="logo" src="../../Images/Logo-240-150.jpg" />
                </div>
                <div class="d-inline-block" style="vertical-align: bottom;">
                    <strong class="style5">Yon<span class="style6">het </span>Yookoo Market Place </strong>
                </div>
            </div>
            <div class="store-button">
                <div class="d-flex d-lg-inline-block">
                    <button class="tab-btn" style="color: White; background-color: #3399FF; border-color: #3399FF;
                        border-style: None; font-size: Larger; font-family: 'Century Gothic'">
                        Shops</button>
                    <button class="tab-btn" style="color: White; background-color: #FF6600; border-color: #3399FF;
                        border-style: None; font-size: Larger; font-family: 'Century Gothic'; font-size: larger;">
                        Suppliers</button>
                    <button class="tab-btn" style="color: White; background-color: #3399FF; border-color: #3399FF;
                        border-style: None; font-size: Larger; font-family: 'Century Gothic'">
                        Whole Scale</button>
                    <button class="tab-btn" style="color: White; background-color: #CC00CC; border-color: #3399FF;
                        border-style: None; font-size: Larger; font-family: 'Century Gothic'; font-size: larger;">
                        Contant</button>
                </div>
                <div class="d-inline-block search-form">
                    <label>
                        Store by Name</label>
                    <input name="search-key" value="" />
                    <button class="tab-btn" style="color: White; background-color: #0099FF; border-style: None;
                        font-family: Century Gothic; font-size: Larger; margin-left: 0px">
                        Search</button>
                    <br />
                    <a href="#" class="float-right login-link" style="margin-right: 30px;">Login |</a>
                </div>
            </div>
            <div class="split-line" style="border-bottom: solid 2px Green; margin-top: 2em;">
            </div>
        </div>
        <div class="store-register">
            <div class="row" style="justify-content: center; margin-top: 50px;">
                <label style="color: #999999; font-size: x-large;">
                    Yookoo</label>
            </div>
        </div>
        <div class="store-content container">
            <% for (var i = 0; i < Model.Count(); i++)
               { %>
            <div class="store-item">
             <a href="<%: Model.ElementAt(i).LinkUrl%>" style="text-decoration: none; color: black!important; /* font-size: 15px;
                    */">
                <div class="store-item-inner">
                    <div class="store-item-image" style="background-image: url(<%: Model.ElementAt(i).ImageUrl  %>);">
                    </div>
                    <h1 class="text-center">
                        <%: Model.ElementAt(i).StoreName%></h1>
                </div>
               </a>
            </div>
            <% } %>
        </div>
    </div>
</asp:Content>
