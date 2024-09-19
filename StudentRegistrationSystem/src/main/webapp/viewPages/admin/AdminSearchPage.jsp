<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="../../css/form.css">
	
	    <script>
    
    var stateNumberObject = {
    		"1/": [
    	    "BaMaNa", "KhaHpaNa", "DaHpaYa", "HaPaNa", "HpaKaNa", 
    	    "AhGaYa", "KaMaTa", "KaPaTa", "KhaLaHpa", "LaGaNa", 
    	    "MaKhaBa", "MaSaNa", "MaKaTa", "MaNyaNa", "MaMaNa", 
    	    "MaKaNa", "MaLaNa", "NaMaNa", "PaWaNa", "PaNaDa", 
    	    "PaTaAh", "SaDaNa", "YaBaYa", "YaKaNa", "SaBaNa", 
    	    "SaPaYa", "TaNaNa", "TaSaLa", "WaMaNa"
    	], 
    		"2/": [
    	    "BaLaKha", "DaMaSa", "HpaSaNa", "HpaYaSa", "LaKaNa", 
    	    "MaSaNa", "YaTaNa", "YaThaNa"
    	],
    		"3/": [
    	    "BaGaLa", "LaBaNa", "BaAhNa", "HpaPaNa", "BaThaSa", 
    	    "KaMaMa", "KaKaYa", "KaDaNa", "KaSaKa", "KaDaTa", 
    	    "LaThaNa", "MaWaTa", "PaKaNa", "YaYaTha", "SaKaLa", 
    	    "ThaTaNa", "ThaTaKa", "WaLaMa"
    	],
    		"4/": [
    	    "KaKhaNa", "HpaLaNa", "HaKhaNa", "KaPaLa", "MaTaPa", 
    	    "MaTaNa", "PaLaWa", "YaZaNa", "YaKhaDa", "SaMaNa", 
    	    "TaTaNa", "HtaTaLa", "TaZaNa"
    	],
    		"5/": [
    	    "AhYaTa", "BaMaNa", "BaTaLa", "KhaOuTa", "KhaTaNa", 
    	    "HaMaLa", "AhTaNa", "KaLaHta", "KaLaWa", "KaBaLa", 
    	    "KaNana", "KaThaNa", "KaLaTa", "KhaOuNa", "KaLaNa", 
    	    "LaHaNa", "LaYaNa", "MaLaNa", "MaKaNa", "MaYaNa", 
    	    "MaMaNa", "MaMaTa", "NaYaNa", "NgaZaNa", "PaLaNa", 
    	    "HpaPaNa", "PaLaBa", "SaKaNa", "SaLaKa", "YaBaNa", 
    	    "DaPaYa", "TaMaNa", "TaSaNa", "HtaKhaNa", "WaLaNa", 
    	    "WaThaNa", "YaOuNa", "YaMaPa", "KaMaNa", "KhaPaNa"
    	],
    		"6/": [
    	    "BaPaNa", "HtaWaNa", "KaLaAh", "KaThaNa", "KaSaNa", 
    	    "LaLaNa", "MaMaNa", "PaLaNa", "TaThaYa", "ThaYaKha", 
    	    "YaHpaNa", "KhaMaNa", "MaTaNa", "PaLaTa", "KaYaYa"
    	],
    		"7/": [
    	    "DaOuNa", "KaPaKa", "KaWaNa", "KakaNa", "KaTaKha", 
    	    "LaPaTa", "MaLaNa", "MaNyaNa", "NaTaLa", "NyaLaPa", 
    	    "AhHpaNa", "AhTaNa", "PaTaNa", "PaKhaTa", "PaKhaNa", 
    	    "PaTaTa", "PaNaKa", "HpaMaNa", "PaMaNa", "YaTaNa", 
    	    "YaKaNa", "HtaTaPa", "TaNgaNa", "ThaNaPa", "ThaWaTa", 
    	    "ThaKaNa", "ThaSaNa", "WaMaNa", "YaTaYa", "ZaKaNa", 
    	    "PaTaSa"
    	],

    		"8/": [
    	    "AhLaNa", "KhaMaNa", "GaGaNa", "KaMaNa", "MaKaNa", 
    	    "MaBaNa", "MaTaNa", "MaLaNa", "MaMaNa", "MaHtaNa", 
    	    "MaThaNa", "NaMaNa", "NgaHpaNa", "PaKhaKa", "PaMaNa", 
    	    "PaHpaNa", "SaLaNa", "SaMaNa", "SaHpaNa", "SaTaYa", 
    	    "SaPaWa", "TaTaKa", "ThaYaNa", "HtaLaNa", "YaNaKha", 
    	    "YaSaKa", "KaHtaNa"
    	],
    		"9/": [
    	    "AhMaYa", "AhMaZa", "KhaAhZa", "KhaMaSa", "KaPaTa", 
    	    "KaSaNa", "MaTaYa", "MaHaMa", "MaLaNa", "MaHtaLa", 
    	    "MaKaNa", "MaKhaNa", "MaThaNa", "NaHtaKa", "NgaThaYa", 
    	    "NgaZaNa", "NyaOuNa", "PaThaKa", "PaBaNa", "PaKaKha", 
    	    "PaOuLa", "SaKaNa", "SaKaTa", "ThaPaKa", "TaTaOu", 
    	    "TaThaNa", "ThaSaNa", "WaTaNa", "YaMaTha", "TaKaTa", 
    	    "MaMaNa", "DaKhaTha", "LaWaNa", "OuTaTha", "PaBaTha", 
    	    "PaMaNa", "TaKaNa", "ZaBaTha", "ZaYaTha"
    	],
    		"10/": [
    	    "BaLaNa", "KhaSaNa", "KhaZaNa", "KaMaYa", "KaHtaNa", 
    	    "LaMaNa", "MaLaMa", "MaDaNa", "PaMaNa", "ThaHpaYa", 
    	    "ThaHtaNa", "YaMaNa"
    	],
    	    "11/": [
    	        "AhMaNa", "BaThaTa", "GaMaNa", "KaHpaNa", "KaTaNa", 
    	        "MaAhTa", "MaTaNa", "MaPaNa", "MaAhNa", "MaOuNa", 
    	        "MaPaTa", "PaTaNa", "PaNaTa", "YaBaNa", "YaThaTa", 
    	        "SaTaNa", "ThaTaNa", "TaKaNa", "KaTaLa", "TapaWa"
    	],
    	    "12/": [
    	        "AhLaNa", "BaHaNa", "BaTaHta", "KaKaKa", "DaGaYa", 
    	        "DaGaMa", "DaGaSa", "DaGaTa", "DaGaNa", "DaLaNa", 
    	        "DaPaNa", "LaThaYa", "LaMaNa", "LaKaNa", "MaBaNa", 
    	        "HtaTaPa", "AhSaNa", "KaMaYa", "KaMaNa", "KhaYaNa", 
    	        "KaKhaKa", "KaTaTa", "KaTaNa", "KaMaTa", "LaMaTa", 
    	        "LaThaNa", "MaYaKa", "MaGaDa", "MaGaTa", "OuKaMa", 
    	        "PaBaTa", "PaZaTa", "SaKhaNa", "SaKaKha", "SaKaNa", 
    	        "YaPaTha", "OuKaTa", "TaTaHta", "TaKaNa", "TaMaNa", 
    	        "ThaKaTa", "ThaLaNa", "ThaGaKa", "ThaKhaNa", "TaTaNa", 
    	        "YaKaNa", "OuKaNa"
    	],
    	    "13/": [
    	        "AhKhaNa", "KhaYaHa", "KhaMaNa", "HaTaNa", "HaPaNa", 
    	        "HaPaTa", "SaHpaNa", "ThaNaNa", "SaSaNa", "ThaPaNa", 
    	        "KaLaHpa", "KaLaNa", "KaLaDa", "KaMaSa", "KaTaNa", 
    	        "KaYaNa", "KaTaTa", "KaHaNa", "KaLaTa", "KaKhaNa", 
    	        "KaMaNa", "KaTaLa", "KaThaNa", "LaKhaNa", "LaKhaTa", 
    	        "LaYaNa", "LaKaNa", "LaHaNa", "LaLaNa", "MaBaNa", 
    	        "MaMaSa", "MaTaNa", "MaTaTa", "MaMaNa", "MaMaNa", 
    	        "MaHpaNa", "MaKaNa", "MaPaNa", "MaHpaNa", "MaSaNa", 
    	        "MaYaNa", "MaKaNa", "MaKhaNa", "MaLaNa", "MaMaTa", 
    	        "MaMaTa", "MaNaNa", "MaPaNa", "MaTaNa", "MaYaTa", 
    	        "MaYaNa", "MaYaNa", "MaSaTa", "NaKhaWa", "NaTaNa", 
    	        "NaKhaNa", "NaMaTa", "NaHpaNa", "NaSaNa", "NaKaNa", 
    	        "NaWaNa", "NaHpaNa", "NaKhaNa", "NaKhaTa", "NyaYaNa", 
    	        "PaKhaNa", "PaYaNa", "PaSaNa", "PaWaNa", "HpaKhaNa", 
    	        "PaTaYa", "PaLaNa", "TaKhaLa", "TaYaNa", "TaKaNa", 
    	        "YaLaNa", "YaSaNa", "YaHpaNa", "YaNgaNa", "NaTaYa", 
    	        "PaLaTa", "KhaLaNa", "MaHaYa", "PaPaKa", "TaMaNya", 
    	        "MaBaTa", "MaNgaNa", "AhTaNa", "TaLaNa"
    	],   
    		"14/": [
    	        "AhMaTa", "BaKaLa", "DaNaHpa", "DaDaYa", "AhMaNa", 
    	        "HaKaKa", "HaThaTa", "AhGaPa", "KaKaHta", "KaLaNa", 
    	        "KaKhaNa", "KaKaNa", "KaPaNa", "LaPaTa", "LaMaNa", 
    	        "MaAhPa", "MaMaKa", "MaAhNa", "MaMaNa", "NgaPaTa", 
    	        "NgaThaKha", "NgaYaKa", "NgaSaNa", "NgaThaYa", "NyaTaNa", 
    	        "PaTaNa", "PaThaNa", "HpaPaNa", "PaSaLa", "YaThaYa", 
    	        "ThaPaNa", "WaKhaMa", "YaKaNa", "ZaLaNa"
    	    ]	
    	};
    
