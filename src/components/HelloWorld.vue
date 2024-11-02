<script setup lang="ts">
defineProps<{
  msg: string
}>()
</script>

<template>
 
<div id="container">

<div id="logo">
Poznaj Nasze Schronisko "Zaułek" :)
</div>

<div id="menu">
<a href="index.html"><div class="option">Strona główna</div></a>
<a href=""><div class="option">Przeglądaj zwierzęta</div></a>
<a href=""><div class="option">Rezerwacje</div></a>
<a href="kontakt.html"><div class="option">Kontakt</div></a>
<a href=""><div class="option">Rejestracja</div></a>
<!-- <div style="clear:both;"></div></a> -->
</div>

<div id="topbar">
<div id="topbarL">
<img src="https://cdn.discordapp.com/attachments/1291536825315496057/1292559474867048480/image.png?ex=67042d51&is=6702dbd1&hm=138d7b88dd8b8da9923528ba8b0010259f81150d57fc47a5f77f382193350a74&" height="130" width="130"/>
</div>
<div id="topbarR">
<b>Ciekawostki o żółwiach: </b>
Żółwie mogą oddychać przez skórę – Niektóre gatunki wodnych żółwi, takie jak żółw ozdobny (Chrysemys picta), potrafią oddychać przez skórę wokół swojej kloaki (otwór w tylnej części ciała). Jest to szczególnie przydatne podczas zimowania pod wodą, kiedy pobierają tlen z wody przez naczynia krwionośne znajdujące się w tej części ciała.
<div style="height: 15px;"></div>
<b>zółwie i psy za darmo</b>
</div>
<div style="clear:both;"></div>
</div>

<div id="sidebar">
<div class="optionL"> główna</div>
<div class="optionL">Zdjęcia</div>
<div class="optionL">Booking</div>
<div class="optionL">Rasy</div>
<div class="optionL">żuf skorupa</div>
<div class="optionL">O projekcie</div>
</div>

<div id="content">
<span class="bigtitle">Dlaczego Nasze Schronisko?</span>

<div class="dottedline"></div>

<b>Dlaczego warto wybrać nasze schronisko dla żółwi i psów?</b> <br /><br />
Nasze schronisko to wyjątkowe miejsce, które łączy opiekę nad psami i żółwiami, oferując im bezpieczny dom oraz pomoc w znalezieniu nowych, kochających rodzin. Wyróżniamy się na tle innych placówek nie tylko dzięki zróżnicowaniu zwierząt, ale przede wszystkim poprzez podejście do opieki, indywidualne podejście do każdego mieszkańca oraz dbałość o środowisko. Poniżej przedstawiamy kilka powodów, dla których warto wybrać właśnie nas.
<br /><br />
<b>Profesjonalna opieka i doświadczenie</b> <br /><br />
Nasza kadra to zespół wykwalifikowanych specjalistów, którzy mają wieloletnie doświadczenie w pracy z psami i żółwiami. Znają potrzeby obu gatunków, rozumieją ich zachowanie oraz są w stanie zapewnić im odpowiednią opiekę zdrowotną, żywieniową i behawioralną. Psy potrzebują ciepła, aktywności oraz interakcji z ludźmi, podczas gdy żółwie wymagają specyficznych warunków środowiskowych i żywieniowych. Dzięki naszym specjalistom zwierzęta otrzymują najlepsze możliwe warunki do życia i rozwoju.
<br /><br />
<b>Indywidualne podejście do każdego zwierzęcia</b> <br /><br />
Każdy pies i żółw, który trafia do naszego schroniska, jest traktowany jako wyjątkowa istota z indywidualnymi potrzebami. Rozumiemy, że każdy zwierzak ma swoją historię, charakter i wymagania. Dlatego nasz personel dokładnie bada stan zdrowia oraz zachowanie nowych podopiecznych, aby zapewnić im najbardziej dopasowaną opiekę. W przypadku psów, prowadzimy także programy socjalizacyjne, które pomagają im w adaptacji oraz przygotowują do adopcji.
<br /><br />
<b>Warunki dostosowane do potrzeb zwierząt</b> <br /><br />
Nasze schronisko zostało zaprojektowane z myślą o zapewnieniu odpowiednich warunków dla obu gatunków. Psy mają dostęp do przestronnych wybiegów, na których mogą biegać i bawić się z innymi zwierzętami. Dbamy o ich codzienną aktywność, która jest kluczowa dla ich zdrowia psychicznego i fizycznego. Z kolei żółwie przebywają w specjalnie przygotowanych terrariach, gdzie zapewniamy im optymalną temperaturę, wilgotność i warunki do życia. Każde terrarium jest dostosowane do gatunku i wielkości żółwia, aby mógł on żyć w komfortowych warunkach.
</div>

<div id="footer">
Poznaj Nasze Schronisko - najlepsze schronisko w okolicy. Strona w sieci od 2023r. &copy; Wszelkie prawa zastrzeżone
</div>

</div>

</template>

<style scoped>
/* h1 {
  font-weight: 500;
  font-size: 2.6rem;
  position: relative;
  top: -10px;
}

h3 {
  font-size: 1.2rem;
}

.greetings h1,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {
  .greetings h1,
  .greetings h3 {
    text-align: left;
  } */
/* } */
body
{
	background-color: #404040;
	font-family: 'Lato', sans-serif;
}

#container
{
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

#logo
{
	color: white;
	margin-top: 20px;
	font-size: 44px;
	letter-spacing: 3px;
	font-weight: 900;
}

#menu
{
	background-color: #303030;
	margin-top: 20px;
	color: #ffffff;
	padding: 10px;
	

}

#topbar
{
	background-color: #ad66a4;
	color: white;
	padding: 10px;
	margin-top: 20px;
	margin-bottom: 25px;
	height: 170px;
}

#topbarL
{
	float: left;
	padding: 20px;
	width: 138px;
	text-align: center;
	border-right: 2px dotted #cccccc;
}

#topbarR
{
	float: left;
	padding: 20px;
	width: 760px;
	font-size: 16px;
	text-align: justify;
}

#sidebar
{
	float: left;
	width: 148px;
	min-height: 748px;
	padding:20px;
	background-color: lightgray;
	text-align: center;
	font-size: 18px;
	border-right: 2px dotted #666666;
}

#content
{
	float: left;
	padding: 40px;
	width: 730px;
	background-color: #dedede;
	min-height: 580px;
	text-align: justify;
	
}

#footer
{
	clear: both;
	color: white;
	text-align: center;
	padding: 20px;
	font-size: 18px;
}

.option
{
	float: left;
	min-width: 50px;
	height: 25px;
	font-size: 18px;
	padding: 10px;
	border-right: 2px dotted #444444;
	opacity: 0.8;
	color:#ffffff;
	
}

.option:hover
{
	background-color: #000000;
	cursor: pointer;
}

.optionL
{
	font-size:18px;
	height:25px;
	padding: 10px;
	border-bottom: 2px dotted #444444;
}

.optionL:hover
{
	background-color: #ad66a4;
	color: white;
	cursor: pointer;
}

.bigtitle
{
	font-size: 32px;
	font-weight: 900;
	letter-spacing: 2px;
}

.dottedline
{
	height: 5px;
	margin-top: 15px;
	margin-bottom: 20px;
	border-bottom: 2px dotted #444444;
}

</style>
