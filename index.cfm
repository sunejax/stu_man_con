<cfquery datasource="nwdb" name="getcss">
	select NAME,PIC from APP.PICTURES 
</cfquery>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Portfolio Maker</title>
		<meta name="description" content="Fullscreen Form Interface: A distraction-free form concept with fancy animations" />
		<meta name="keywords" content="fullscreen form, css animations, distraction-free, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<link rel="stylesheet" type="text/css" href="css/cs-select.css" />
		<link rel="stylesheet" type="text/css" href="css/cs-skin-boxes.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">

			<div class="fs-form-wrap" id="fs-form-wrap">
				<div class="fs-title">
					<h1>Please enter your details</h1>
				</div>
				<cfform id="myform" class="fs-form fs-form-full" autocomplete="off">
					<ol class="fs-fields">
						<li>
							<label class="fs-field-label fs-anim-upper" for="q1">What's your name?</label>
							<input class="fs-anim-lower" id="q1" name="q1" type="text" placeholder="John Smith" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q2" data-info="We won't send you spam, we promise...">What's your email address?</label>
							<input class="fs-anim-lower" id="q2" name="q2" type="email" placeholder="tardis@timelord.galf" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q3" >What's your current Job Title?</label>
							<input class="fs-anim-lower" id="q3" name="q3" type="text" placeholder="Time Traveller" required/>
						</li>
					
						<li>
							<label class="fs-field-label fs-anim-upper" for="q4" data-info="Every little thing matters...">Experience/Projects</label>
							<input class="fs-anim-lower" id="q4" name="q4" type="text" placeholder="Saved the universe" required/>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q5" data-info="This will be the eye catcher">Give an introduction for your portfolio</label>
							<textarea class="fs-anim-lower" id="q5" name="q5" placeholder="Legend"></textarea>
						</li>
						<li data-input-trigger>
							<label class="fs-field-label fs-anim-upper" data-info="We'll make sure to use it all over">Choose a color for your website.</label>
							<cfselect class="cs-select cs-skin-boxes fs-anim-lower" name="css_menu" query="getcss">
								<option value="" disabled selected>Pick a style</option>
								<option value="NAME" style="background-image:url;">#NAME#</option>
								
								
							</cfselect>
						</li>
						<li>
							<label class="fs-field-label fs-anim-upper" for="q6" data-info="A picture is worth a thousand words...">Smile for a picture</label>
							<input class="fs-anim-lower" id="q6" name="q6" type="file" />
						</li>
					</ol><!-- /fs-fields -->
					<button class="fs-submit" type="submit">Send answers</button>
				</cfform><!-- /fs-form -->
			</div><!-- /fs-form-wrap -->

			<!-- Related demos -->
			<div class="related">
				<p>If you enjoyed this demo you might also like:</p>
				<a href="http://tympanus.net/Development/MinimalForm/">
					<img src="img/relatedposts/minimalform1-300x162.png" />
					<h3>Minimal Form Interface</h3>
				</a>
				<a href="http://tympanus.net/Development/ButtonComponentMorph/">
					<img src="img/relatedposts/MorphingButtons-300x162.png" />
					<h3>Morphing Buttons Concept</h3>
				</a>
			</div>

		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/selectFx.js"></script>
		<script src="js/fullscreenForm.js"></script>
		<script>
			(function() {
				var formWrap = document.getElementById( 'fs-form-wrap' );

				[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {	
					new SelectFx( el, {
						stickyPlaceholder: false,
						onChange: function(val){
							document.querySelector('span.cs-placeholder').style.backgroundColor = val;
						}
					});
				} );

				new FForm( formWrap, {
					onReview : function() {
						classie.add( document.body, 'overview' ); // for demo purposes only
					}
				} );
			})();
		</script>
	</body>
</html>