var stateObject = {
  "Kachin": [
    "Bhamo", "Chipwi", "Dawthponeyan", "Hopin", "Hpakant", "Injangyang", "Kamaing", "Kan Paik Ti", "Khaunglanhpu", "Lwegel", "Machanbaw", "Mansi", "Mogaung", 
    "Mohnyin", "Momauk", "Myitkyina", "Myo Hla","Nawngmun", "Pang War", "Pannandin", "Puta-O", "Sadaung", "Shin Bway Yang", "Shwegu", "Sinbo", "Sumprabum", 
    "Tanai", "Tsawlaw", "Waingmaw"
  ],
  "Kayah": [
    "Bawlakhe", "Demoso", "Hpasawng", "Hpruso", "Loikaw", "Mese", "Shadaw", "Ywarthit"
  ],
  "Kayin": [
    "Baw Ga Li", "Hlaingbwe", "Hpa-An", "Hpapun", "Hpayarthonesu", "Kamarmaung", "Kawkareik", "Kyaikdon", "Kyainseikgyi", "Kyondoe", "Leik Tho", "Myawaddy", 
    "Paingkyon", "Shan Ywar Thit", "Su Ka Li", "Thandaung", "Thandaunggyi", "Waw Lay Myaing"
  ],
  "Chin": [
    "Cikha", "Falam", "Hakha", "Kanpetlet", "Matupi", "Mindat", "Paletwa", "Rezua", "Rihkhawdar", "Samee", "Tedim", "Thantlang", "Tonzang"
  ],
  "Sagaing": [
    "Ayadaw", "Banmauk", "Budalin", "Chaung-U", "Hkamti", "Homalin","Indaw", "Kale", "Kalewa", "Kanbalu", "Kani", "Katha", "Kawlin", "Khin-U", "Kyunhla", 
    "Lahe", "Layshi", "Mawlaik", "Mingin", "Monywa", "Myaung", "Myinmu", "Nanyun", "Ngazun", "Pale", "Paungbyin", "Pinlebu", "Sagaing", "Salingyi", "Shwebo", 
    "Tabayin", "Tamu", "Taze", "Tigyaing", "Wetlet", "Wuntho", "Ye-U", "Yinmabin", "Kyaukmyaung", "Khampat"
  ],
  "Tanintharyi": [
    "Bokpyin", "Dawei", "Kaleinaung", "Kawthoung", "Kyunsu", "Launglon", "Myeik", "Palaw", "Tanintharyi", "Thayetchaung", "Yepyu", "Khamaukgyi", "Myittar", 
    "Palauk", "Karathuri"
  ],
  "Bago": [
    "Daik-U", "Gyobingauk", "Kawa", "Kyaukkyi", "Kyauktaga", "Letpadan", "Minhla", "Monyo", "Nattalin", "Nyaunglebin", "Okpho", "Oktwin", "Padaung", 
    "Pauk Kaung", "Bago", "Paungde", "Pennwegone", "Phyu", "Pyay", "Shwedaung", "Shwegyin", "Tantabin", "Taungoo", "Thanatpin", "Thayarwady", "Thegon", 
    "Thonze", "Waw", "Yedashe", "Zigon", "Pyontahsar"
  ],
  "Magway": [
    "Aunglan", "Chauk", "Gangaw", "Kamma", "Magway", "Minbu", "Mindon", "Minhla", "Myaing", "MyayHtae", "Myothit", "Natmauk", "Ngape", "Pakokku", "Pauk", 
    "Pwintbyu", "Salin", "Saw", "Seikphyu", "Sidoktaya", "Sinbaungwe", "Taungdwingyi", "Thayet", "Tilin", "Yenangyaung", "Yesagyo", "Kyaukhtu"
  ],
  "Mandalay": [
    "Amarapura", "Aungmyaythazan", "Chanayethazan", "Chanmyathazi", "Kyaukpadaung", "Kyaukse", "Madaya", "Mahaaungmyay", "Mahlaing", "Meiktila", "Mogoke", 
    "Myingyan", "Myittha", "Natogyi", "Ngathayouk", "Ngazun", "Nyaung-U", "Patheingyi", "Pyawbwe", "Pyigyitagon", "Pyinoolwin", "Singu", "Sintgaing", "Tabeikkyin", 
    "Tada-U", "Thaungtha", "Thazi", "Wundwin", "Yamethin", "Tagaung", "Maymyot"
  ],
  "Mon": [
    "Billin", "Chaungzon", "Khawzar", "Kyaikmaraw", "Kyaikto", "Lamine", "Mawlamyine", "Mudon", "Paung", "Thanbyuzayat", "Thaton", "Ye"
  ],
  "Rakhine": [
    "Ann", "Buthidaung", "Gwa", "Kyaukpyu", "Kyauktaw", "Maei", "Maungdaw", "Minbya", "Munaung", "Myauk-U", "Myebon", "Pauktaw", "Ponnagyun", "Ramree", 
    "Rathedaung", "Sittwe", "Thandwe", "Toungup", "Kyeintali", "Taungpyolatwae"
  ],
  "Yangon": [
    "Ahlone", "Bahan", "Botahtaung", "Cocokyun", "Dagon Myothit(East)", "Dagon Myothit(North)", "Dagon Myothit(Seikkan)", "Dagon Myothit(South)", "Dagon", "Dala", 
    "Dawbon", "Hlaingtharya", "Hlaing", "Hlegu", "Hmawbi", "Htantabin", "Insein", "Kamayut", "Kawhmu", "Kayan", "Kungyangon", "Kyauktada", "Kyauktan", "Kyimyindaing", 
    "Lanmadaw", "Latha", "Mayangone", "Mingalardon", "Mingalartaungnyunt", "North Oakkalapa", "Pabedan", "Pazundaung", "Sanchaung", "Seikgikanaungto", "Seikkan",
    "Shwepyithar", "South Oakkalapa", "Tada", "Taikkyi", "Tamwe", "Thaketa", "Thanlyin", "Thingangkyun", "Thongwa", "Twantay", "Yankin", "Oakkan"
  ],
    "Shan": [
    "Aik Chan", "Chinshwehaw", "Hkun Mar", "Ho Tawng", "Hopang", "Hopong", "Hsawng Hpa", "Hseni", "Hsihseng", "Hsipaw", "Ka Lawng Hpar", "Kalaw", "Kali", 
    "Kawng Min Hsang", "Kengtung", "Konkyan", "Kyaing Taung", "Kunhing", "Kuniong", "Kutkai", "Kyaukme", "Kyauktalonegyi", "Kyethi", "Laihka", "Langkho", "Lashio", 
    "Laukkaing", "Lin Haw", "Loilen", "Mabein", "Man Man Hseng", "Man Tun", "Manton", "Matman", "Mawkmai", "Mong Hpen", "Mong Kar", "Mong Pawk", "Monghpyak", 
    "Mong Hsat", "Monghsu", "Mong Kung", "Mongkhet", "Mongla", "Mongmao", "Mongmit", "Mongnai", "Mongping", "Mongton", "Mongyai", "Mongyang", "Mongyawng", 
    "Muse", "Nam Hkam Wu", "Nam Tit", "Namhkan", "Namtu", "Nan Hpai", "Nanhsan", "Nar Kawng", "Nar Wee", "Narphan", "Nawng Hkit", "Nawnghkio", "Nyaungshwe", 
    "Pang Hkam", "Pang Yang", "Pangsang", "Pangwaun", "Pekon", "Pindaya", "Pinlaung", "Tachileik", "Tangyan", "Taunggyi", "Yawng Lin", "Yetsawk", "Yin Pang", 
    "Ywangan", "Naungtayar", "Pinlon", "Kholan", "Manhero", "Ponparkyin", "Tarmoenyae", "Moebyae", "Mongngawt", "Intaw", "Tarlay"
  ],
  "Ayeyarwaddy": [
    "Amar", "Bogale", "Danubyu", "Dedaye", "Einme", "Haigyi Island", "Hinthada", "Ingapu", "Kangyidaunt", "Kyaiklat", "Kyangin", "Kyaunggon", "Kyonpyaw", 
    "Labutta", "Lemyethana", "Maubin", "Mawlamyinegyun", "Myanaung", "Myaungmya", "Ngapudaw", "Ngathinechaung", "Ngayotekaung", "Ngwesaung", "Ngwethoungyan", 
    "Nyaungdon", "Pantanaw", "Pathein", "Pyapon", "Pyinsalu", "Shwethoungyan", "Thabaung", "Wakema", "Yegyi", "Zalun"
  ],
  "Naypyidaw": [
    "Dekhinathiri", "Lewe", "Ottarathiri", "Popathiri", "Pyinmana", "Tatkon", "Zabuthiri", "Zayarthiri"
  ]
};

