$(function () {

    //init chart
    $('#chart').highcharts({
        chart: {
            type: 'spline',
            animation: false
        },
      
        title: {
            text: ''
        },
        xAxis: {
            categories: ['Week1', 'Week2', 'Week3', 'Week4', 'Week5', 'Week6', 'Week7', 'Week8', 'Week9', 'Week10', 'Week11', 'Week12', 'Week13', 'Week14', 'Week15', 'Week16']
        },
        yAxis: {
            title: {
                text: 'Rank Index'
            },
            max : 0,
            min : -32,
            tickInterval: 2,
            minorTickInterval: 1,
            minorTickLength: 0,
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }],
            labels:{
               formatter: function () {
                    return this.value.toString().substring(1,5);//strip off leading -1
                }
            }
        },
        tooltip: {
            shared: true,
            crosshairs: true,
            formatter: function () {
                
                //sort inversely by rank (y) value
                this.points.sort(function(a,b) { return parseFloat(b.y) - parseFloat(a.y) } );
               
                //header
                var s ='<span style="font-size: 10px"><b>' + this.x + '</b></span><br/>';

                //loop
                $.each(this.points, function () {
                    s += '<span style="color:' + this.series.color + '">\u25CF</span> ' + this.series.name + ' <b>' + this.y.toString().substring(1,5) + '</b><br/>'     
                });
                
                return s;
            },
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: []
    });


    //Sources Menu Click
    $("#sources li").click(function(e){
        
        //toggle active
        $(this).hasClass("active") ? $(this).removeClass("active") : $(this).addClass("active");

        //update chart
        load();
    });

    // division button
    $("#div-nav li").click(function(e){
        
        //toggle active
        $(this).hasClass("active") ? $(this).removeClass("active") : $(this).addClass("active");

        //update chart
        load();
    });

    //conference button
    $("#conf-nav li").click(function(e){
 
        //toggle active
        $(this).hasClass("active") ? $(this).removeClass("active") : $(this).addClass("active");

        //update chart
        load();
    });

    //load data into chart
    function load() {

        //remove all series
        var chart = $('#chart').highcharts();
        $.each(chart.series, function( key, val ) {
            chart.series[0].remove();
        });
       
        //ajax call
        $.getJSON("data", {
            sources: JSON.stringify(getSources()),
            divs: JSON.stringify(getDivisions()),
            confs: JSON.stringify(getConferences())
        }).done(function( data ) {
            $.each(data, function( key, val ) {
              
                chart.addSeries(val);//add to chart
            });
        });
    }

    //get array of active source ids
    function getSources(){

        //init source array
        var sources = [];

        //loop sources menue
        $("#sources li").each(function( index ) {
            if($(this).hasClass('active'))
                sources.push(parseInt($(this).attr("source_id")));
        });  

        // return
        return sources;
    }

    //get array of active conf
    function getConferences(){

        //init confs array
        var confs = [];

        //loop sources menue
        $("#conf-nav li").each(function( index ) {

            if($(this).hasClass('active'))
                confs.push($(this).text());
        });  

        // return
        return confs;
    }

    //get array of active divs
    function getDivisions(){

        //init divs array
        var divs = [];

        //loop sources menue
        $("#div-nav li").each(function( index ) {
           
            if($(this).hasClass('active'))
                divs.push($(this).text());
        });  

        // return
        return divs;
    }

    //load on start
    load();

});


