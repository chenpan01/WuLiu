// JavaScript Document
function checkcar()
	{
		var omit=form10.country.value;
		var city=form10.city.value;
		switch (omit)
			{
				case "京":
					form10.answer.value="北京";
					break;
				case "津":
					form10.answer.value="天津";
					break;
				case "沪":
				 	form10.answer.value="上海";
					break;
				case "渝":
					form10.answer.value="重庆";
					break;
				case "冀":
					switch(city)
						{
							case "A":
								form10.answer.value="石家庄市"; 
								break;
							case "B": 
								form10.answer.value="唐山市";
								break;
							case "C": 
								form10.answer.value="秦皇岛市";
								break;
							case "D": 
								form10.answer.value="邯郸市";
								break;
							case "E":
								form10.answer.value="邢台市";
								break;
							case "F": 
								form10.answer.value="保定市";
								break;
							case "G": 
								form10.answer.value="张家口市";
								break;
							case "H": 
								form10.answer.value="承德市";
								break;
							case "J": 
								form10.answer.value="沧州市" ;
								break;
							case "K": 
								form10.answer.value="邯郸行署";
								break;
							case "L":
								form10.answer.value="邢台行署";
								break;
      						case "M":
								form10.answer.value="石家庄行署";
								break;
							case "N":
								form10.answer.value="保定行署";
								break;
							case "P": 
								form10.answer.value="张家口行署";
								break;
							case "Q": 
								form10.answer.value="承德行署";
								break;
							case "R": 
								form10.answer.value="廊坊市";
								break;
							case "S":
								form10.answer.value="沧州行署";
								break;
							case "T": 
								form10.answer.value="衡水行署";
								break;
							default:
							 	form10.answer.value="没有该车牌号码所在区域的信息";
								break;
						}
					break;
				case "蒙":
					switch(city)
						{
							case "A": 
								form10.answer.value="呼和浩特市";
								break;
							case "B": 
								form10.answer.value="包头市";
								break;
							case "C": 
								form10.answer.value="乌海市";
								break;
							case "D": 
								form10.answer.value="赤峰市";
								break;
							case "E": 
								form10.answer.value="呼伦贝尔盟";
								break;
							case "F": 
								form10.answer.value="兴安盟";
								break;
							case "G": 
								form10.answer.value="西林郭勒盟盟";
								break;
							case "J": 
								form10.answer.value="伊克昭";
								break;
							case "H": 
								form10.answer.value="乌兰察布盟";
								break;
							case "K": 
								form10.answer.value="巴彦淖尔盟";
								break;
							case "L":	
								form10.answer.value="阿拉善盟";
								break;
							default:
							 	form10.answer.value="没有该车牌号码所在区域的信息";
								break;
						}
					break;
				case "晋":
					switch(city)
						{
							case "A": 
								form10.answer.value="太原市";
								break;
							case "B": 
								form10.answer.value="大同市";
								break;
							case "C": 
								form10.answer.value="阳泉市";
								break;
							case "D": 
								form10.answer.value="长治市";
								break;
							case "E": 
								form10.answer.value="晋城市";
								break;
							case "F": 
								form10.answer.value="朔州市";
								break;
							case "G": 
								form10.answer.value="雁北行署";
								break;
							case "H": 
								form10.answer.value="析州行署";
								break;
							case "J": 
								form10.answer.value="吕梁行署";
								break;
							case "K": 
								form10.answer.value="晋中行署";
								break;
							case "L": 
								form10.answer.value="临汾行署";
								break;
      						case "M": 
								form10.answer.value="运城行署";
								break;
							default:
								form10.answer.value="没有该车牌号码所在区域的信息";
								break; 
						}
					break;
				case "辽":
					switch(city)
						{
							case "A": 
								form10.answer.value="沈阳市";
								break;
							case "B": 
								form10.answer.value="大连市";
								break;
							case "C": 
								form10.answer.value="鞍山市";
								break;
							case "D": 
								form10.answer.value="抚顺市";
								break;
							case "E": 
								form10.answer.value="本溪市";
								break;
							case "F ": 
								form10.answer.value="丹东市";
								break;
							case "G": 
								form10.answer.value="锦州市";
								break;
							case "H": 
								form10.answer.value="营口市";
								break;
							case "J": 
								form10.answer.value="阜新市";
								break;
							case "K": 
								form10.answer.value="辽阳市";
								break;
							case "L": 
								form10.answer.value="盘锦市";
								break;
							case "M": 
								form10.answer.value="铁岭市";
								break;
							case "N": 
								form10.answer.value="朝阳市";
								break;
							case "P": 
								form10.answer.value="锦西市";
								break;
							default:
								form10.answer.value="没有该车牌号码所在区域的信息";
								break; 
						}
					break;
				case "黑":
					switch(city)
						{
							case "A": 
								form10.answer.value="哈尔滨市";
								break;
							case "B": 
								form10.answer.value="齐齐哈尔市";
								break;
							case "C": 
								form10.answer.value="牡丹江市";
								break;
							case "D": 
								form10.answer.value="佳木斯市";
								break;
							case "E": 
								form10.answer.value="大庆市";
								break;
							case "F": 
								form10.answer.value="伊春市";
								break;
							case "G": 
								form10.answer.value="鸡西市";
								break;
							case "J": 
								form10.answer.value="双鸭山市";
								break;
							case "K": 
								form10.answer.value="七台河市";
								break;
							case "L": 
								form10.answer.value="松花江行署";
								break;
      						case "M": 
								form10.answer.value="绥化行署";
								break;
							case "N": 	
								form10.answer.value="黑河地区行署";
								break;
							case "P": 
								form10.answer.value="大兴安岭地区行署";
								break;
						 	case "R": 
								form10.answer.value="农场总局";
								break;
							default:
								form10.answer.value="没有该车牌号码所在区域的信息";
								break; 	
						}
						break;
					case "吉":
						switch(city)
							{
								case "A":  
									form10.answer.value="长春市";
									break;
								case "B":  
									form10.answer.value="吉林市";
									break;
							  	case "C":  
									form10.answer.value="四平市";
									break;
							  	case "D":  
									form10.answer.value="辽源市";
									break;
							  	case "E":  
									form10.answer.value="通化市";
									break;
							  	case "F":  
									form10.answer.value="浑江市";
									break;
							  	case "G":  
									form10.answer.value="白城行署";
									break;
							  	case "H":  
									form10.answer.value="延边州";
									break;
								default:
									form10.answer.value="没有该车牌号码所在区域的信息";
									break;
							}
						break;	
					default:
						form10.answer.value="没有该车牌号码所在区域的信息";
						break;
			}
	}