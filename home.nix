



{ config, pkgs, lib, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nick";
  home.homeDirectory = "/home/nick";


  wayland.windowManager.hyprland.enable = true;
#------------------HYPRLAND CONFIG -> JSON to lua---------------------------
  wayland.windowManager.hyprland = {
    configType = "lua";
    settings = {
	mainMod._var = "SUPER";
	terminal._var = "kitty";
	filemanager._var = "dolphin";
    run._var = "rofi -show run";
	
	monitor = [
	{ 
	output = "";
	mode = "preffered";
	position = "auto";
	scale = "1";
	}
	];
	
      	config = {	
	misc = {
	force_default_wallpaper = 1;
	disable_hyprland_logo = false;
	};

       	general = {
       	gaps_in = 5;
       	gaps_out = 20;
        border_size = 2;
        };
	input = {
	kb_layout = "br";
	kb_variant = "thinkpad";
	follow_mouse = 1;

	};
	
	decoration = {
		rounding = 10;
		rounding_power = 2;
		active_opacity = 1.0;
		inactive_opacity = 0.99;
		shadow = {
			enabled = true;
			range = 4;
			render_power = 3;
			color = "0xee1a1a1a";
		};
		blur = {
			enabled = true;
			size = 3;
			passes = 2;
			vibrancy = 0.1696;
		};
	};
      };
      bind = [
        {
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. "+ RETURN"'')
	(lib.generators.mkLuaInline ''hl.dsp.exec_cmd(terminal)'')
          ];
        }
	{
	_args = [
 	   
	(lib.generators.mkLuaInline ''mainMod .. "+ D"'')
	(lib.generators.mkLuaInline ''hl.dsp.exec_cmd(run)'')
		];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + Q"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.close()'')
		];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + F"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.fullscreen()'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + E"'')
	(lib.generators.mkLuaInline ''hl.dsp.exec_cmd(filemanager)'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + SPACE"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.float({ action = "toggle"})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + left"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({ direction = "left" })'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + right"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({ direction = "right" })'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + up"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({ direction = "up" })'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + down"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({ direction = "down" })'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + mouse:272"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.drag()'')
	(lib.generators.mkLuaInline '' { mouse = true }'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .." + mouse:273"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.resize()'')
	(lib.generators.mkLuaInline ''{ mouse = true }'')
	];
	}
#	-------------------------------- WORKSPACES------------------------
	{
	
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 1"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 1})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 1"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 1})'')
	];
	}
	{
	_args  = [
	(lib.generators.mkLuaInline ''mainMod .. " + 2"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 2})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 2"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 2})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 3"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 3})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 3"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 3})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 4"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 4})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 4"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 4})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 5"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 5})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 5"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 5})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 6"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 6})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 6"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 6})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 7"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 7})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 7"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 7})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 8"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 8})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 8"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 8})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 9"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 9})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 9"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 9})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + 0"'')
	(lib.generators.mkLuaInline ''hl.dsp.focus({workspace = 10})'')
	];
	}
	{
	_args = [
	(lib.generators.mkLuaInline ''mainMod .. " + SHIFT + 0"'')
	(lib.generators.mkLuaInline ''hl.dsp.window.move({workspace = 10})'')
	];
	}
#       ----------------------------- WORKSPACES DONE------------------------
	];
	window_rule = {
	name = "kitty-opacity";
	match = { class = "kitty"; };
	opacity = 0.8;
	};
    };
  };
#----------------------------------------------------------------------------
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

