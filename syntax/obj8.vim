" Vim syntax file
" Language: X-Plane's .obj format
" Maintainer: Ted Greene
" Latest Revision: 18 April 2017

if exists("b:current_syntax")
	!cmd echo "Hi:"
	finish
endif

echom "Our syntax highlight code will go here."

let b:current_syntax = "obj8"

syntax match comment "#.*"
"9. Data records
syntax keyword obj8DataRecords VT VLINE VLIGHT IDX IDX10
hi link obj8DataRecords Keyword

"10. Command records

"10.1 Geometry commands
syntax keyword obj8GeometryCommands TRIS LINES LIGHTS LIGHT_NAMED LIGHT_CUSTOM LIGHT_PARAM LIGHT_SPILL_CUSTOM 
hi link obj8GeometryCommands Keyword

"10.2 Action Commands

"10.3 State Commands
syntax keyword obj8StateCommands ATTR_LOD ATTR_ambient_rgb ATTR_specular_rgb ATTR_emission_rgb ATTR_shiny_rat ATTR_reset ATTR_poly_os ATTR_cockpit ATTR_no_cockpit ATTR_cockpit_region ATTR_light_level ATTR_light_level_reset ATTR_shadow_blend ATTR_draped ATTR_no_draped
hi link obj8StateCommands Keyword

"10.4 Animation Commands
syntax keyword obj8AnimationCommandsBeginEnd ANIM_begin ANIM_end ANIM_rotate_begin ANIM_rotate_end ANIM_trans_begin ANIM_trans_end anim_KEYFRAME_LOOP
hi link obj8AnimationCommandsBeginEnd Function

syntax keyword obj8AnimationCommands ANIM_rotate ANIM_trans ANIM_hide ANIM_show ANIM_rotate_key ANIM_trans_key 
hi link obj8AnimationCommands Keyword

syntax match obj8DataRef "\s\w\+/\p\+"
hi link obj8DataRef Special


