/// @description 
	var hpX = 8;
	var hpY = 8;
	var hpWidth = 120;
	var hpHeight = 6;
	
	if (instance_exists(objSkeleton)) {
		drawHp = lerp(drawHp, objSkeleton.hp, 0.2);
	} else {
		drawHp = lerp(drawHp, 0, 0.2);
	}
	
	hpPercent = drawHp / drawMaxHp;

	draw_rectangle_color(hpX, hpY, hpX + (hpWidth * hpPercent), hpY + hpHeight, c_white, c_white, c_white, c_white, false);
	
	draw_line_width_color(hpX - 1, hpY - 1, hpX + hpWidth, hpY - 1, 1.5, c_black, c_black);
	draw_line_width_color(hpX - 1, hpY + hpHeight, hpX + hpWidth, hpY + hpHeight, 1.5, c_black, c_black);
	
	draw_line_width_color(hpX, hpY - 0.5, hpX, hpY + hpHeight, 1.5, c_black, c_black);
	draw_line_width_color(hpX + hpWidth - 0.7, hpY - 0.5, hpX + hpWidth - 0.7, hpY + hpHeight, 1.5, c_black, c_black);
	
	if (instance_exists(objSkeleton)) {
		var text = "Kills: " + string(objSkeleton.kills);
		var textWidth = string_width(text);
		var textHeight = string_height(text);
		var statsBarIniX = 0; //wtf
		
		draw_rectangle_color(8, 16, 8 + textWidth + 4, 16, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
		draw_text(12, 20, text);
	}
	