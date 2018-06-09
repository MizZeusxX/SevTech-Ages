#priority -2

import crafttweaker.item.IIngredient;

import import mods.sevtweaks.stager.Stage;

var stageZero as Stage = STAGES.zero;

/*
var modIDs as string[] = [
];

for id in modIDs {
	for item in loadedMods[id].items {
		mods.ItemStages.addItemStage(STAGE, item);
	}
}
*/

var stageZeroItems as IIngredient[] = [
	<ore:blockCharcoal>,
	<ore:foodSalt>,
	<ore:blockSalt>,

	<astikoor:cargocart>,
	<astikoor:plowcart>,
	<astikoor:wheel>,
	<emberroot:owl_egg>,
	<immcraft:bookshelf>,
	<immcraft:cupboard>,
	<immcraft:shelf>,
	<immersiveengineering:material:4>,
	<immersiveengineering:seed>,
	<primalchests:primal_chest>,
	<primalchests:primal_chest_advanced>,
	<progressiontweaks:broken_spear_shaft>,
	<progressiontweaks:broken_spear_tip>,
	<progressiontweaks:flat_bread>,
	<progressiontweaks:unfired_clay_bowl>,
	<spartanshields:shield_basic_stone>,
	<spartanshields:shield_basic_wood>,
	<trumpetskeleton:trumpet>,
	<wopper:wopper>,

	//AbyssalCraft
	<abyssalcraft:antibeef>,
	<abyssalcraft:antibone>,
	<abyssalcraft:antichicken>,
	<abyssalcraft:anticorbone>,
	<abyssalcraft:anticorflesh>,
	<abyssalcraft:antiflesh>,
	<abyssalcraft:antipork>,
	<abyssalcraft:antispidereye>,
	<abyssalcraft:cobblestone>,
	<abyssalcraft:corbone>,
	<abyssalcraft:corflesh>,
	<abyssalcraft:darkbrickslab1>,
	<abyssalcraft:darkbrickslab2>,
	<abyssalcraft:darkcobbleslab1>,
	<abyssalcraft:darkcobbleslab2>,
	<abyssalcraft:darkstone_brick:1>,
	<abyssalcraft:darkstone_brick:2>,
	<abyssalcraft:darkstone_brick>,
	<abyssalcraft:darkstoneslab1>,
	<abyssalcraft:darkstoneslab2>,
	<abyssalcraft:daxe>,
	<abyssalcraft:dghead>,
	<abyssalcraft:dltleaves>,
	<abyssalcraft:dltlog>,
	<abyssalcraft:dltplank>,
	<abyssalcraft:dltsapling>,
	<abyssalcraft:dltslab1>,
	<abyssalcraft:dltslab2>,
	<abyssalcraft:dpick>,
	<abyssalcraft:dscwall>,
	<abyssalcraft:dshovel>,
	<abyssalcraft:dsword>,
	<abyssalcraft:energycollector>,
	<abyssalcraft:energycontainer>,
	<abyssalcraft:energyrelay>,
	<abyssalcraft:ohead>,
	<abyssalcraft:phead>,
	<abyssalcraft:ritualaltar:6>,
	<abyssalcraft:ritualaltar>,
	<abyssalcraft:ritualpedestal>,
	<abyssalcraft:shadowfragment>,
	<abyssalcraft:shadowgem>,
	<abyssalcraft:shadowshard>,
	<abyssalcraft:shoggothbiomass>,
	<abyssalcraft:shoggothblock>,
	<abyssalcraft:shoggothflesh>,
	<abyssalcraft:stone:7>,
	<abyssalcraft:stonetablet>.withTag({Cursed: 1 as byte}),
	<abyssalcraft:stonetablet>.withTag({ItemInventory: [], PotEnergy: 0.0 as float}),
	<abyssalcraft:stonetablet>,
	<abyssalcraft:tieredenergycollector>,
	<abyssalcraft:tieredenergycontainer>,
	<abyssalcraft:tieredenergypedestal>,
	<abyssalcraft:whead>,

	//Ferdinand's Flowers
	<ferdinandsflowers:block_cff_dark:*>,
	<ferdinandsflowers:block_cff_desert:*>,
	<ferdinandsflowers:block_cff_doubles:*>,
	<ferdinandsflowers:block_cff_doublesb:*>,
	<ferdinandsflowers:block_cff_doublesc:*>,
	<ferdinandsflowers:block_cff_doublesd:*>,
	<ferdinandsflowers:block_cff_flowers:*>,
	<ferdinandsflowers:block_cff_flowersb:*>,
	<ferdinandsflowers:block_cff_flowersc:*>,
	<ferdinandsflowers:block_cff_flowersd:*>,
	<ferdinandsflowers:block_cff_ouch:*>,

	//Mortars
	<advancedmortars:mortar:1>,
	<advancedmortars:mortar>,

	//Minecraft
	<minecraft:beetroot_seeds>,
	<minecraft:beetroot_soup>,
	<minecraft:black_glazed_terracotta>,
	<minecraft:blue_glazed_terracotta>,
	<minecraft:bowl>,
	<minecraft:bread>,
	<minecraft:brick>,
	<minecraft:brown_glazed_terracotta>,
	<minecraft:brown_mushroom>,
	<minecraft:brown_mushroom_block>,
	<minecraft:coal:1>,
	<minecraft:coal>,
	<minecraft:cobblestone_wall:1>,
	<minecraft:cobblestone_wall>,
	<minecraft:cyan_glazed_terracotta>,
	<minecraft:deadbush>,
	<minecraft:double_plant:1>,
	<minecraft:double_plant:2>,
	<minecraft:double_plant:3>,
	<minecraft:double_plant:4>,
	<minecraft:double_plant:5>,
	<minecraft:double_plant>,
	<minecraft:dye:1>,
	<minecraft:dye:2>,
	<minecraft:dye:3>,
	<minecraft:dye:5>,
	<minecraft:dye:6>,
	<minecraft:dye:7>,
	<minecraft:dye:8>,
	<minecraft:dye:9>,
	<minecraft:dye:10>,
	<minecraft:dye:11>,
	<minecraft:dye:12>,
	<minecraft:dye:13>,
	<minecraft:dye:14>,
	<minecraft:dye:15>,
	<minecraft:experience_bottle>,
	<minecraft:farmland>,
	<minecraft:fermented_spider_eye>,
	<minecraft:firework_charge>,
	<minecraft:grass>,
	<minecraft:grass_path>,
	<minecraft:gray_glazed_terracotta>,
	<minecraft:green_glazed_terracotta>,
	<minecraft:gunpowder>,
	<minecraft:hardened_clay>,
	<minecraft:hay_block>,
	<minecraft:ice>,
	<minecraft:lead>,
	<minecraft:leather>,
	<minecraft:leather_boots>,
	<minecraft:leather_chestplate>,
	<minecraft:leather_helmet>,
	<minecraft:leather_leggings>,
	<minecraft:leaves2:1>,
	<minecraft:leaves2>,
	<minecraft:leaves:1>,
	<minecraft:leaves:2>,
	<minecraft:leaves:3>,
	<minecraft:leaves>,
	<minecraft:light_blue_glazed_terracotta>,
	<minecraft:lime_glazed_terracotta>,
	<minecraft:magenta_glazed_terracotta>,
	<minecraft:melon_seeds>,
	<minecraft:mob_spawner>,
	<minecraft:monster_egg>,
	<minecraft:mossy_cobblestone>,
	<minecraft:mycelium>,
	<minecraft:orange_glazed_terracotta>,
	<minecraft:packed_ice>,
	<minecraft:pink_glazed_terracotta>,
	<minecraft:prismarine:1>,
	<minecraft:prismarine:2>,
	<minecraft:prismarine>,
	<minecraft:prismarine_crystals>,
	<minecraft:prismarine_shard>,
	<minecraft:pumpkin_seeds>,
	<minecraft:purple_glazed_terracotta>,
	<minecraft:rabbit_foot>,
	<minecraft:rabbit_hide>,
	<minecraft:rabbit_stew>,
	<minecraft:red_flower:1>,
	<minecraft:red_flower:2>,
	<minecraft:red_flower:3>,
	<minecraft:red_flower:4>,
	<minecraft:red_flower:5>,
	<minecraft:red_flower:6>,
	<minecraft:red_flower:7>,
	<minecraft:red_flower:8>,
	<minecraft:red_glazed_terracotta>,
	<minecraft:red_mushroom>,
	<minecraft:red_mushroom_block>,
	<minecraft:red_sandstone:1>,
	<minecraft:red_sandstone:2>,
	<minecraft:red_sandstone>,
	<minecraft:reeds>,
	<minecraft:rotten_flesh>,
	<minecraft:saddle>,
	<minecraft:sandstone:1>,
	<minecraft:sandstone:2>,
	<minecraft:sandstone>,
	<minecraft:sea_lantern>,
	<minecraft:sign>,
	<minecraft:silver_glazed_terracotta>,
	<minecraft:skull:2>,
	<minecraft:skull:4>,
	<minecraft:skull>,
	<minecraft:slime>,
	<minecraft:slime_ball>,
	<minecraft:snow_layer>,
	<minecraft:spider_eye>,
	<minecraft:sponge:1>,
	<minecraft:sponge>,
	<minecraft:stained_hardened_clay:1>,
	<minecraft:stained_hardened_clay:2>,
	<minecraft:stained_hardened_clay:3>,
	<minecraft:stained_hardened_clay:4>,
	<minecraft:stained_hardened_clay:5>,
	<minecraft:stained_hardened_clay:6>,
	<minecraft:stained_hardened_clay:7>,
	<minecraft:stained_hardened_clay:8>,
	<minecraft:stained_hardened_clay:9>,
	<minecraft:stained_hardened_clay:10>,
	<minecraft:stained_hardened_clay:11>,
	<minecraft:stained_hardened_clay:12>,
	<minecraft:stained_hardened_clay:13>,
	<minecraft:stained_hardened_clay:14>,
	<minecraft:stained_hardened_clay:15>,
	<minecraft:stained_hardened_clay>,
	<minecraft:stone:2>,
	<minecraft:stone:4>,
	<minecraft:stone:6>,
	<minecraft:stone_axe>,
	<minecraft:stone_pickaxe>,
	<minecraft:stone_shovel>,
	<minecraft:stone_slab2>,
	<minecraft:stone_slab:1>,
	<minecraft:stone_slab:3>,
	<minecraft:stone_slab:7>,
	<minecraft:stone_slab>,
	<minecraft:stone_sword>,
	<minecraft:string>,
	<minecraft:sugar>,
	<minecraft:tallgrass:1>,
	<minecraft:tallgrass:2>,
	<minecraft:vine>,
	<minecraft:web>,
	<minecraft:wheat_seeds>,
	<minecraft:white_glazed_terracotta>,
	<minecraft:wooden_slab:1>,
	<minecraft:wooden_slab:2>,
	<minecraft:wooden_slab:3>,
	<minecraft:wooden_slab:4>,
	<minecraft:wooden_slab:5>,
	<minecraft:wooden_slab>,
	<minecraft:yellow_glazed_terracotta>,

	//Water strainers
	<waterstrainer:strainer_base>,
	<waterstrainer:strainer_survivalist>,
	<waterstrainer:strainer_survivalist_dense>,
	<waterstrainer:net>,
	<waterstrainer:net:1>,
	<waterstrainer:strainer_fisherman>,
	<waterstrainer:worm>,
	<waterstrainer:garden_trowel>,

	//Actually Additions
	<actuallyadditions:block_black_lotus>,
	<actuallyadditions:block_compost>,
	<actuallyadditions:item_canola_seed>,
	<actuallyadditions:item_coffee_beans>,
	<actuallyadditions:item_coffee_seed>,
	<actuallyadditions:item_fertilizer>,
	<actuallyadditions:item_flax_seed>,
	<actuallyadditions:item_food:16>,
	<actuallyadditions:item_food:17>,
	<actuallyadditions:item_misc:1>,
	<actuallyadditions:item_misc:9>,
	<actuallyadditions:item_misc:12>,
	<actuallyadditions:item_misc:13>,
	<actuallyadditions:item_misc:20>,
	<actuallyadditions:item_misc:21>,
	<actuallyadditions:item_misc:22>,
	<actuallyadditions:item_rice_seed>,
	<actuallyadditions:item_worm>,

	//Ceramics
	<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel_unfired:1>,
	<ceramics:clay_soft>,
	<ceramics:unfired_clay:4>,
	<ceramics:unfired_clay:5>,

	//Horsepower
	<horsepower:chopper:*>,
	<horsepower:dough>,
	<horsepower:flour>,
	<horsepower:grindstone>,
	<horsepower:hand_grindstone>,
	<horsepower:press>,

	//Improved Backpacks
	<improvedbackpacks:backpack>.withTag({Color: 0}),
	<improvedbackpacks:backpack>.withTag({Color: 1}),
	<improvedbackpacks:backpack>.withTag({Color: 2}),
	<improvedbackpacks:backpack>.withTag({Color: 3}),
	<improvedbackpacks:backpack>.withTag({Color: 4}),
	<improvedbackpacks:backpack>.withTag({Color: 5}),
	<improvedbackpacks:backpack>.withTag({Color: 6}),
	<improvedbackpacks:backpack>.withTag({Color: 7}),
	<improvedbackpacks:backpack>.withTag({Color: 8}),
	<improvedbackpacks:backpack>.withTag({Color: 9}),
	<improvedbackpacks:backpack>.withTag({Color: 10}),
	<improvedbackpacks:backpack>.withTag({Color: 11}),
	<improvedbackpacks:backpack>.withTag({Color: 12}),
	<improvedbackpacks:backpack>.withTag({Color: 13}),
	<improvedbackpacks:backpack>.withTag({Color: 14}),
	<improvedbackpacks:backpack>.withTag({Color: 15}),
	<improvedbackpacks:backpack>,
	<improvedbackpacks:blank_upgrade>,
	<improvedbackpacks:upgrade:1>,
	<improvedbackpacks:upgrade>,

	//Jarm
	<jarm:acacia_raft>,
	<jarm:birch_raft>,
	<jarm:dark_oak_raft>,
	<jarm:jungle_raft>,
	<jarm:oak_raft>,
	<jarm:spruce_raft>,

	//Tinker's Compliment
	<tcomplement:melter:8>,
	<tcomplement:melter>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:porcelain_melter>,

	//Totemic
	<totemic:bark_stripper>,
	<totemic:buffalo_items:1>,
	<totemic:buffalo_items>,
	<totemic:buffalo_meat>,
	<totemic:cedar_leaves>,
	<totemic:cedar_log>,
	<totemic:cedar_plank>,
	<totemic:cedar_sapling>,
	<totemic:cooked_buffalo_meat>,
	<totemic:drum>,
	<totemic:eagle_bone_whistle>,
	<totemic:eagle_drops:1>,
	<totemic:eagle_drops>,
	<totemic:flute:1>,
	<totemic:flute>,
	<totemic:jingle_dress>,
	<totemic:nether_pipe>,
	<totemic:rattle>,
	<totemic:stripped_cedar_log>,
	<totemic:sub_items:1>,
	<totemic:tipi>,
	<totemic:totem_base:1>,
	<totemic:totem_base:2>,
	<totemic:totem_base:3>,
	<totemic:totem_base:4>,
	<totemic:totem_base:5>,
	<totemic:totem_base:6>,
	<totemic:totem_base>,
	<totemic:totem_pole:1>,
	<totemic:totem_pole:2>,
	<totemic:totem_pole:3>,
	<totemic:totem_pole:4>,
	<totemic:totem_pole:5>,
	<totemic:totem_pole:6>,
	<totemic:totem_pole>,
	<totemic:totem_torch>,
	<totemic:totem_whittling_knife>,
	<totemic:totemic_staff>,
	<totemic:totempedia>,
	<totemic:wind_chime>,

	//Tinkers Construct
	<tconstruct:casting:1>,
	<tconstruct:casting>,
	<tconstruct:dried_clay>,
	<tconstruct:dried_clay_slab>,
	<tconstruct:edible:10>,
	<tconstruct:edible:11>,
	<tconstruct:edible:12>,
	<tconstruct:edible:13>,
	<tconstruct:edible:14>,
	<tconstruct:edible:15>,
	<tconstruct:edible:20>,
	<tconstruct:edible:21>,
	<tconstruct:edible:22>,
	<tconstruct:edible:23>,
	<tconstruct:edible:30>,
	<tconstruct:materials>,
	<tconstruct:punji>,
	<tconstruct:rack:1>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}),
	<tconstruct:rack>.withTag({textureBlock: {id: "minecraft:wooden_slab", Count: 1 as byte, Damage: 0 as short}}),
	<tconstruct:seared:3>,
	<tconstruct:seared:4>,
	<tconstruct:seared_slab:3>,
	<tconstruct:seared_slab:4>,
	<tconstruct:slime>,
	<tconstruct:slime_channel>,
	<tconstruct:slime_congealed>,
	<tconstruct:soil:3>,
	<tconstruct:soil:4>,
	<tconstruct:soil>,
	<tconstruct:stone_ladder>,
	<tconstruct:stone_stick>,

	//Traverse
	<traverse:blue_rock>,
	<traverse:blue_rock_cobblestone>,
	<traverse:blue_rock_cobblestone_slab>,
	<traverse:blue_rock_cobblestone_wall>,
	<traverse:blue_rock_slab>,
	<traverse:brown_autumnal_leaves>,
	<traverse:brown_autumnal_sapling>,
	<traverse:cold_grass>,
	<traverse:dead_grass>,
	<traverse:fir_leaves>,
	<traverse:fir_log>,
	<traverse:fir_planks>,
	<traverse:fir_sapling>,
	<traverse:fir_slab>,
	<traverse:orange_autumnal_leaves>,
	<traverse:orange_autumnal_sapling>,
	<traverse:red_autumnal_leaves>,
	<traverse:red_autumnal_sapling>,
	<traverse:red_rock>,
	<traverse:red_rock_cobblestone>,
	<traverse:red_rock_cobblestone_slab>,
	<traverse:red_rock_cobblestone_wall>,
	<traverse:red_rock_slab>,
	<traverse:yellow_autumnal_leaves>,
	<traverse:yellow_autumnal_sapling>,

	//Animalium
	<animalium:bear_claw>,
	<animalium:bear_claw_paxel>,
	<animalium:bear_meat>,
	<animalium:bear_meat_cooked>,
	<animalium:dog_boots>,
	<animalium:rat_meat>,
	<animalium:rat_meat_cooked>,
	<animalium:wild_dog_pelt>,

	//Primal Tech
	<primal_tech:bone_axe>,
	<primal_tech:bone_knife>,
	<primal_tech:bone_pickaxe>,
	<primal_tech:bone_shard>,
	<primal_tech:bone_shears>,
	<primal_tech:bone_shovel>,
	<primal_tech:bone_sword>,
	<primal_tech:charcoal_block>,
	<primal_tech:charcoal_hopper>,
	<primal_tech:clay_kiln>,
	<primal_tech:flint_block>,
	<primal_tech:flint_edged_disc>,
	<primal_tech:fluid_bladder>,
	<primal_tech:stick_bundle>,
	<primal_tech:stone_grill>,
	<primal_tech:twine>,
	<primal_tech:water_saw>,
	<primal_tech:wooden_hopper>,
	<primal_tech:work_stump_upgraded>,

	//Pickeltweaks
	<pickletweaks:coal_piece:1>,
	<pickletweaks:dye_powder:1>,
	<pickletweaks:dye_powder:2>,
	<pickletweaks:dye_powder:3>,
	<pickletweaks:dye_powder:4>,
	<pickletweaks:dye_powder:5>,
	<pickletweaks:dye_powder:6>,
	<pickletweaks:dye_powder:7>,
	<pickletweaks:dye_powder:8>,
	<pickletweaks:dye_powder:9>,
	<pickletweaks:dye_powder:10>,
	<pickletweaks:dye_powder:11>,
	<pickletweaks:dye_powder:12>,
	<pickletweaks:dye_powder:13>,
	<pickletweaks:dye_powder:14>,
	<pickletweaks:dye_powder:15>,
	<pickletweaks:dye_powder>,

	//Natura
	<natura:bluebells_flower>,
	<natura:clouds>,
	<natura:materials:1>,
	<natura:materials:3>,
	<natura:materials>,
	<natura:overworld_leaves2:1>,
	<natura:overworld_leaves2:2>,
	<natura:overworld_leaves2:3>,
	<natura:overworld_leaves2>,
	<natura:overworld_leaves:1>,
	<natura:overworld_leaves:2>,
	<natura:overworld_leaves:3>,
	<natura:overworld_leaves>,
	<natura:overworld_logs2:1>,
	<natura:overworld_logs2:2>,
	<natura:overworld_logs2:3>,
	<natura:overworld_logs2>,
	<natura:overworld_logs:1>,
	<natura:overworld_logs:2>,
	<natura:overworld_logs:3>,
	<natura:overworld_logs>,
	<natura:overworld_planks:1>,
	<natura:overworld_planks:2>,
	<natura:overworld_planks:3>,
	<natura:overworld_planks:4>,
	<natura:overworld_planks:5>,
	<natura:overworld_planks:6>,
	<natura:overworld_planks:7>,
	<natura:overworld_planks:8>,
	<natura:overworld_planks>,
	<natura:overworld_sapling2:1>,
	<natura:overworld_sapling2:2>,
	<natura:overworld_sapling2:3>,
	<natura:overworld_sapling2>,
	<natura:overworld_sapling:1>,
	<natura:overworld_sapling:2>,
	<natura:overworld_sapling:3>,
	<natura:overworld_sapling>,
	<natura:overworld_seeds:1>,
	<natura:overworld_seeds>,
	<natura:overworld_slab2:1>,
	<natura:overworld_slab2:2>,
	<natura:overworld_slab2:3>,
	<natura:overworld_slab2>,
	<natura:overworld_slab:1>,
	<natura:overworld_slab:2>,
	<natura:overworld_slab:3>,
	<natura:overworld_slab:4>,
	<natura:overworld_slab>,
	<natura:redwood_leaves>,
	<natura:redwood_logs:1>,
	<natura:redwood_logs:2>,
	<natura:redwood_logs>,
	<natura:redwood_sapling>,
	<natura:saguaro_fruit_item>,

	//Rustic
	<rustic:aloe_vera>,
	<rustic:apple_seeds>,
	<rustic:bee>,
	<rustic:beeswax>,
	<rustic:blood_orchid>,
	<rustic:chamomile>,
	<rustic:chili_pepper>,
	<rustic:chili_pepper_seeds>,
	<rustic:cloudsbluff>,
	<rustic:cohosh>,
	<rustic:core_root>,
	<rustic:deathstalk_mushroom>,
	<rustic:ginseng>,
	<rustic:grape_stem>,
	<rustic:grapes>,
	<rustic:honeycomb>,
	<rustic:horsetail>,
	<rustic:ironberries>,
	<rustic:ironwood_slab_item>,
	<rustic:leaves:1>,
	<rustic:leaves>,
	<rustic:leaves_apple>,
	<rustic:marsh_mallow>,
	<rustic:mooncap_mushroom>,
	<rustic:olive_slab_item>,
	<rustic:olives>,
	<rustic:painted_wood_black>,
	<rustic:painted_wood_blue>,
	<rustic:painted_wood_brown>,
	<rustic:painted_wood_cyan>,
	<rustic:painted_wood_gray>,
	<rustic:painted_wood_green>,
	<rustic:painted_wood_light_blue>,
	<rustic:painted_wood_lime>,
	<rustic:painted_wood_magenta>,
	<rustic:painted_wood_orange>,
	<rustic:painted_wood_pink>,
	<rustic:painted_wood_purple>,
	<rustic:painted_wood_red>,
	<rustic:painted_wood_silver>,
	<rustic:painted_wood_white>,
	<rustic:painted_wood_yellow>,
	<rustic:planks:1>,
	<rustic:planks>,
	<rustic:tallow>,
	<rustic:tomato>,
	<rustic:tomato_seeds>,
	<rustic:wind_thistle>,

	//Primal Core
	<primal:aconite>,
	<primal:aconite_petal>,
	<primal:aconite_sprig>,
	<primal:animal_fur>,
	<primal:armor_wolf_body>,
	<primal:armor_wolf_feet>,
	<primal:armor_wolf_head>,
	<primal:armor_wolf_legs>,
	<primal:ash_common>,
	<primal:ash_ironwood>,
	<primal:ash_yew>,
	<primal:bark_acacia>,
	<primal:bark_bigoak>,
	<primal:bark_birch>,
	<primal:bark_ironwood>,
	<primal:bark_jungle>,
	<primal:bark_oak>,
	<primal:bark_spruce>,
	<primal:bark_yew>,
	<primal:barrel:1>,
	<primal:barrel:2>,
	<primal:barrel:3>,
	<primal:barrel:4>,
	<primal:barrel:5>,
	<primal:barrel:6>,
	<primal:barrel:7>,
	<primal:barrel:8>,
	<primal:barrel:9>,
	<primal:barrel>,
	<primal:barrel_acacia_lid>,
	<primal:barrel_birch_lid>,
	<primal:barrel_corypha_lid>,
	<primal:barrel_dark_oak_lid>,
	<primal:barrel_ironwood_lid>,
	<primal:barrel_jungle_lid>,
	<primal:barrel_lacquer_lid>,
	<primal:barrel_oak_lid>,
	<primal:barrel_spruce_lid>,
	<primal:barrel_yew_lid>,
	<primal:bat_meat_cooked>,
	<primal:bat_meat_dried>,
	<primal:bat_meat_raw>,
	<primal:bat_meat_rotten>,
	<primal:bear_fat>,
	<primal:bear_meat_cooked>,
	<primal:bear_meat_dried>,
	<primal:bear_meat_raw>,
	<primal:blue_stone:1>,
	<primal:blue_stone:2>,
	<primal:blue_stone:3>,
	<primal:blue_stone:4>,
	<primal:blue_stone:5>,
	<primal:blue_stone:6>,
	<primal:blue_stone>,
	<primal:carbonate_stone:1>,
	<primal:carbonate_stone:2>,
	<primal:carbonate_stone:3>,
	<primal:carbonate_stone:4>,
	<primal:carbonate_stone:5>,
	<primal:carbonate_stone:6>,
	<primal:cheese_white>,
	<primal:chum>,
	<primal:ciniscotta_block>,
	<primal:common_stone:1>,
	<primal:common_stone:2>,
	<primal:common_stone:3>,
	<primal:common_stone:4>,
	<primal:common_stone:5>,
	<primal:common_stone:6>,
	<primal:common_stone>,
	<primal:corn_bread>,
	<primal:corn_cob>,
	<primal:corn_cob_cooked>,
	<primal:corn_ground>,
	<primal:corn_seeds>,
	<primal:corn_stalk>,
	<primal:corn_stalk_dry>,
	<primal:corn_stalk_wet>,
	<primal:daucus_murn_fronds>,
	<primal:daucus_murn_root>,
	<primal:daucus_murn_root_cooked>,
	<primal:earthwax_clump>,
	<primal:ferro_stone:1>,
	<primal:ferro_stone:2>,
	<primal:ferro_stone:3>,
	<primal:ferro_stone:4>,
	<primal:ferro_stone:5>,
	<primal:ferro_stone:6>,
	<primal:ferro_stone>,
	<primal:fish_clown_dried>,
	<primal:fish_cod_dried>,
	<primal:fish_puffer_dried>,
	<primal:fish_salmon_dried>,
	<primal:fish_trap:1>.withTag({type: "spruce"}),
	<primal:fish_trap:2>.withTag({type: "birch"}),
	<primal:fish_trap:3>.withTag({type: "jungle"}),
	<primal:fish_trap:4>.withTag({type: "acacia"}),
	<primal:fish_trap:5>.withTag({type: "dark_oak"}),
	<primal:fish_trap:6>.withTag({type: "ironwood"}),
	<primal:fish_trap:7>.withTag({type: "yew"}),
	<primal:fish_trap:8>.withTag({type: "lacquer"}),
	<primal:fish_trap:9>.withTag({type: "corypha"}),
	<primal:fish_trap>.withTag({type: "oak"}),
	<primal:flint_axe>,
	<primal:flint_point>,
	<primal:flint_saw>,
	<primal:flint_shears>,
	<primal:flint_shovel>,
	<primal:gator_meat_cooked>,
	<primal:gator_meat_raw>,
	<primal:hide_dried>,
	<primal:hide_raw>,
	<primal:hide_salted>,
	<primal:hide_tanned>,
	<primal:horse_meat_cooked>,
	<primal:horse_meat_dried>,
	<primal:horse_meat_raw>,
	<primal:ladder_block_andesite>,
	<primal:ladder_block_cobblestone>,
	<primal:ladder_block_cobblestone_mossy>,
	<primal:ladder_block_diorite>,
	<primal:ladder_block_granite>,
	<primal:ladder_block_smoothandesite>,
	<primal:ladder_block_smoothdiorite>,
	<primal:ladder_block_smoothgranite>,
	<primal:ladder_block_smoothstone>,
	<primal:lard>,
	<primal:leather_boiled>,
	<primal:leather_cordage>,
	<primal:leather_strip>,
	<primal:leaves:1>,
	<primal:leaves>,
	<primal:llama_meat_charqui>,
	<primal:llama_meat_cooked>,
	<primal:llama_meat_raw>,
	<primal:loam_block>,
	<primal:logs:1>,
	<primal:logs>,
	<primal:logs_stripped:1>,
	<primal:logs_stripped:2>,
	<primal:logs_stripped:3>,
	<primal:logs_stripped:4>,
	<primal:logs_stripped:5>,
	<primal:logs_stripped:6>,
	<primal:logs_stripped:7>,
	<primal:logs_stripped>,
	<primal:muck>,
	<primal:mud_clump>,
	<primal:mud_dried:1>,
	<primal:mud_dried:2>,
	<primal:mud_dried:3>,
	<primal:mud_dried:4>,
	<primal:mud_dried:5>,
	<primal:mud_dried:6>,
	<primal:mud_dried:7>,
	<primal:mud_dried>,
	<primal:mud_wet>,
	<primal:night_stone:1>,
	<primal:night_stone:2>,
	<primal:night_stone:3>,
	<primal:night_stone:4>,
	<primal:night_stone:5>,
	<primal:night_stone:6>,
	<primal:night_stone>,
	<primal:ore_salt>,
	<primal:ortho_stone:1>,
	<primal:ortho_stone:2>,
	<primal:ortho_stone:3>,
	<primal:ortho_stone:4>,
	<primal:ortho_stone:5>,
	<primal:ortho_stone:6>,
	<primal:ortho_stone>,
	<primal:pelt_animal>,
	<primal:pelt_animal_large>,
	<primal:pelt_bear_black>,
	<primal:pelt_bear_brown>,
	<primal:pelt_bear_polar>,
	<primal:pelt_cow>,
	<primal:pelt_dog>,
	<primal:pelt_donkey>,
	<primal:pelt_gator>,
	<primal:pelt_horse>,
	<primal:pelt_llama>,
	<primal:pelt_mooshroom>,
	<primal:pelt_mule>,
	<primal:pelt_ovis>,
	<primal:pelt_pig>,
	<primal:pelt_shark>,
	<primal:pelt_sheep>,
	<primal:pelt_wolf>,
	<primal:pigman_hide_dried>,
	<primal:pigman_hide_raw>,
	<primal:pigman_hide_spoiled>,
	<primal:pigman_hide_tanned>,
	<primal:pigman_leather>,
	<primal:planks:1>,
	<primal:planks>,
	<primal:plant_cloth>,
	<primal:plant_papyrus>,
	<primal:potato_rotten>,
	<primal:pumpkin_piece>,
	<primal:rush>,
	<primal:rush_seeds>,
	<primal:rush_stems>,
	<primal:rush_tips>,
	<primal:rush_tips_bloom>,
	<primal:salo>,
	<primal:salt_dust_netjry>,
	<primal:salt_dust_rock>,
	<primal:salt_dust_void>,
	<primal:salt_netjry_block>,
	<primal:sapling:1>,
	<primal:sapling>,
	<primal:sarsen_stone:1>,
	<primal:sarsen_stone:2>,
	<primal:sarsen_stone:3>,
	<primal:sarsen_stone:4>,
	<primal:sarsen_stone:5>,
	<primal:sarsen_stone:6>,
	<primal:sarsen_stone>,
	<primal:schist_blue_stone:1>,
	<primal:schist_blue_stone:2>,
	<primal:schist_blue_stone:3>,
	<primal:schist_blue_stone:4>,
	<primal:schist_blue_stone:5>,
	<primal:schist_blue_stone:6>,
	<primal:schist_blue_stone>,
	<primal:schist_green_stone:1>,
	<primal:schist_green_stone:2>,
	<primal:schist_green_stone:3>,
	<primal:schist_green_stone:4>,
	<primal:schist_green_stone:5>,
	<primal:schist_green_stone:6>,
	<primal:schist_green_stone>,
	<primal:shark_fin>,
	<primal:shark_meat_cooked>,
	<primal:shark_meat_dried>,
	<primal:shark_meat_raw>,
	<primal:shark_tooth>,
	<primal:slab_ironwood>,
	<primal:slab_lacquer>,
	<primal:slab_mud>,
	<primal:slab_yew>,
	<primal:slat_acacia>,
	<primal:slat_bigoak>,
	<primal:slat_birch>,
	<primal:slat_corypha>,
	<primal:slat_iron>,
	<primal:slat_ironwood>,
	<primal:slat_jungle>,
	<primal:slat_lacquer>,
	<primal:slat_oak>,
	<primal:slat_spruce>,
	<primal:slat_yew>,
	<primal:stairs_dirt>,
	<primal:strangle_weed>,
	<primal:suet>,
	<primal:tall_grass_growing>,
	<primal:tannin_ground>,
	<primal:terraclay_block>,
	<primal:terraclay_clump>,
	<primal:terracotta_block:1>,
	<primal:terracotta_block:2>,
	<primal:terracotta_block:3>,
	<primal:terracotta_block:4>,
	<primal:terracotta_block:5>,
	<primal:terracotta_block:6>,
	<primal:terracotta_block:7>,
	<primal:terracotta_block>,
	<primal:terracotta_brick>,
	<primal:thatch>,
	<primal:thatch_nether>,
	<primal:thatch_wet>,
	<primal:thatching_dry>,
	<primal:thatching_wet>,
	<primal:thin_slab_acacia>,
	<primal:thin_slab_bigoak>,
	<primal:thin_slab_birch>,
	<primal:thin_slab_ironwood>,
	<primal:thin_slab_jungle>,
	<primal:thin_slab_lacquer>,
	<primal:thin_slab_oak>,
	<primal:thin_slab_spruce>,
	<primal:thin_slab_thatch>,
	<primal:thin_slab_yew>,
	<primal:wall:1>,
	<primal:wall:2>,
	<primal:wall:3>,
	<primal:wall:4>,
	<primal:wall:5>,
	<primal:wall:6>,
	<primal:wall:8>,
	<primal:wall:9>,
	<primal:wall:10>,
	<primal:wall:14>,
	<primal:wall>,
	<primal:wax_residue>,
	<primal:wheat_ground>,
	<primal:wolf_head_item>,
	<primal:wolf_meat_cooked>,
	<primal:wolf_meat_dried>,
	<primal:wolf_meat_raw>,
	<primal:yew_aril_seedless>,
	<primal:yew_aril>,
	<primal:yew_seed>,
	<primal:yew_stick>,

	//Quark
	<quark:prismarine_bricks_slab>,
	<quark:prismarine_dark_slab>,
	<quark:prismarine_rough_wall>,
	<quark:red_sandstone_wall>,
	<quark:sandstone_wall>,
	<quark:stone_andesite_slab>,
	<quark:stone_andesite_wall>,
	<quark:stone_diorite_slab>,
	<quark:stone_diorite_wall>,
	<quark:stone_granite_slab>,
	<quark:stone_granite_wall>,
	<quark:stone_wall>,
	<quark:witch_hat>,

	//Better With mods
	<betterwithaddons:bag:17>,
	<betterwithaddons:bundle:3>,
	<betterwithaddons:bundle:4>,
	<betterwithaddons:bundle:5>,
	<betterwithaddons:bundle:6>,
	<betterwithaddons:bundle:7>,
	<betterwithaddons:bundle:8>,
	<betterwithaddons:bundle>,
	<betterwithaddons:congealed:1>,
	<betterwithaddons:congealed:2>,
	<betterwithaddons:congealed:3>,
	<betterwithaddons:congealed:4>,
	<betterwithaddons:congealed>,
	<betterwithaddons:food_amanita_baked>,
	<betterwithaddons:food_beetroot_baked>,
	<betterwithaddons:food_bowl_rice>,
	<betterwithaddons:food_carrot_baked>,
	<betterwithaddons:food_cooked_rice>,
	<betterwithaddons:food_fugu_sac>,
	<betterwithaddons:food_ground_meat>,
	<betterwithaddons:food_mulberry>,
	<betterwithaddons:food_mushroom_baked>,
	<betterwithaddons:food_pie_amanita>,
	<betterwithaddons:food_pie_meat>,
	<betterwithaddons:food_pie_melon>,
	<betterwithaddons:food_pie_mushroom>,
	<betterwithaddons:food_pufferfish_cooked>,
	<betterwithaddons:food_pufferfish_prepared>,
	<betterwithaddons:food_sashimi>,
	<betterwithaddons:japanmat:1>,
	<betterwithaddons:japanmat:2>,
	<betterwithaddons:japanmat:3>,
	<betterwithaddons:japanmat:4>,
	<betterwithaddons:japanmat:5>,
	<betterwithaddons:japanmat>,
	<betterwithaddons:leaves_mulberry>,
	<betterwithaddons:leaves_sakura>,
	<betterwithaddons:log_mulberry>,
	<betterwithaddons:log_sakura>,
	<betterwithaddons:planks_mulberry>,
	<betterwithaddons:planks_sakura>,
	<betterwithaddons:salt>,
	<betterwithaddons:sapling_mulberry>,
	<betterwithaddons:sapling_sakura>,
	<betterwithaddons:tatami>,
	<betterwithaddons:tweakmat>,
	<betterwithaddons:wood_lamp>,
	<betterwithaddons:wool:1>,
	<betterwithaddons:wool:2>,
	<betterwithaddons:wool:3>,
	<betterwithaddons:wool:4>,
	<betterwithaddons:wool:5>,
	<betterwithaddons:wool:6>,
	<betterwithaddons:wool:7>,
	<betterwithaddons:wool:8>,
	<betterwithaddons:wool:9>,
	<betterwithaddons:wool:10>,
	<betterwithaddons:wool:11>,
	<betterwithaddons:wool:12>,
	<betterwithaddons:wool:13>,
	<betterwithaddons:wool:14>,
	<betterwithaddons:wool:15>,
	<betterwithaddons:wool>,
	<betterwithmods:aesthetic:6>,
	<betterwithmods:aesthetic:7>,
	<betterwithmods:beef_dinner>,
	<betterwithmods:beef_potatoes>,
	<betterwithmods:breeding_harness>,
	<betterwithmods:cooked_egg>,
	<betterwithmods:cooked_kebab>,
	<betterwithmods:cooked_omelet>,
	<betterwithmods:cooked_wolf_chop>,
	<betterwithmods:creeper_oyster>,
	<betterwithmods:dirt_pile>,
	<betterwithmods:dirt_slab:1>,
	<betterwithmods:dirt_slab:2>,
	<betterwithmods:dirt_slab>,
	<betterwithmods:gravel_pile>,
	<betterwithmods:ham_and_eggs>,
	<betterwithmods:hand_crank>,
	<betterwithmods:leather_tanned_boots>,
	<betterwithmods:leather_tanned_chest>,
	<betterwithmods:leather_tanned_helmet>,
	<betterwithmods:leather_tanned_pants>,
	<betterwithmods:manual>,
	<betterwithmods:material:2>,
	<betterwithmods:material:3>,
	<betterwithmods:material:4>,
	<betterwithmods:material:9>,
	<betterwithmods:material:18>,
	<betterwithmods:material:26>,
	<betterwithmods:material:37>,
	<betterwithmods:material:44>,
	<betterwithmods:material:52>,
	<betterwithmods:material:53>,
	<betterwithmods:material:54>,
	<betterwithmods:material>,
	<betterwithmods:pork_dinner>,
	<betterwithmods:raw_egg>,
	<betterwithmods:raw_kebab>,
	<betterwithmods:raw_omelet>,
	<betterwithmods:raw_pastry:3>,
	<betterwithmods:red_sand_pile>,
	<betterwithmods:sand_pile>,
	<betterwithmods:shaft>,
	<betterwithmods:single_machine>,
	<betterwithmods:stake>,
	<betterwithmods:tasty_sandwich>,
	<betterwithmods:vine_trap>,
	<betterwithmods:wolf_chop>,
	<betterwithmods:wicker>,

	<mekanism:salt>,

	//Nature's Compass
	<naturescompass:naturescompass>
];

stageZero.addIngredients(stageZeroItems, false);
