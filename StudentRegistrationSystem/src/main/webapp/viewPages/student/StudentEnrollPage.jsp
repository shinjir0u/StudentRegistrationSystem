<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Student Enrollment Form</title>
    <link type="text/css" rel="stylesheet" href="./css/form.css">
     <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
          rel='stylesheet'>
          
    <script src=
		"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" >
    </script>

    <script src=
		"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
    
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
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .form-group {
        	width: 50%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        label {
        	width: 100%;
            flex: 1;
            margin-right: 10px;
            font-weight: normal;
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="file"], textarea, select {
            flex: 2;
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        
        input[type="text"]:read-only, input[type="radio"]:read-only, extarea:read-only {
        	opacity: 1;
        	color: gray;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        .gender-options {
            display: flex;
            align-items: center;
        }

        .gender-options label {
            font-weight: bold;
            margin-right: 20px;
        }

        #submit-btn {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        #submit-btn:hover {
            background-color: #45a049;
        }
        
        .section-title {
        	font-weight: bold;
        	font-size: 25px;
            height: 50px;
            margin-top: 20px;
            margin-bottom: 5px;
            color: #333;
        }
        
        .section-title td {
        	vertical-align: bottom;
        	padding-bottom: 5px;
        }   
        
        #sidebar {
            position: absolute;
            left: 20px;
            top: 20px;
        }

        #sidebar button {
            display: block;
            width: 80px;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #sidebar button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
     <div class="container">
        <div class="panel">
            <div class="content">
                <!-- This is where the content for each action would be displayed -->
                <s:form action="studentEnroll" method="post">
                
                	<s:div class="form-group">
            		    <s:textfield readonly="true" name="studentCardId" label="Student Card ID" value="%{student.cardId}"/>

           			</s:div>

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield readonly="true" name="studentName" label="Student Name" value="%{student.name}"/>
            		</s:div>
    
		            <s:div class="form-group">
		                <s:textfield name="studentRollNo" label="Roll No" required="true" value="%{student.rollNo}"/>
		            </s:div>
		           
       			    <s:div class="form-group">
            		    <s:select name="studentType" label="Student Type to Insert" list="data[11].getDataMap()" 
            		    			listKey="key" listValue="value" required="true" value="data[11].getIdByValue(student.type)"/>
           			</s:div>
           			
		            <s:div class="form-group">
		                <s:select name="studentMajor" list="data[3].getDataMap()" label="Major" value="data[3].getIdByValue(student.major)"
		                		listKey="key" listValue="value" disabled="true" />
		                <s:hidden name="studentMajor" value="%{student.major}"></s:hidden>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="studentCurrentYear" list="data[17].getDataMap()" label="Current Year"
            		    		 value="data[17].getIdByValue(student.currentYear)" required="true"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:select name="studentAcademicYear" list="data[1].getDataMap()" label="Academic Year" value="data[1].getIdByValue(student.academicYear)"
        		        		listKey="key" listValue="value" required="true"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
		                <s:select name="studentNrcStateNumber" list="data[7].getDataMap()" label= "NRC" value="data[7].getIdByValue(student.nrc.stateNumber)"
        		        		listKey="key" listValue="value" disabled="true" />
        		        <s:hidden name="studentNrcStateNumber" value="%{student.nrc.stateNumber}"></s:hidden>       		      
        		        <s:select name="studentNrcTownship" list="data[6].getDataMap()" value="data[6].getIdByValue(student.nrc.township)"
        		        		listKey="key" listValue="value" disabled="true" />
        		        <s:hidden name="studentNrcTownship" value="%{data[6].getIdByValue(student.nrc.township)}"></s:hidden>
        		        <s:select name="studentNrcNationality" list="data[13].getDataMap()" value="data[13].getIdByValue(student.nrc.nationality)"
        		        		listKey="key" listValue="value" disabled="true" />
        		        <s:hidden name="studentNrcNationality" value="%{student.nrc.nationality}"></s:hidden>
		                <s:textfield readonly="true"  name="studentNrcNumber" value="%{student.nrc.number}"></s:textfield>
       			    </s:div>

					<s:div class="form-group">
						<tr>
							<td>State*:</td>
							<td> 
								<select name="studentState" class="state" required="required">
   									 <option value="" selected="selected"><s:property value="student.state" /></option>
  								</select>
  							</td>
  						</tr>
  					</s:div>
  					<s:div class="form-group">
  						<tr>
  							<td>Township*:</td>
  							<td>
								 <select name="studentTownship" class="township" required="required">
    								<option value="0" selected="selected">Please select state first</option>
								  </select>  							
  							</td>
  						</tr>
  					</s:div>

            		<s:div class="form-group">
                		<s:textarea name="studentAddress" label="Address" value="%{student.address}" required="true"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:radio name="studentGender" label="Gender" list="#{'1':'Male', '2':'Female' }" value="data[2].getIdByValue(student.gender)"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield name="studentPhoneNumber" label="Phone Number" value="%{student.phoneNumber}" required="true"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="studentEmail" label="Email" value="%{student.email}" required="true"/>
		            </s:div>

        		    <s:div class="form-group">
        		    	<s:textfield name="studentDateOfBirth" readonly="true" label="Date of Birth" id="my_date_picker_1" required="true" value="%{student.dateOfBirth}"></s:textfield>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentReligion" label="Religion" list="data[9].getDataMap()" value="data[9].getIdByValue(student.religion)"
        		        		listKey="key" listValue="value" disabled="true" />
        		        <s:hidden name="studentReligion" value="%{student.religion}"></s:hidden>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentNationality" label="Nationality" list="data[5].getDataMap()" value="data[5].getIdByValue(student.nationality)"
        		        		listKey="key" listValue="value" disabled="true" />
        		        <s:hidden name="studentNationality" value="%{student.nationality}"></s:hidden>
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield name="guardianName" label="Guardian Name" value="%{student.guardian.name}" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianType" label="Relative Type" list="data[8].getDataMap()" value="data[8].getIdByValue(student.guardian.type)"
        		        		listKey="key" listValue="value" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
           			    <s:textfield name="guardianPhoneNumber" label="Phone Number" value="%{student.guardian.phoneNumber}" required="true"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="guardianEmail" label="Email" value="%{student.guardian.email}" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select label= "NRC" name="guardianNrcStateNumber" list="data[7].getDataMap()" value="data[7].getIdByValue(student.guardian.nrc.stateNumber)"
        		        		listKey="key" listValue="value" required="true"/>
		                <s:select name="guardianNrcTownship" list="data[6].getDataMap()" value="data[6].getIdByValue(student.guardian.nrc.township)"
        		        		listKey="key" listValue="value" required="true"/>
		                <s:select name="guardianNrcNationality" list="data[13].getDataMap()" value="data[13].getIdByValue(student.guardian.nrc.nationality)"
        		        		listKey="key" listValue="value" required="true"/>
		                <s:textfield name="guardianNrcNumber" value="%{student.guardian.nrc.number}" required="true"></s:textfield>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianState" label="State" list="data[10].getDataMap()" value="data[10].getIdByValue(student.guardian.state)"
        		        		listKey="key" listValue="value" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianTownship" label="Township" list="data[12].getDataMap()" value="data[12].getIdByValue(student.guardian.township)"
        		        		listKey="key" listValue="value" required="true"/>
		            </s:div>
		            
		
		            <s:div class="form-group">
		                <s:textarea name="guardianAddress" label="Address" value="%{student.guardian.address}" required="true"/>
		            </s:div>
		            
		             <s:div class="form-group">
            		    <s:textfield name="guardianDateOfBirth" label="Date of Birth" id="my_date_picker_2" required="true" value="%{student.guardian.dateOfBirth}"></s:textfield>	
         		   	</s:div>
         		   	
         		   	<s:div class="form-group">
		                <s:select name="guardianReligion" label="Religion" list="data[9].getDataMap()" value="data[9].getIdByValue(student.guardian.religion)"
        		        		listKey="key" listValue="value" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianNationality" label="Nationality" list="data[5].getDataMap()" value="data[5].getIdByValue(student.guardian.nationality)"
        		        		listKey="key" listValue="value" required="true"/>
		            </s:div>
		
		            <tr class="section-title"><td colspan="2">Academic Record</td></tr>
		
					<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Academic Year</td>
		           			<td style="text-align:center">Roll No</td>
		           		</tr>
		          		<s:iterator value="%{student.academicRecords}">
		          			<tr style="text-align: center;">
		          				<td><s:property value="%{academicYear}"/>
		          				<td><s:property value="%{rollNo}"/>
		          			</tr>
		          		</s:iterator>
		           	</table>
		           	
		           	<table>
		           		<tr class="section-title"><td colspan="2">Matriculation Record</td></tr>
		           	
		           	
		           	 <s:div class="form-group">
		                <s:textfield readonly="true"  name="matriculationPlace" label="Matriculation Place" value="%{student.matriculation.place}"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield readonly="true"  name="matriculationRollNo" label="Matriculation Roll No" value="%{student.matriculation.rollNo}"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield readonly="true"  name="matriculationYear" label="Matriculation Year" value="%{student.matriculation.year}"/>
		            </s:div>
		            </table><br>
		        
		           	<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Subject</td>
		           			<td style="text-align:center">Marks</td>
		           		</tr>
		          		<s:textfield readonly="true"  name="matriculationSubject1" label="Myanmar" value="%{student.matriculation.subjects[0].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject2" label="English" value="%{student.matriculation.subjects[1].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject3" label="Mathematics" value="%{student.matriculation.subjects[2].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject4" label="Physics" value="%{student.matriculation.subjects[3].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject5" label="Chemistry" value="%{student.matriculation.subjects[4].mark}"></s:textfield>
		          		<tr>
		          			<td>
		          				<select name="subject6" disabled="disabled">
		          					<option value="0"></option>
		          					<option value="6" ${student.matriculation.subjects[5].id == '6' ? 'selected="selected"' : ''}>Biology</option>
		          					<option value="7" ${student.matriculation.subjects[5].id == '7' ? 'selected="selected"' : ''}>Economics</option>
		          					<option value="8" ${student.matriculation.subjects[5].id == '8' ? 'selected="selected"' : ''}>History</option>
		          					<option value="9" ${student.matriculation.subjects[5].id == '9' ? 'selected="selected"' : ''}>Geography</option>
		          				</select>
		          				<s:hidden name="subject6" value="%{student.matriculation.subjects[5].id}"></s:hidden>
		          			</td>
		          			<td>
		          				<input readonly="readonly" type="text" name="matriculationSubject6" value="${student.matriculation.subjects[5].mark}">
		          			</td>
		          		</tr>
		           	</table>	                
		            <s:submit id="btn" value="Submit"></s:submit>
		        </s:form>
  
            </div>
        </div>
    </div>
    <script>
        $(function() {
            $( "#my_date_picker_1" ).datepicker({
                changeYear:true,
                dateFormat:'yy-mm-dd',
                defaultDate:"15-08-2000"
            });
        });
    </script>
    <script>
        $(function() {
            $( "#my_date_picker_2" ).datepicker({
                changeYear:true,
                dateFormat:'yy-mm-dd',
                defaultDate:"15-08-2000"
            });
        });
    </script>
</body>
</html>

