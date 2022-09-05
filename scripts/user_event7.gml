/*

/////////////////////////////////
//  Palutena's Guidance Codec  //
/////////////////////////////////

-----------------------------------

//// EXPRESSIONS ////

 * 0: Pit
 *    -  0: normal
 *    -  1: sus
 *    -  2: hurt
 *    -  3: happy
 *    -  4: shocked
 *    -  5: pensive
 *    -  6: think
 * 1: Palu
 *    -  0: normal
 *    -  1: judge
 *    -  2: happy
 *    -  3: surprised
 *    -  4: think
 * 2: Viridi
 *    -  0: normal
 *    -  1: smirk
 *    -  2: surprised
 *    -  3: command (hand palm)
 *    -  4: command (hand point)

-----------------------------------

//// SFX ////

 * 0: Pit
 *    -  0: chuckle
 *    -  1: gah
 *    -  2: grr
 *    -  3: hurt
 *    -  4: ow
 *    -  5: pensive
 *    -  6: question
 *    -  7: think
 *    -  8: uhh
 *    -  9: woah
 *    -  10: exhale
 * 1: Palu
 *    -  0: err
 *    -  1: hmm
 *    -  2: hmm 2
 *    -  3: oh
 *    -  4: umm
 *    -  5: chuckle
 *    -  6: gasp
 *    -  7: uh oh
 * 2: Viridi
 *    -  0: augh
 *    -  1: chuckle
 *    -  2: frustrated
 *    -  3: hey
 *    -  4: hrm
 *    -  5: huh
 *    -  6: laugh
 *    -  7: question
 *    -  8: ugh
 *    -  9: urgh

-----------------------------------
*/
 
initStuff();

var SPK_PIT = 0		//Pit
var SPK_PALU = 1	//Palutena	
var SPK_VIR = 2		//Viridi

/*
//////////////////////
//// INSTRUCTIONS ////
//////////////////////

----------------------------------------------------

//// INIT.GML ////

Add the following to the bottom of your init.gml file:

user_event(7)

(can change user event number to a different number as long as you change this file name number as well)

----------------------------------------------------

//// THIS FILE ////

Use the following function to add a new page to the codec:

initCodecPage(speaker, expression, sfx, text);

- speaker: one of the SPK_ vars.
- expression: see above 'EXPRESSIONS' list for each speaker's expression sprite.
- sfx: see above 'SFX' list for each speaker's sfx sound, plays at the start of each page.
- text: type what you want the speaker to say.

**EXAMPLE CODEC**

initCodecPage(SPK_PIT,	3,	10,	"Floor ice-cream gives you health!");
initCodecPage(SPK_PALU,	1,	1,	"Hmm, is there anything you WONT eat?");
initCodecPage(SPK_PIT,	0,	8,	"Being an angel requires eating a lot of food.");
initCodecPage(SPK_VIR,	1,	6,	"Yeah, but eating off the floor is just gross.");

----------------------------------------------------
*/

///////////////////////////////////////////
//// Insert codec functions below here ////
///////////////////////////////////////////

initCodecPage(SPK_PIT,	3,	10,	"Honk!");
initCodecPage(SPK_VIR,	0,	9,	"Ugh, are you ALWAYS this upbeat?");
initCodecPage(SPK_PALU,	2,	0,	"Well he does behave like a chicken alot of the time...");

///////////////////////////////////////////
//// Insert codec functions above here ////
///////////////////////////////////////////

return;

#define initStuff()

with oPlayer if "ruber_pit" in self {
	load_codecs = true;
}

pit_codecs = [];

initCodec();

#define initCodec()

var new_cdc = {
	pages: []
};

array_push(pit_codecs, new_cdc);

#define initCodecPage(cd_speaker, cd_expression, cd_sfx, cd_text)

var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	sfx: cd_sfx,
	text: cd_text
};

array_push(pit_codecs[array_length(pit_codecs) - 1].pages, new_page);