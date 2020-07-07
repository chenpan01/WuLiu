// JavaScript Document				 
function road()
{
	number=form2.textfield3.value;
	if(number=="")
		{
			alert("国道号码不能为空");
		}
	else
		{
			if(isNaN(parseInt(number)))
				{
					alert("国道号码必须为数字");
				}
			else
				{
					switch (number)
						{
	    					case "101":
		    					str="101线国道　北京—沈阳  全线长： 909 km";
     							break;
							case "102":
               					str="102 线国道　北京—哈尔滨　全线长： 1337 km"; 
      							break;
							case "103":       
       							str=" 103 线国道　北京—天津新港　全线长： 162 km"; 
      							break;
							case "104":     
        						str="104 线国道　北京—福州　全线长： 2420 km"; 
           						break;
							case "105":
        						str="105 线国道　北京—珠海　全线长： 2717 km"; 
           						break;
							case "106":
      				        	str="106 线国道　北京—广州　全线长： 2466 km"; 
           						break;
							case "107":
      							str="107 线国道　北京—深圳　全线长： 2698 km"; 
           						break;
							case "108":
      							str="108 线国道　北京—昆明　全线长： 3331 km"; 
           						break;
							case "109":
      							str="109 线国道　北京—拉萨　全线长： 3901 km"; 
           						break;
							case "110":
      							str="110 线国道　北京—银川　全线长： 1357 km"; 
								break;
							case "111":
								str="111 线国道　北京—加格达奇　全线长： 2123 km"; 
           						break;
							case "112":
      							str="112 线国道　高碑店—高碑店　全线长： 1228 km"; 
           						break;
							case "201":
								str="201 线国道　鹤岗—旅顺口　全线长： 1964 km"; 
           						break;
							case "202":
								str="202 线国道　黑河—旅顺口　全线长： 1818 km"; 
           						break;
							case "203":
								str=" 203 线国道　明水—沈阳　全线长： 720 km"; 
           						break;
							case "204":
								str="204 线国道　烟台—上海　全线长： 1031 km"; 
           						break;
							case "205":
								str="205 线国道　山海关区—广州　全线长： 3160 km"; 
           						break;
							case "206":
								str="206 线国道　烟台—汕头　全线长： 2375 km"; 
           						break;
							case "207":
								str="207 线国道　锡林浩特—海安　全线长： 3738 km"; 
           						break;
							case "208":
								str="208 线国道　二连浩特—长治　全线长： 990 km"; 
           						break;
							case "209":
								str="209 线国道　 呼和浩特—北海　全线长： 3435 km"; 
           						break;
							case "210":
								str="210 线国道　包头—南宁　全线长： 3097 km"; 
           						break;
							case "211":
								str="211 线国道　银川—西安　全线长： 691 km"; 
                 				break;
							case "212":
								str=" 212 线国道　兰州—重庆　全线长： 1302 km"; 
                 				break;
							case "213":
								str="213 线国道　兰州—景洪　全线长： 2796 km"; 
                 				break;
							case "214":
								str="214 线国道　西宁—磨憨　全线长： 3542 km"; 
                 				break;
							case "215":
								str="215 线国道　 红柳园—格尔木　全线长： 641 km"; 
                 				break;
							case "216":
								str="216 线国道　阿勒泰—巴仑台　全线长： 857 km"; 
                 				break;
							case "217":
								str="217 线国道　 阿勒泰—库车　全线长： 1117 km"; 
                 				break;
							case "218":
								str=" 218 线国道　伊宁—若羌　全线长： 1067 km"; 
                 				break;
							case "219":
								str="219 线国道　叶城—拉孜　全线长： 2342 km"; 
                 				break;
							case "220":
								str="220 线国道　滨州—郑州　全线长： 585 km"; 
                 				break;
							case "221":
								str="221 线国道　哈尔滨—同江　全线长： 668 km"; 
                 				break;
							case "222":
								str="222 线国道　哈尔滨—伊春　全线长： 363 km"; 
                 				break;
							case "223":
								str="223 线国道　海口—三亚 ( 东 ) 全线长： 323 km"; 
                 				break;
							case "224":
								str="224 线国道　海口—三亚 ( 中 ) 　全线长： 309 km"; 
                 				break;
							case "225":
								str="225 线国道　海口—三亚 ( 西 ) 　全线长： 429 km"; 
                 				break;
							case "226":
								str="226 线国道　楚雄—墨江　全线长： 288 km"; 
           						break;
							case "227":      
								str="227 线国道　西宁—张掖　全线长： 347 km"; 
                 				break;
							case "301":
								str="301 线国道　绥芬河—满洲里　全线长： 1680 km"; 
                 				break;
							case "302":
								str="302 线国道　珲春—乌兰浩特　全线长： 1028 km"; 
                 				break;
							case "303":
								str="303 线国道　集安—锡林浩特　全线长： 1263 km"; 
                 				break;
							case "304":
								str="304 线国道　丹东—霍林郭勒　全线长： 889 km"; 
                 				break;
							case "305":
								str="305 线国道　庄河—林西　全线长： 815 km"; 
                 				break;
							case "306":
								str="306 线国道　绥中—克什克腾旗  全线长： 497 km"; 
                 				break;
							case "307":
								str="307 线国道　歧口—银川　全线长： 1351 km"; 
                 				break;
							case "308":
								str="308 线国道　青岛—石家庄　全线长： 637 km"; 
                 				break;
							case "309":
								str=" 309 线国道　荣城—兰州　全线长： 2208 km"; 
								break;
							case "310":
       							str=" 310 线国道　连云港—天水　全线长： 1613 km"; 
                 				break;
							case "311":
								str="311 线国道　徐州—西峡　全线长： 748 km"; 
                 				break;
							case "312":
								str=" 312 线国道　上海—伊宁　全线长： 4967 km"; 
                 				break;
							case "314":
								str="314 线国道　乌鲁木齐—红旗拉甫　全线长： 1948 km"; 
                 				break;
							case "315":
								str="315 线国道　西宁—喀什　全线长： 3063 km"; 
                 				break;
							case "316":
								str="316 线国道　 福州—兰州　全线长： 2915 km"; 
                 				break;
							case "317":
								str=" 317 线国道　成都—那曲　全线长： 2043 km"; 
                 				break;
							case "318":
								str="318 线国道　上海—友谊桥　全线长： 5476 km"; 
                 				break;
							case "319":
								str="319 线国道　厦门—成都　全线长： 2984 km"; 
                 				break;
							case "320":
								str="320 线国道　上海—瑞丽　全线长： 3695 km"; 
                 				break;
							case "321":
								str="321 线国道　广州—成都　全线长： 2220 km"; 
                 				break;
							case "322":
								str="322 线国道　衡阳—友谊关　全线长： 1039 km"; 
                 				break;
							case"323":
								str="323 线国道　瑞金—临仓　全线长： 2915 km"; 
                 				break;
							case "324":
								str="324 线国道　福州—昆明　全线长： 2712 km"; 
                 				break;
							case "325":
								str="325 线国道　广州—南宁　全线长： 868 km"; 
                 				break;
							case "326":
								str="326 线国道　秀山—河口　全线长： 1562 km"; 
                 				break;
							case "327":
								str="327 线国道　 菏泽—连云港　全线长： 424 km"; 
                 				break;
							case "328":
								str="328 线国道　南京—南通　全线长： 300 km"; 
                 				break;
							case "329":
								str="329 线国道　杭州—普陀区　全线长： 292 km"; 
                 				break;
							case "330":
								str="330 线国道　温州—寿昌　全线长： 327 km"; 
								break;
		  					default :
		  						str="道路信息不存在"
		  						break;
		  				}
		  			form2.textfield22.value=str;
				}
		}
}
	   