page 60001 "About Me"
{
    PageType = List;
    Caption = 'About Me';
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            usercontrol(htmlrenderingUserControl; HTMLRendering)
            {
                ApplicationArea = All;

                trigger ControlReady()
                var
                begin
                    // CurrPage.htmlrenderingUserControl.Render('<a href="https://tabrezajaz.com">Tabrez Ajaz Portfolio</a>'); => Render Output_1.png
                    //CurrPage.htmlrenderingUserControl.Render(CreateTable(2, 2)); /// passing to IFrame -> means to our control addin
                    CurrPage.htmlrenderingUserControl.Render(DetailsTable);
                end;
            }
        }
    }
    procedure DetailsTable(): Text
    var
        recItem: Record Item;
        out: Text;
        // r, c : Integer; // Single Declaration is Avaialable in version 5
        r: Integer;
        c: Integer;
        recCust: Record Customer;
        custCount: Integer;
    begin
        recCust.Reset();
        recCust.FindSet();
        custCount := recCust.Count;
        out :=
        '<!DOCTYPE html>'
            + '<html>'
            + '	<head>'
            + '		<title>Blog</title>'
            + '	</head>'
            + '	<body>'
            + '		<header>'
            + '			<div class="container-fluid">'
            + '				<div class="row">'
            + '					<div class="col-md-8 col-xs-12">'
            + '						<div id="title">Check This Out</div>'
            + '					</div><!-- end col-md-12-->'
            + '					<div class="col-md-4 col-xs-12">'
            + '						<div id="navbar"> '
            + '							<ul>'
            + '								<li><a href="https://codepen.io/karina001/pen/MOQYyB">Home </a></li>'
            + '								<li><a href="https://s.codepen.io/karina001/debug/wPYJXO/vPAKKVGqyobA">About Me</a></li>'
            + '									<div class="dropdown">'
            + '										<a href="#">Posts</a>'
            + '											<div class="dropdown-menu">'
            + '												<ul>'
            + '													<li><a href="https://codepen.io/karina001/pen/POEQKx">Music</a></li>'
            + '													<li><a href="https://codepen.io/karina001/pen/vpqPvP">Movies</a></li>'
            + '													<li><a href="https://codepen.io/karina001/pen/zPRbMW">Bucket List</a></li>'
            + '												</ul>'
            + '											</div><!--end dropdown-menu --> '
            + '									</div><!-- end dropdown -->'
            + '							</ul>	'
            + '						</div><!-- end navbar-->'
            + '					</div><!-- end col-md-4 -->'
            + '				</div><!--end row -->'
            + '			</div><!--end container-->'
            + '		</header><!--end header-->'
            + '		<section id="about-me">'
            + '			<div class="container">'
            + '				<div class="row">'
            + '					<div class="col-md-12">'
            + '						<div id="about-me-box">'
            + '							<div class="row">'
            + '								<div class="col-md-6 col-xs-12">'
            + '									<img class="max-width-xs" src="http://res.cloudinary.com/dc7s2okmx/image/upload/c_scale,h_400/v1515899540/photo-1479936343636-73cdc5aae0c3_zspukv.jpg" />'
            + '								</div><!-- end col-md-7 -->'
            + '								<div class="col-md-6 col-xs-12">'
            + '									<div class="text-center"><h1>About Me</h1></div>'
            + '									<p>Hi! My name is Karina and this is Check This Out.This personal review blog is filled with all my favoites. From movies to bucket list ideas to random suggestions for you. This is my personal taste so I can confirm that all the suggestions made are the best suggestions in the entire universe! Well... at least to me they are. Have fun looking around. I hope you find something worth enjoying. </p>'
            + '								</div><!-- end col-md-5-->'
            + '							</div><!--end row -->'
            + '						</div><!-- end about-me-box -->'
            + '					</div><!-- end col-md-12-->'
            + '				</div><!-- end row-->'
            + '			</div><!-- end container -->'
            + '		</section>		'
            + '		<footer>'
            + '			<div class="container-fluid">'
            + '				<div class="row">'
            + '					<div class="col-md-4">'
            + '						<div class"row">'
            + '							<div class="col-md-1">'
            + '								<a href"#"><i class="fa fa-pinterest"></i></a>'
            + '							</div><!-- end col-md-1 -->'
            + '							<div class="col-md-1">'
            + '								<a href"#"><i class="fa fa-instagram"></i></a>'
            + '							</div><!-- end col-md-1 -->'
            + '							<div class="col-md-1">'
            + '								<a href="#"><i class="fa fa-spotify"></i></a>'
            + '							</div><!-- end col-md-1-->'
            + '							<div class="col-md-1">'
            + '								<a href="#"><i class="fa fa-tumblr"></i></a>'
            + '							</div><!-- end col-md-1 -->'
            + '							<div class="col-md-1">'
            + '								<a href="#"><i class="fa fa-twitter"></i></a>'
            + '							</div><!-- end col-md-1 -->'
            + '						</div><!-- end row -->'
            + '						<div class="row margin">'
            + '							<div class="col-md-12">'
            + '								<p><i class="fa fa-envelope"></i> karina.smith@student.csd509j.net</p>'
            + '							</div><!-- end col-md-12-->'
            + '						</div><!-- end row-->'
            + '						<div class="row margin">'
            + '							<div class="col-md-12">'
            + '								<p>&copy; Copyright 2018</p>'
            + '							</div><!-- end col-md-12 -->'
            + '						</div><!-- end row -->'
            + '					</div><!-- end col-md-4 -->'
            + '					<div class="col-md-3">'
            + '						<div class="row">'
            + '							<div class="col-md-12">'
            + '								<a href="https://codepen.io/karina001/pen/MOQYyB">Home</a>'
            + '							</div><!-- end col-md-12-->'
            + '						</div><!-- end row -->'
            + '						<div class="row">'
            + '							<div class="col-md-12">'
            + '								<a href="https://codepen.io/karina001/pen/wPYJXO">About Me</a>'
            + '							</div><!-- end col-md-12-->'
            + '						</div><!-- end row -->'
            + '						<div class="row">'
            + '							<div class="col-md-12">'
            + '								<a href="#">Posts</a>'
            + '							</div><!-- end col-md-12-->'
            + '						</div><!-- end row -->'
            + '						<div class="row">'
            + '							<div class="col-md-12">'
            + '								<ul>'
            + '									<li><a href="https://codepen.io/karina001/pen/zPRbMW">Bucket List</a></li>'
            + '									<li><a href="https://codepen.io/karina001/pen/POEQKx">Music</a></li>'
            + '									<li><a href="https://codepen.io/karina001/pen/POEQKx">Movies</a></li>'
            + '								</ul>'
            + '							</div><!-- end col-md-12-->'
            + '						</div><!-- end row -->'
            + '					</div><!-- end col-md-3 -->'
            + '					<div class="col-md-5">'
            + '						<div class="container-fluid">'
            + '						<div id="check-this-out-box">'
            + '							<div class="row">'
            + '								<div class="col-md-12">'
            + '									<h2>Check This Out</h2>'
            + '								</div><!-- end col-12-->'
            + '							</div><!-- end row -->'
            + '							<div class="row">'
            + '								<div class="col-md-12">'
            + '									<p>This personal review blog is filled with all my favoites. From movies to bucket list ideas to random suggestions for you. This is my personal taste so I can confirm that all the suggestions made are the best suggestions in the entire universe! Well... at least to me they are. Have fun looking around. I hope you find something worth enjoying.</p>'
            + '								</div>'
            + '							</div>'
            + '						</div><!-- end check this out box -->'
            + '						</div>'
            + '					</div><!--end col-md-5-->'
            + '				</div><!-- end row -->'
            + '			</div><!-- end container -->'
            + '		</footer>		'
            + '	</body>'
        + '</hmtl>';
        exit(out);
    end;

    procedure CreateTable(rows: Integer;
    Columns: Integer): Text
    var
        recItem: Record Item;
        out: Text;
        // r, c : Integer; // Single Declaration is Avaialable in version 5
        r: Integer;
        c: Integer;
    begin
        // Find GL Accounts
        recItem.FindSet();
        out := '<h1>Business Central <> Shopify</h1>';
        out += '<table border="1" style="width:100%;overflow-x:auto;overflow-y:scroll;overflow:scroll;">';
        for r := 1 to rows do begin
            out += '<tr>';
            for c := 1 to Columns do begin
                // out += '<td>.</td>';
                //  let's add some actual names
                out += '<td>' + recItem.Description + '</td>';
                recItem.Next();
            end;
            out += '</tr>';
        end;
        out += '</table>';
        out += '<style>table {  border-collapse: collapse;  border-spacing: 0;width: 100%; border: 1px solid #ddd;}' + 'th, td {  text-align: left;  padding: 8px;} ' + 'tr:nth-child(even){background-color: #f2f2f2}</style>';
        exit(out);
    end;

    trigger OnInit();
    begin
        LoadTopBanners();
    end;

    local procedure LoadTopBanners();
    begin
        if MediaRepositoryStandard.GET('AssistedSetup-NoText-400px.png', FORMAT(CurrentClientType())) AND MediaRepositoryDone.GET('AssistedSetupDone-NoText-400px.png', FORMAT(CurrentClientType())) then if MediaResourcesStandard.GET(MediaRepositoryStandard."Media Resources Ref") AND MediaResourcesDone.GET(MediaRepositoryDone."Media Resources Ref") then TopBannerVisible := MediaResourcesDone."Media Reference".HasValue();
    end;

    var
        myInt: Integer;
        MediaResourcesStandard: Record "Media Resources";
        MediaRepositoryDone: Record "Media Repository";
        MediaRepositoryStandard: Record "Media Repository";
        MediaResourcesDone: Record "Media Resources";
        TopBannerVisible: Boolean;
        TotalBCCustomers: Integer;
        TotalShopifyCustomers: Integer;
}
