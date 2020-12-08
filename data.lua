load()

-- ------------------------------------------------------------------------------------------------
-- ------ 初始化并创建物品 ------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

SIGen
.Init( SIEXQS )
.NewGroup( "others" )
.NewSubGroup( "gift-items" )

for i = 1 , SIEXQS.chestCount , 1 do
	SIGen.NewContainerLogic( "wooden-chest-"..i , nil , SITypes.logisticMode.passive )
	.AddFlags{ SIFlags.entityFlags.hidden }
	.SetProperties( 1 , 1 , 10000 , nil , nil , nil , 99 )
	.SetCorpse( "wooden-chest-remnants" , "nuke-explosion" )
	.SetRender_notInNetworkIcon( false )
end

SIGen.Finish()