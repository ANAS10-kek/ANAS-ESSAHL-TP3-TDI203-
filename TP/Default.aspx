<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="showcase" runat="server">
    <div class="row justify-content-around col-md-12 bg-dark row m-0 px-0" id="showcase" style="background: url(pic/showcase.jpg) no-repeat center center/cover">
         <div class="col-md-6 d-flex justify-content-center align-items-center">
            <img id="imgShowcase"  src="../pic/1x/Plan%20de%20travail%201.png" />
        </div>
        <div class="col-md-6 text-light d-flex flex-column py-5 ">
            <div style="font-family: 'Indie Flower', cursive;" class="d-flex flex-column justify-content-around p-0">
                <span>Prepare for</span>
                <span style="font-weight:bold" id="title">SMART  CITY</span>
                <span style="font-weight:bold" id="title">CONFERENCE</span>
                <h3  style="font-size:1.8rem" class="text-success">2018</h3>
                <span class="h6">MARRAKECH - JUNE 1ST,3RD</span>
            </div>
            <div class="py-2">
                <a class="btn btn-success px-3 mr-5 h4" href="#">More Info</a>
                <a class="btn btn-success px-3 h4 form-text" href="registre.aspx">Register Now</a>
            </div>
            <div class="py-5">
                <h5>The event will start in :</h5>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                         <asp:Timer ID="Timer1" Interval="1000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                        <asp:Label CssClass="display-4 py-3 font-weight-bold" Text="" ID="cmptLbl" runat="server" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                       
                    
                
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cont" runat="server">
    <div class="col-md-12  px-3" id="features">
        <div class="col-md-12  row py-5 " style="height: max-content">
            <div class="col-md-6">
                <h3 class="text-center col-md-11 p-0 m-0">Firt meetup camp in marrakech</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitaenisi minus voluptates magnam sapiente eaque, quos fugit repellat, unde fuga? Commodisuscipit culpa blanditiis ab perspiciatis dolor!
                     Quod nulla ut eum autem eos adipisci cumque ipsa quos id sunt itaque, dolores rem! Explicabo adipisci, ipsa id alias porro q
                </p>

            </div>
            <div class="col-md-6 pr-2">
                <h1 class="display-4 text-info">the
                    <br />
                    e<span class="text-dark">v</span>ent
                    <br />
                    company</h1>
            </div>
        </div>
        <div class="row col-md-12 py-4 px-3" >
            <div class="container col-md-6  text-center" style="border-bottom: 4px solid orange">
                <img class="img-fluid" src="pic/Event-Countdown-landingPage-template.png" />
            </div>
            <div class="d-flex flex-column col-md-6">
                <h4>Qestions</h4>
                <h1>FAQ</h1>
                <hr />
                <div style="background-color: rgba(238, 238, 238, 0.90)" class="rounded mb-1">
                    <button type="button" class="btn btn-default text-left col-md-12" data-toggle="collapse" data-target="#collapse_1" aria-expanded="false" aria-controls="collapse">
                        Qestion one ?
                    </button>
                    <div id="collapse_1" class="collapse px-3">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque,
                    </div>
                </div>
                <div style="background-color: rgba(238, 238, 238, 0.90)" class="rounded mb-1">
                    <button type="button" class="btn btn-default text-left col-md-12" data-toggle="collapse" data-target="#collapse_2" aria-expanded="false" aria-controls="collapse">
                        Question two ?
                    </button>
                    <div id="collapse_2" class="collapse px-3">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque,
                    </div>
                </div>
                <div style="background-color: rgba(238, 238, 238, 0.90)" class="rounded mb-1 mb-1">
                    <button type="button" class="btn btn-default text-left col-md-12" data-toggle="collapse" data-target="#collapse_3" aria-expanded="false" aria-controls="collapse">
                        Question tree ?</button>
                    <div id="collapse_3" class="collapse px-3">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque,
                    </div>
                </div>
                <div style="background-color: rgba(238, 238, 238, 0.90)" class="rounded">
                    <button type="button" class="btn btn-default text-left col-md-12" data-toggle="collapse" data-target="#collapse_4" aria-expanded="false" aria-controls="collapse">
                        Question Four ?
                    </button>
                    <div id="collapse_4" class="collapse px-3">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque,
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="slider" runat="server">
    <div id="my-carousel" class="carousel slide py-5" data-ride="carousel">
        <ol class="carousel-indicators">
            <li class="active" data-target="#my-carousel" data-slide-to="0" aria-current="location"></li>
            <li data-target="#my-carousel" data-slide-to="1"></li>
            <li data-target="#my-carousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="pic/pic.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="pic/pic2.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="pic/pic.jpg" alt="">
            </div>
        </div>
        <a class="carousel-control-prev" href="#my-carousel" data-slide="prev" role="button">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#my-carousel" data-slide="next" role="button">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</asp:Content>
