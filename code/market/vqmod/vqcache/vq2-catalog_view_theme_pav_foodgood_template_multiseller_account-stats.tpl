<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <h1><?php echo $ms_account_stats_heading; ?></h1>


	</div>
	</div>
</div>
	<?php echo $column_right; ?></div>
</div>


				<!DOCTYPE HTML>
				<html>
				    <head>




							  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				        <title>Tráfico mensual</title>
								<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
				        <script type="text/javascript">
console.log('seller');

									function httpGetAsync(theUrl , callback)
									{
										var xmlHttp = new XMLHttpRequest();
										xmlHttp.onreadystatechange = function() {
												if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
														callback(xmlHttp.responseText);
										}
										xmlHttp.open("GET", theUrl, true); // true for asynchronous
										xmlHttp.send(null);
									}



					$(function () {

//						    $.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=usdeur.json&callback=?', function (data) {
								$.getJSON('http://217.125.140.200:4004/_carlos_albertocarlos_carlos_albertocarlos/2014-01-01/2016-06-06/mota2/Temperature/media', function (data) {

								console.log('entra    ' + data);
						        $('#container').highcharts({
						            chart: {
						                zoomType: 'x'
						            },
						            title: {
						                text: 'Temperatura Media'
						            },
						            subtitle: {
						                text: document.ontouchstart === undefined ?
						                        'Click and drag in the plot area to zoom in' : 'Pinch the chart to zoom in'
						            },
						            xAxis: {
						                type: 'datetime'
						            },
						            yAxis: {
						                title: {
						                    text: 'ºC'
						                }
						            },
						            legend: {
						                enabled: false
						            },
						            plotOptions: {
						                area: {
						                    fillColor: {
						                        linearGradient: {
						                            x1: 0,
						                            y1: 0,
						                            x2: 0,
						                            y2: 1
						                        },
						                        stops: [
						                            [0, Highcharts.getOptions().colors[0]],
						                            [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
						                        ]
						                    },
						                    marker: {
						                        radius: 2
						                    },
						                    lineWidth: 1,
						                    states: {
						                        hover: {
						                            lineWidth: 1
						                        }
						                    },
						                    threshold: null
						                }
						            },

						            series: [{
						                type: 'area',
						                name: 'Temperatura',
						                data: data
						            }]
						        });
						    });
						});


						$(function () {

//									$.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=usdeur.json&callback=?', function (data) {
									$.getJSON('http://217.125.140.200:4004/_carlos_albertocarlos_carlos_albertocarlos/2014-01-01/2016-06-06/mota2/Air_humidity/media', function (data) {

									console.log('entra    ' + data);
											$('#container1').highcharts({
													chart: {
															zoomType: 'y'
													},
													title: {
															text: 'Humedad Media'
													},
													subtitle: {
															text: document.ontouchstart === undefined ?
																			'Click and drag in the plot area to zoom in' : 'Pinch the chart to zoom in'
													},
													xAxis: {
															type: 'datetime'
													},
													yAxis: {
															title: {
																	text: 'Humedad %'
															}
													},
													legend: {
															enabled: false
													},
													plotOptions: {
															area: {
																	fillColor: {
																			linearGradient: {
																					x1: 0,
																					y1: 0,
																					x2: 0,
																					y2: 1
																			},
																			stops: [
																					[0, Highcharts.getOptions().colors[0]],
																					[1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
																			]
																	},
																	marker: {
																			radius: 2
																	},
																	lineWidth: 1,
																	states: {
																			hover: {
																					lineWidth: 1
																			}
																	},
																	threshold: null
															}
													},

													series: [{
															type: 'area',
															name: 'Humedad',
															data: data
													}]
											});
									});
							});




				        </script>
				    </head>
				    <body>
							<script src="https://code.highcharts.com/highcharts.js"></script>
							<div id="container" style="width: 50%; height: 400px; margin: 0 auto"></div>
							<div id="container1" style="width: 50%; height: 400px; margin: 0 auto"></div>

				    </body>
				</html>
					</ul>
			
<?php echo $footer; ?>
