local stuff = {
disabled = false,
anims = {
['singleft'] = {-30, 'x'},
['singdown'] = {30, 'y'},
['singup'] = {-30, 'y'},
['singright'] = {30, 'x'},
['idle-loop'] = {0, 'x'},
['singleft-loop'] = {-30, 'x'},
['singdown-loop'] = {30, 'y'},
['singup-loop'] = {-30, 'y'},
['singright-loop'] = {30, 'x'},
},
check = {
[true] = 'boyfriend',
[false] = 'dad',
},
}
function onUpdatePost(elapsed)
if not stuff.disabled then
local anim_info = stuff.anims[getProperty(stuff.check[mustHitSection]..'.animation.curAnim.name'):lower()]
if anim_info then
local var = ((version:find('0.7') and 'camGame.scroll' or 'camFollowPos')..'.')..(anim_info[2] or 'x')
local currentPos = getProperty(var);
setProperty(var,
lerp(currentPos,
currentPos + ((anim_info[1] or 0) * (1 / getProperty('camGame.zoom'))),
elapsed * getProperty('cameraSpeed') * playbackRate
)
);
end
end
end
function lerp(a, b, c) return a + (b - a) * c end