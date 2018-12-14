400503	冰雪女王[中等]	Bat400503.lua
400511	阿修罗[中等]	Bat400511.lua
400522	冥雷[中等]	Bat400522.lua

local item1 = {
  { itemid = 20759, itemname = "强化百炼精铁 140级" },
  { itemid = 410624, itemname = "魔之兜兜" },
}
local item2 = {
  { itemid = 402850, itemname = "乾元丹" },
  { itemid = 410650, itemname = "妖火狼元神内丹" },
  { itemid = 410646, itemname = "颜如玉元神内丹" },
  { itemid = 410647, itemname = "垂云叟元神内丹" },
  { itemid = 410648, itemname = "鬼猫元神内丹" },
  { itemid = 410649, itemname = "穷奇元神内丹" },
}
local item3 = {
  { itemid = 20083, itemname = "制造指南书 枪 140级" },
  { itemid = 20099, itemname = "制造指南书 扇 140级" },
  { itemid = 20115, itemname = "制造指南书 魔棒 140级" },
  { itemid = 20131, itemname = "制造指南书 爪刺 140级" },
  { itemid = 20147, itemname = "制造指南书 锤 140级" },
  { itemid = 20163, itemname = "制造指南书 斧头 140级" },
  { itemid = 20179, itemname = "制造指南书 飘带 140级" },
  { itemid = 20195, itemname = "制造指南书 双环 140级" },
  { itemid = 20211, itemname = "制造指南书 剑 140级" },
  { itemid = 20227, itemname = "制造指南书 刀 140级" },
  { itemid = 20243, itemname = "制造指南书 双剑 140级" },
  { itemid = 60039, itemname = "制造指南书 腰带 140级" },
  { itemid = 60055, itemname = "制造指南书 项链 140级" },
  { itemid = 60072, itemname = "制造指南书 女衣 140级" },
  { itemid = 60088, itemname = "制造指南书 男头 140级" },
  { itemid = 60104, itemname = "制造指南书 女头 140级" },
  { itemid = 60120, itemname = "制造指南书 鞋子 140级" },
}
local item4 = {
  { itemid = 410651, itemname = "元神续命金丹" },
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