window.onload = function() {
	  var stateSelects = document.querySelectorAll(".state");
	  var townshipSelects = document.querySelectorAll(".township");

	  stateSelects.forEach((stateSel, index) => {
	    for (var x in stateObject) {
	      stateSel.options[stateSel.options.length] = new Option(x, x);
	    }

	    stateSel.onchange = function() {
	      // Empty the corresponding township dropdown
	      townshipSelects[index].length = 1;
	      // Display correct values
	      var z = stateObject[this.value];
	      for (var i = 0; i < z.length; i++) {
	        townshipSelects[index].options[townshipSelects[index].options.length] = new Option(z[i], z[i]);
	      }
	    }
	  });
	  
	  var stateNumberSelects = document.querySelectorAll(".stateNumber");
	  var nrcTownshipSelects = document.querySelectorAll(".nrcTownship");

	  stateNumberSelects.forEach((stateNumberSel, index) => {
	    for (var x in stateNumberObject) {
	      stateNumberSel.options[stateNumberSel.options.length] = new Option(x, x);
	    }

	    stateNumberSel.onchange = function() {
	      // Empty the corresponding nrcTownship dropdown
	      nrcTownshipSelects[index].length = 1;
	      // Display correct values
	      var z = stateNumberObject[this.value];
	      for (var i = 0; i < z.length; i++) {
	        nrcTownshipSelects[index].options[nrcTownshipSelects[index].options.length] = new Option(z[i], z[i]);
	      }
	    }
	  });
	}
