400501	一代书生[困难]	Bat400501.lua
400513	画中仙[困难]	Bat400513.lua
400514	范式之魂[困难]	Bat400514.lua
400521	九天玄女[困难]	Bat400521.lua
400525	九天妖女[困难]	Bat400525.lua
400526	垂钓者[困难]	Bat400526.lua
400527	颜如玉[困难]	Bat400527.lua

local item1 = {
  { itemid = 20762, itemname = "强化百炼精铁 150级" },
  { itemid = 410625, itemname = "妖之兜兜" },
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
  { itemid = 58003, itemname = "超级装备盒子" },
  { itemid = 20084, itemname = "制造指南书 枪 150级" },
  { itemid = 20100, itemname = "制造指南书 扇 150级" },
  { itemid = 20116, itemname = "制造指南书 魔棒 150级" },
  { itemid = 20132, itemname = "制造指南书 爪刺 150级" },
  { itemid = 20148, itemname = "制造指南书 锤 150级" },
  { itemid = 20164, itemname = "制造指南书 斧头 150级" },
  { itemid = 20180, itemname = "制造指南书 飘带 150级" },
  { itemid = 20196, itemname = "制造指南书 双环 150级" },
  { itemid = 20212, itemname = "制造指南书 剑 150级" },
  { itemid = 20228, itemname = "制造指南书 刀 150级" },
  { itemid = 20244, itemname = "制造指南书 双剑 150级" },
  { itemid = 60040, itemname = "制造指南书 腰带 150级" },
  { itemid = 60056, itemname = "制造指南书 项链 150级" },
  { itemid = 60073, itemname = "制造指南书 女衣 150级" },
  { itemid = 60089, itemname = "制造指南书 男头 150级" },
  { itemid = 60105, itemname = "制造指南书 女头 150级" },
  { itemid = 60121, itemname = "制造指南书 鞋子 150级" },
}
local item4 = {
  { itemid = 410651, itemname = "元神续命金丹" },
  { itemid = 410607, itemname = "百炼精铁【一阶】"  },
  { itemid = 410613, itemname = "制造指南书【一阶】" },
}

function ObtainItem(item)
  item = RandTable(item)
  owner:GetItems():AddItem(item.itemid, 1)
  owner:GetScript():ShowError(string.format("\#W获得%s",item.itemname))
  script:Rumor(string.format(" %s #O在挑战#Y炽天使[一般]#O时抛出一个#Y[%s]#O！", owner:GetCharNameLink(), item.itemname), false)
end

local i = math.random(1,100)
local a = math.random(1,100)

if i < 30 then
  if a < 40 then
    ObtainItem(item1)
  elseif a < 70 then
    ObtainItem(item2)
  elseif a < 95 then
    ObtainItem(item3)
  elseif a <= 100 then
    ObtainItem(item4)
  end
end