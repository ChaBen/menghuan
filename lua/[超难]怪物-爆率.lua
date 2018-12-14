400510	九天琴魔[超难]	Bat400510.lua
400519	飞龙在天[超难]	Bat400519.lua
400520	大天使[超难]	Bat400520.lua

local item1 = {
  { itemid = 20762, itemname = "强化百炼精铁 150级" },
  { itemid = 410625, itemname = "妖之兜兜" },
  { itemid = 64000, itemname = "【制造指南书 枪 等级 160】" },
  { itemid = 64001, itemname = "【制造指南书 扇 等级 160】" },
  { itemid = 64002, itemname = "【制造指南书 魔棒 等级 160】" },
  { itemid = 64003, itemname = "【制造指南书 爪刺 等级 160】" },
  { itemid = 64004, itemname = "【制造指南书 锤 等级 160】" },
  { itemid = 64005, itemname = "【制造指南书 斧头 等级 160】" },
  { itemid = 64006, itemname = "【制造指南书 飘带 等级 160】" },
  { itemid = 64007, itemname = "【制造指南书 双环 等级 160】" },
  { itemid = 64008, itemname = "【制造指南书 剑 等级 160】" },
  { itemid = 64009, itemname = "【制造指南书 刀 等级 160】" },
  { itemid = 64010, itemname = "【制造指南书 双剑 等级 160】" },
}
local item2 = {
  { itemid = 402850, itemname = "乾元丹" },
  { itemid = 410640, itemname = "关羽元神内丹" },
  { itemid = 410641, itemname = "范式元神内丹" },
  { itemid = 410642, itemname = "书生元神内丹" },
  { itemid = 410643, itemname = "画仙元神内丹" },
  { itemid = 410644, itemname = "冰雪元神内丹" },
  { itemid = 410645, itemname = "金雄元神内丹" },
}
local item3 = {
  { itemid = 410651, itemname = "元神续命金丹" },
  { itemid = 410607, itemname = "百炼精铁【一阶】"  },
  { itemid = 410613, itemname = "制造指南书【一阶】" },
}
local item4 = {
  { itemid = 410000, itemname = "【吴氏断魂一阶弑皇】" },
  { itemid = 410001, itemname = "【吴氏断魂一阶星瀚】" },
  { itemid = 410002, itemname = "【吴氏断魂一阶醍醐】" },
  { itemid = 410003, itemname = "【吴氏断魂一阶离钩】" },
  { itemid = 410004, itemname = "【吴氏断魂一阶裂天】" },
  { itemid = 410005, itemname = "【吴氏断魂一阶碎寂】" },
  { itemid = 410006, itemname = "【吴氏断魂一阶朝夕】" },
  { itemid = 410007, itemname = "【吴氏断魂一阶九霄】" },
  { itemid = 410008, itemname = "【吴氏断魂一阶擒龙】" },
  { itemid = 410009, itemname = "【吴氏断魂一阶鸣鸿】" },
  { itemid = 410010, itemname = "【吴氏断魂一阶浮犀】" },
  { itemid = 83100, itemname = "【吴氏断魂一阶火盔】" },
  { itemid = 83101, itemname = "【吴氏断魂一阶凤冕】" },
  { itemid = 83102, itemname = "【吴氏断魂一阶气甲】" },
  { itemid = 83103, itemname = "【吴氏断魂一阶月衣】" },
  { itemid = 83104, itemname = "【吴氏断魂一阶芒带】" },
  { itemid = 83105, itemname = "【吴氏断魂一阶光履】" },
  { itemid = 83106, itemname = "【吴氏断魂一阶星坠】" },
}

function ObtainItem(item)
  item = RandTable(item)
  owner:GetItems():AddItem(item.itemid, 1)
  owner:GetScript():ShowError(string.format("\#W获得%s",item.itemname))
  script:Rumor(string.format(" %s #O在挑战#Y炽天使[一般]#O时抛出一个#Y[%s]#O！", owner:GetCharNameLink(), item.itemname), false)
end

local i = math.random(1,100)
local a = math.random(1,100)

if i < 40 then
  ObtainItem(item1)
elseif a < 80 then
  ObtainItem(item2)
elseif a <= 100 then
  if a < 8 then
    ObtainItem(item3)
  else
    ObtainItem(item4)
  end
end