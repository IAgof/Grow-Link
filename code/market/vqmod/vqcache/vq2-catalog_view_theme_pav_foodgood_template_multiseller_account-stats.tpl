<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <h1><?php echo $ms_account_stats_heading; ?></h1>

				<!DOCTYPE HTML>
				<html>
				    <head>
							  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				        <title>Tráfico mensual</title>
								<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
				        <script type="text/javascript">




									function format_date_iot(date){
										var dd = date.getDate();
										var mm = date.getMonth()+1; //January is 0!
										var yyyy = date.getFullYear();
										if(dd<10){
											dd='0'+dd
										}
										if(mm<10){
											mm='0'+mm
										}
										var date_format = dd+'-'+mm+'-'+yyyy;
										return date_format
									}
									today = format_date_iot(new Date());
									var d = new Date();
									d.setDate(d.getDate() - 1);
									yesterday = format_date_iot(d);

						//			fecha_ini = yesterday;
									fecha_ini = '01-01-2015';
						//			fecha_fin = today;
									fecha_fin = '10-04-16';
									mota = 'all';
									temp_opt_min = '26';
									temp_opt_max = '24.5';
									hum_opt_min = '20';
									hum_opt_max = '30';


									console.log(temp_opt_min);
									console.log(today);
									console.log(yesterday);
								window.onload = fncActualizar;


								function fncActualizar()
									{
										var f = document.forms['formulario'];
										var x = document.getElementById("temp_opt_min").value;
										mota = f.lista.value;
										temp_opt_min = x.toString();
										var x = document.getElementById("temp_opt_max").value;
										temp_opt_max = x.toString();
										var y = document.getElementById("hum_opt_min").value;
										hum_opt_min = y.toString();
										var y = document.getElementById("hum_opt_max").value;
										hum_opt_max = y.toString();




									$(function () {
										$.get('http://217.125.140.200:4004/tienda_pruebas/'+fecha_ini+'/'+fecha_fin+'/'+mota+'/Temperature/average&'+temp_opt_min+'&'+temp_opt_max+'', function(data){
									    var gaugeOptions = {
									        chart: {
									            type: 'solidgauge'
									        },
									        title: null,
									        pane: {
									            center: ['50%', '85%'],
									            size: '100%',
									            startAngle: -90,
									            endAngle: 90,
									            background: {
									                backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
									                innerRadius: '60%',
									                outerRadius: '100%',
									                shape: 'arc'
									            }
									        },
									        tooltip: {
									            enabled: false
									        },
									        // the value axis
									        yAxis: {
									            stops: [
									                [0.1, '#DF5353'], // red
									                [0.5, '#DDDF0D'], // yellow
									                [0.9, '#55BF3B'] // green
									            ],
									            lineWidth: 0,
									            minorTickInterval: null,
									            tickPixelInterval: 400,
									            tickWidth: 0,
									            title: {
									                y: -70
									            },
									            labels: {
									                y: 16
									            }
									        },

									        plotOptions: {
									            solidgauge: {
									                dataLabels: {
									                    y: 5,
									                    borderWidth: 0,
									                    useHTML: true
									                }
									            }
									        }
									    };

									    // The speed gauge
									    $('#container-porcent-temp').highcharts(Highcharts.merge(gaugeOptions, {
									        yAxis: {
									            min: 0,
									            max: 100,
									            title: {
									                text: 'Tiempo dentro de rango'
									            }
									        },
									        credits: {
									            enabled: false
									        },
									        series: [{
									            name: 'Tiempo dentro de rango',
									            data: [data],
									            dataLabels: {
									                format: '<div style="text-align:center"><span style="font-size:25px;color:' +
									                    ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y}</span><br/>' +
									                       '<span style="font-size:12px;color:silver">%</span></div>'
									            },
									            tooltip: {
									                valueSuffix: ' %'
									            }
									        }]
									    }));
										});
									});

									$(function () {

												$.get('http://217.125.140.200:4004/tienda_pruebas/'+fecha_ini+'/'+fecha_fin+'/'+mota+'/Air_humidity/average&'+hum_opt_min+'&'+hum_opt_max+'', function(data){

																var gaugeOptions = {

																		chart: {
																				type: 'solidgauge'
																		},

																		title: null,

																		pane: {
																				center: ['50%', '85%'],
																				size: '100%',
																				startAngle: -90,
																				endAngle: 90,
																				background: {
																						backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
																						innerRadius: '60%',
																						outerRadius: '100%',
																						shape: 'arc'
																				}
																		},

																		tooltip: {
																				enabled: false
																		},

																		// the value axis
																		yAxis: {
																				stops: [
																						[0.1, '#DF5353'], // red
																						[0.5, '#DDDF0D'], // yellow
																						[0.9, '#55BF3B'] // green
																				],
																				lineWidth: 0,
																				minorTickInterval: null,
																				tickPixelInterval: 400,
																				tickWidth: 0,
																				title: {
																						y: -70
																				},
																				labels: {
																						y: 16
																				}
																		},

																		plotOptions: {
																				solidgauge: {
																						dataLabels: {
																								y: 5,
																								borderWidth: 0,
																								useHTML: true
																						}
																				}
																		}
																};

																// The speed gauge
																$('#container-porcent-hum').highcharts(Highcharts.merge(gaugeOptions, {
																		yAxis: {
																				min: 0,
																				max: 100,
																				title: {
																						text: 'Tiempo dentro de rango'
																				}
																		},

																		credits: {
																				enabled: false
																		},

																		series: [{
																				name: 'Tiempo dentro de rango',
																				data: [data],
																				dataLabels: {
																						format: '<div style="text-align:center"><span style="font-size:25px;color:' +
																								((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y}</span><br/>' +
																									 '<span style="font-size:12px;color:silver">%</span></div>'
																				},
																				tooltip: {
																						valueSuffix: ' %'
																				}
																		}]

																}));


									});


									});



					$(function () {
								$.getJSON('http://217.125.140.200:4004/tienda_pruebas/'+fecha_ini+'/'+fecha_fin+'/'+mota+'/Temperature/mean', function (data) {

//								console.log('entra    ' + data);
						        $('#container-graph-temp').highcharts({
						            chart: {
						                zoomType: 'x'
						            },
						            title: {
						                text: 'Temperatura Media'
						            },
						            subtitle: {

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
						                            lineWidth: 2
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
														$.getJSON('http://217.125.140.200:4004/tienda_pruebas/'+fecha_ini+'/'+fecha_fin+'/'+mota+'/Air_humidity/mean', function (data) {

	//													console.log('entra    ' + data);
												        $('#container-graph-hum').highcharts({
												            chart: {
												                zoomType: 'x'
												            },
												            title: {
												                text: 'Humedad Media'
												            },
												            subtitle: {

												            },
												            xAxis: {
												                type: 'datetime'
												            },
												            yAxis: {
												                title: {
												                    text: '%'
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

												$.get('http://217.125.140.200:4004/tienda_pruebas/'+fecha_ini+'/'+fecha_fin+'/'+mota+'/Temperature/last', function (data) {
													document.getElementById('last-value-tem').innerHTML = 'Temperatura Actual: '+data+' ºc';
				//									document.getElementById('rang-opt-temp').innerHTML = 'Rango óptimo de Temperatura: ' +temp_opt_min+ ' a ' +temp_opt_max;
												});

												$.get('http://217.125.140.200:4004/tienda_pruebas/'+fecha_ini+'/'+fecha_fin+'/'+mota+'/Air_humidity/last', function (data) {
													document.getElementById('last-value-hum').innerHTML = 'Humedad Actual: ' +data+' %';
			//										document.getElementById('rang-opt-hum').innerHTML = 'Rango óptimo de Humedad: ' +hum_opt_min+ ' a ' +hum_opt_max;
												});



		};

		</script>

				    </head>
				    <body>
							<script src="https://code.highcharts.com/highcharts.js"></script>
							<script src="https://code.highcharts.com/highcharts-more.js"></script>
							<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>

							<div id="form_actualizar" style="clear: both;">
								<div id="dashboard" style="max-width: 80%; margin: 0 auto;">
									<div id="temperatura">
										<div id="left" style="float: left; width: 70%; margin: 0 auto; min-width:600px;">
											<div id="container-graph-temp"></div>
										</div>
										<div id="rigth" style="float: left; width: 30%; margin: 0 auto: min-width:300px;">
											<div id="last-value-tem" style="width: auto; height: auto; margin: 0 auto; text-align: center;"></div>
											<div id="rang-opt-temp" style="width: auto; height: auto; margin: 0 auto; text-align: center;">
												Rango de temperatura óptima
												<input type="text" name="temp_opt_min" id="temp_opt_min" value="20" style="width: 50px;" onchange="javascript:fncActualizar();"> a
												<input type="text" name="temp_opt_max" id="temp_opt_max" value="25" style="width: 50px;" onchange="javascript:fncActualizar(); ">
													ºC
											</div>
											<div id="container-porcent-temp" style="width: auto; height: 250px; margin: 0 auto"></div>
										</div>
									</div>

									<div id="humedad" style="clear: both;">
										<div id="left" style="float: left; width: 70%; margin: 0 auto; min-width:600px;">
											<div id="container-graph-hum"></div>
										</div>
										<div id="rigth" style="float: left; width: 30%; margin: 0 auto: min-width:300px;">
											<div id="last-value-hum" style="width: auto; height: auto; margin: 0 auto; text-align: center;"></div>
											<div id="rang-opt-hum" style="width: auto; height: auto; margin: 0 auto; text-align: center;"></div>
												Rango de humedad óptima
												<input type="text" name="temp_opt_min" id="hum_opt_min" value="25" style="width: 50px;" onchange="javascript:fncActualizar();"> a
												<input type="text" name="temp_opt_max" id="hum_opt_max" value="30" style="width: 50px;" onchange="javascript:fncActualizar(); ">
												 %

											<div id="container-porcent-hum" style="width: auto; height: 250px; margin: 0 auto"></div>
										</div>
									</div>
								</div>

									<form name="formulario">
										<select name="lista" onchange="javascript:fncActualizar();">
											<option value="all">Todas las motas</option>
											<option value="mote0">Mota 1</option>
											<option value="mote1">Mota 2</option>
											<option value="mote2">Mota 3</option>
										</select>
									</form>
							</div>

				    </body>
				</html>
					</ul>
			

	  <?php echo $content_bottom; ?></div>
	<?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