<asp:Content ID="content5" ContentPlaceHolderID="container_team" runat="server">
    <div class="col-md-12 d-flex flex-column py-5" id="team">
        <div class="col-md-12">
            <h1 id="title_ourteam" class=""><span>Our Team</span> </h1>
        </div>
        <div class="row col-md-12 py-5 m-0 d-flex justify-content-around" id="cards">
            <div class="card col-md-3  p-0  mt-2 d-flex flex-column" style="background-color: #e0e0e0">
                <div class=" col-md-12  p-0 m-0">
                    <img class="card-img-top img-fluid m-0 p-0" src="https://source.unsplash.com/random/300x100" alt="img">
                    <div class="p-0 d-flex flex-column justify-content-center align-items-center">
                        <img src="pic/person/person1.jpg" style="border-radius: 50%; height: 100px; width: 100px; border: 3px solid #ffffff; margin-top: -3rem" />
                    </div>
                    <div class="card-body text-center col-md-12">
                        <h4 class="card-title">Jhon doe</h4>
                        <p class="card-text text-center">
                            text
                        <br />
                            text
                        <br />
                            text
                        </p>
                    </div>
                </div>
            </div>
            <div class="card col-md-3 p-0 mt-2 d-flex flex-column" style="background-color: #e0e0e0">
                <div class=" col-md-12  p-0 m-0">
                    <img class="card-img-top img-fluid m-0 p-0" src="https://source.unsplash.com/random/300x100" alt="img">
                    <div class="p-0 d-flex flex-column justify-content-center align-items-center">
                        <img src="pic/person/person2.jpg" style="border-radius: 50%; height: 100px; width: 100px; border: 3px solid #ffffff; margin-top: -3rem" />
                    </div>
                    <div class="card-body text-center col-md-12">
                        <h4 class="card-title">Jhon doe</h4>
                        <p class="card-text text-center">
                            text
                        <br />
                            text
                        <br />
                            text
                        </p>
                    </div>
                </div>
            </div>
            <div class="card col-md-3 p-0 mt-2 d-flex flex-column" style="background-color: #e0e0e0">
                <div class=" col-md-12  p-0 m-0">
                    <img class="card-img-top img-fluid m-0 p-0" src="https://source.unsplash.com/random/300x100" alt="img">
                    <div class="p-0 d-flex flex-column justify-content-center align-items-center">
                        <img src="pic/person/person4.jpg" style="border-radius: 50%; height: 100px; width: 100px; border: 3px solid #ffffff; margin-top: -3rem" />
                    </div>
                    <div class="card-body text-center col-md-12">
                        <h4 class="card-title">Jhon doe</h4>
                        <p class="card-text text-center">
                            text
                        <br />
                            text
                        <br />
                            text

                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center py-5 px-2">
            <p>
                orem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque, quos fugit repellat, unde fuga? Commodi suscipit culpa blanditiis ab perspiciatis dolor!
            </p>
        </div>
        <div class="col-md-12 py-5 pl-1">
            <h3 id="title_ourteam"><span>Our partner</span></h3>
            <div class="row col-md-12 pl-4 m-0">
                <div class="row col-md-9 p-0 " style="border-left: solid 3px #bebebe;">
                    <p class="pl-3">orem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque, quos fugit repellat, unde fuga? Commodi suscipit culpa blanditiis ab perspiciatis dolor!atis doloratis doloratis doloratis dolor</p>
                    <span style="color: #bebebe; font-size: 1.2rem" class="px-5">--Jhon doe </span>
                </div>
                <div class="row m-0">
                    <div class="d-flex">
                        <div class="row mr-2">
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-adobe"></i></div>
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-google"></i></div>
                        </div>
                        <div class="row mr-2">
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-microsoft"></i></div>
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-google"></i></div>
                        </div>
                        <div class="row mr-2">
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-google"></i></div>
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-adobe"></i></div>
                        </div>
                        <div class="row mr-2">
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-microsoft"></i></div>
                            <div class="col-md- pr-2 m-0"><i class="fab fa-3x fa-google"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contact_container" runat="server">
    <div class="col px-5" id="contact">
        <div class="col-md-12 text-center">
            <h1>Contact And <span class="text-success">Location</span></h1>
        </div>
        <div class="row py-5 contact" style="border-top: 1px solid #bebebe">
            <div class="col-md-4 py-4">
                <asp:TextBox runat="server"  CssClass="form-control col-md-12 mb-3" BackColor="#f4f4f4" placeholder="Entrez Votre Nom..." ID="Nom_txt" />
                <asp:TextBox runat="server" CssClass="form-control col-md-12 mb-3" BackColor="#f4f4f4" placeholder="Entrez Votre Adresse email.." ID="email_txt" />
                <asp:TextBox runat="server" CssClass="form-control col-md-12 mb-3" BackColor="#f4f4f4" placeholder="Entrez le titre de message.." ID="objet_txt" />
                <asp:TextBox runat="server" CssClass="form-control col-md-12 mb-3" BackColor="#f4f4f4" placeholder="Entrez Votre Message..." ID="message_txt" TextMode="MultiLine" Height="200" Rows="10" />
                <asp:Button Text="Envoyer Votre Message" CssClass="btn btn-success col-md-12 mt-4" runat="server" OnClick="Unnamed1_Click" />
            </div>
            <div class="col-md-4">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13588.23451333301!2d-8.021693216876999!3d31.63224510132209!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdafee8d931f3209%3A0x96ce34d39325c762!2sGu%C3%A9liz%2C%20Marrakech%2040000!5e0!3m2!1sfr!2sma!4v1581259637302!5m2!1sfr!2sma" width="100%" height="450" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
            </div>
            <div class="col-md-4">
                <div class="col">
                    <h3 class="text-center py-4">SMART CITY
                        <br />
                        CONFERENCE AZER</h3>
                    <span class="py-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil provident optio vitae nisi minus voluptates magnam sapiente eaque, quos fugit repellat, unde fuga? Commodi </span>
                    <div class="py-2 d-flex align-items-center">
                        <i class="fas fa-3x fa-map-marker-alt  pr-4"></i>Adresse :Avenue 15,N°43 MARRAKECH
                    </div>
                    <div class="py-2 d-flex align-items-center">
                        <i class="fas fa-3x fa-phone mr-4"></i>Telephone :+212632747971
                    </div>
                    <div class="py-2 d-flex align-items-center">
                        <i class="fas fa-3x fa-envelope pr-4"></i>Email: Avenue 15,N°43 MARRAKECH
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ScriptCountdown" runat="server">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>


        $(document).ready(function () {
            $("a").on('click', function (event) {
                if (this.hash !== "") {
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 800, function () {
                        window.location.hash = hash;
                    });
                }
            });
        });
    </script>
</asp:Content>
