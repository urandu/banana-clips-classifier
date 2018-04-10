<?php require_once("header.php"); ?>
		<div class="content-body">
			<div class="container">
				<div class="row">
					<main class="col-md-12">
<!--						<h1 class="page-title">Contact</h1>-->
						<article class="post">
							<div class="entry-content clearfix">

                                <?php


                                if(!empty($_POST['temperature']))
                                {
                                    $temperature=$_POST['temperature'];
                                    $precipitation=$_POST['precipitation'];
                                    $soil_type=$_POST['soil_type'];
                                    $soil_ph=$_POST['soil_ph'];
                                    $purpose=$_POST['purpose'];
                                    $duration=$_POST['duration'];
                                    $pest=$_POST['pest'];


                                    clips_clear();
//clips_set_strategy(LEX_STRATEGY);
                                    /*clips_assert("(zone_temp ".$temperature.")");
                                    clips_assert("(zone_precipitation ".$precipitation.")");
                                    clips_assert("(soil_type ".$soil_type.")");
                                    clips_assert("(soil_ph ".$soil_ph.")");
                                    clips_assert("(purpose ".$purpose.")");
                                    clips_assert("(duration ".$duration.")");
                                    clips_assert("(pest ".$pest.")");*/

                                    $file=fopen("assert.clp","w");

                                    fwrite($file,"(defrule InputParams\n=>\n");
                                    fwrite($file,"(assert (zone_temp ".$temperature."))\n");
                                    fwrite($file,"(assert (zone_precipitation ".$precipitation."))\n");
                                    fwrite($file,"(assert (soil_type ".$soil_type."))\n");
                                    fwrite($file,"(assert (soil_ph ".$soil_ph."))\n");
                                    fwrite($file,"(assert (purpose ".$purpose."))\n");
                                    fwrite($file,"(assert (duration ".$duration."))\n");
                                    fwrite($file,"(assert (pest ".$pest.")))\n");
                                    fclose($file);

                                    clips_load('assert.clp');
                                    clips_load('banana.clp');
                                    clips_reset();
//clips_assert("(quesito 2)");
                                    clips_run();
                                    $facts = clips_get_fact_list();
                                   // print_r($facts);
                                    if(!empty($facts[9][1]))
                                    {
                                        echo($facts[9][1]);
                                    }
                                    else
                                    {
                                        echo("The climatic conditions in your zone do not favor the cultivation of bananas. Kindly consider reasearching into other crops or fruits favorable to grow in your zone. Thank You ");
                                    }





                                    clips_clear();



                                }
                                else
                                {

                                    ?>



                                    <form action="index.php" method="post" class="form">
                                        <div class="row">
                                            <div class="col-md-6 col-md-offset-3">
                                                <label >What is the temperature of your area?</label>
                                                <select name="temperature" class="form-control" >
                                                    <option value="hot">Hot (above 30 degrees centigrade)</option>
                                                    <option value="warm">Warm (between 18 and 30 degrees centigrade)</option>
                                                    <option value="cold">Cold (below 18 degrees centigrade)</option>
                                                </select>

                                                <label >How would you describe the rainfall in your area in terms of quantity?</label>
                                                <select name="precipitation" class="form-control" >
                                                    <option value="heavy">Heavy (above 1600mm)</option>
                                                    <option value="medium">Medium (between 1000mm to 1600mm)</option>
                                                    <option value="little">Little (below 1000mm)</option>
                                                </select>

                                                <label >What is the soil type in your area?</label>
                                                <select name="soil_type" class="form-control" >
                                                    <option value="loamy">Loamy</option>
                                                    <option value="clay">Clay</option>
                                                    <option value="sandy">Sandy</option>
                                                </select>

                                                <label >how would you describe the acidity of the soil in your area?</label>
                                                <select name="soil_ph" class="form-control" >
                                                    <option value="acidic">Acidic (below 6pH)</option>
                                                    <option value="alkaline">Alkaline (above 8pH)</option>
                                                    <option value="neutral">Neutral (between 6.0pH and 8.0pH)</option>
                                                </select>

                                                <label >What do you want to use the banana for?</label>
                                                <select name="purpose" class="form-control" >
                                                    <option value="cooking">Cooking</option>
                                                    <option value="fruit">Fruit</option>
                                                </select>

                                                <label >how long do u wish to cultivate the banana in months?</label>
                                                <select name="duration" class="form-control" >
                                                    <option value="10">10 months</option>
                                                    <option value="11">11 months</option>
                                                    <option value="12">12 months</option>
                                                    <option value="13">13 months</option>
                                                    <option value="14">14 months</option>
                                                    <option value="15">15 months</option>

                                                </select>

                                                <label >What pest is most prevalent in your area?</label>
                                                <select name="pest" class="form-control" >
                                                    <option value="0">None</option>
                                                    <option value="1">Rhizome weevil</option>
                                                    <option value="2">Pseudostem weevil</option>
                                                    <option value="3">Sigatoka leaf spot</option>
                                                    <option value="4">Panama wilt</option>
                                                    <option value="5">Bunchy top</option>
                                                    <option value="6">Fusarium wilt</option>
                                                    <option value="7">Nematodes</option>
                                                </select>

                                                <br>

                                                <input type="submit" class="btn btn-lg pull-right btn-success " value="Get Banana">
                                            </div>
                                        </div>	<!-- row -->
                                    </form>




                                <?php
                                }

                                ?>



							</div>
						</article>
					</main>
				</div>
			</div>
		</div>
<?php require_once("footer.php") ?>
