--HULA
Quest63528 = {
  quest_id = 63528, -- quest ID
  type_id = 63528, -- type ID
  type_name = "幻境任务",
  name = "瓶颈突破",
  descript = "打败了#O魔神·蚩尤#W，然后在找#A吴刚#W进行下一步操作吧。",
  tips = "#P魔神·蚩尤#W”难度非常大,此任务推荐与#A队员#W组队进行击杀。",
  require = {
      flag = { { 63528, 1 } }
  },
  target_mob = { { mob_id = 579, count = 1 } },
  end_npc = { npc_id = 470, map_id = 79 },
  feature = { "nocancel" },
}