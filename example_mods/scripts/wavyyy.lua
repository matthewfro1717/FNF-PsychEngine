local shadname = "GlitchEffect"
function onCreatePost()
        initLuaShader(shadname)
    
    makeLuaSprite("grapshad")
    makeGraphic("grapshad", screenWidth, screenHeight)
        setSpriteShader("grapshad", shadname)

        addHaxeLibrary("ShaderFilter", "openfl.filters")
        runHaxeCode([[game.camOther.setFilters([new ShaderFilter(game.getLuaObject("grapshad").shader)]);]]);
end
function wavyadd(tag,xwave,ywave,xtime,ytime) -- idk how to make this public so its being empty :skull:
end
function wavytime(xwave,ywave,xtime,ytime)
	setShaderFloat('grapshad','xwave',xwave)
	setShaderFloat('grapshad','ywave',ywave)
	setShaderFloat('grapshad','xtime',xtime)
	setShaderFloat('grapshad','ytime',ytime)
end
function onUpdatePost(elapsed)
    setShaderFloat("grapshad", "iTime", os.clock())
end