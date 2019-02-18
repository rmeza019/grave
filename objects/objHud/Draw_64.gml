/// @description 
	var hpX = 8;
	var hpY = 8;
	var hpWidth = 120;
	var hpHeight = 6;
	
	if (instance_exists(objSkeleton)) {
		drawHp = objSkeleton.hp;
		drawMaxHp = objSkeleton.max_hp;
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
		
		var padding1 = 4;
		var padding2 = 2;
		var padding3 = 0.5;
		
		var killsFrameIniX = 8;
		var killsFrameIniY = 18;
		var killsFrameEndX = killsFrameIniX + textWidth + padding1;
		var killsFrameEndY = killsFrameIniY + textHeight;
		
		draw_rectangle_color(killsFrameIniX, killsFrameIniY, killsFrameEndX, killsFrameEndY, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
		draw_text(killsFrameIniX + padding2 + padding3, killsFrameIniY + padding2, text);
		
		text = "Level: " + string(objSkeleton.level);
		textWidth = string_width(text);
		textHeight = string_height(text);
		
		var lvlFrameIniX = killsFrameEndX + padding1;
		var lvlFrameIniY = 18;
		var lvlFrameEndX = lvlFrameIniX + textWidth + padding1;
		var lvlFrameEndY = lvlFrameIniY + textHeight;
		
		draw_rectangle_color(lvlFrameIniX, lvlFrameIniY, lvlFrameEndX, lvlFrameEndY, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
		draw_text(lvlFrameIniX + padding2 + padding3, lvlFrameIniY + padding2, text);
	}
	