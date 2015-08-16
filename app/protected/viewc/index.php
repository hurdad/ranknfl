<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rank NFL</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <!-- Custom styles for this page -->
    <link href="global/css/index.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">RankNFL.com</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">

          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a id="year-dropdown" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">2015 <span class="caret"></span></a>
              <ul id="year-menu" class="dropdown-menu">
                <li><a href="#">2014</a></li>
                <li><a href="#">2015</a></li>
              </ul>
            </li>
          </ul>

          <ul id="conf-nav" class="nav navbar-nav">
            <li class="active"><a href="#">AFC</a></li>
            <li class="active"><a href="#">NFC</a></li>
          </ul>

          <ul id="div-nav" class="nav navbar-nav navbar-right">  
            <li class="active"><a href="#">North</a></li>
            <li class="active"><a href="#">East</a></li>
            <li class="active"><a href="#">South</a></li>
            <li class="active"><a href="#">West</a></li>
          </ul>

          </div><!--/.nav-collapse -->
   
      </div>
    </nav>


    <div class="container-fluid">
      <div class="row">
        <div class="sidebar">
          <ul id="sources" class="nav nav-sidebar">
            <?php
              //build source menu
              foreach($this->data['sources'] as $source){
                echo "<li class='" . ($source->selected==1 ? 'active' : '') . "' source_id='" . $source->id . "'><a href='#'>" . $source->name . "</a></li>" . PHP_EOL;
              }
            ?>
          </ul>
          <a class="twitter-timeline" width="250" height="400" href="https://twitter.com/RankNFL" data-widget-id="533054920329420800">Tweets by @RankNFL</a>
        </div>
        <div class="main">
          <h1 class="page-header">NFL Power Ranking Trend</h1>
          <div id="chart" style="min-width: 310px; height: 500px; margin: 0 auto"></div>
         </div> 
      </div>
    </div><!-- /.container -->

   
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- High Charts -->
    <script src="http://code.highcharts.com/highcharts.js"></script>

    <!-- Twitter Widget -->
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

    <!-- App Js-->
    <script src="global/js/index.js"></script>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-56674433-1', 'auto');
      ga('send', 'pageview');

    </script>

  </body>
</html>