</script>
</head>   
<h1>Enter fields you want to search</h1>
        	<div class="container">
        	<div class="border">
        	<s:form action="filter" method="post">
            	<s:textfield name="studentCardId" label="Student Card ID"/> 
           		<s:textfield name="studentName" label="Student Name"/>
           		<s:select label="Select your major"	list="data[3].getDataMap()"
					name="studentMajor"	headerKey="0" headerValue=""	/>
           		<s:select list="data[11].getDataMap()"  name="studentType" label="Student Type"
           						listKey="key" listValue="value" headerKey="0" headerValue="" />
           		<s:select list="data[17].getDataMap()"  name="studentCurrentYear" label="Current Year"
           						listKey="key" listValue="value" headerKey="0" headerValue="" /> 
					<s:div class="form-group">
						<tr>
							<td>State:</td>
							<td> 
								<select name="studentState" class="state" required="required">
   									 <option value="0" selected="selected">Select state</option>
  								</select>
  							</td>
  						</tr>
  					</s:div>
  					<s:div class="form-group">
  						<tr>
  							<td>Township:</td>
  							<td>
								 <select name="studentTownship" class="township" required="required">
    								<option value="0" selected="selected">Please select state first</option>
								  </select>  							
  							</td>
  						</tr>
  					</s:div>
                <s:submit value="Filter result" id="btn"/>
             </s:form>
        	</div>
        	</div>
        	