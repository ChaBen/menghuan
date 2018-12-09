
-- 定义 NPC 表 : NPC 表是个 lua table, 名称要与脚本名称相同
Npc00700 = {							-- 孙小红
	npc_id = 700,						-- NPC ID
	name = GetNpcName(700),				-- NPC 名称
										-- NPC 会派出的任务表
}

-- Npc00019 对话方法，bProcess 为脚本处理阶段
function Npc00700:Talk(bProcess) 
  local QSlv = player:GetSkillLv(355)
  local LYlv = player:GetSkillLv(365)
  local MXlv = player:GetSkillLv(356)
  local DZlv = player:GetSkillLv(388)
  local CFlv = player:GetSkillLv(390)
  local LJlv = player:GetSkillLv(392)
  local QSMoney = 5000 * QSlv * 2 * 1
  local QSEXP = QSMoney * 8
  local LYMoney = 5000 * LYlv * 2 * 0.6
  local LYEXP = LYMoney * 8
  local MXMoney = 5000 * MXlv * 2 * 0.9
  local MXEXP = MXMoney * 8  
  local DZMoney = 5000 * DZlv * 2 
  local DZEXP = DZMoney * 8
  local CFMoney = 5000 * CFlv * 2 * 0.8
  local CFEXP = CFMoney * 8
  local LJMoney = 5000 * LJlv * 2 * 0.8
  local LJEXP = LJMoney * 8
  local LV = player:GetLevel()
  NpcAsk("如果您是一位无帮派人士,也可以在我这里不消耗帮贡来学习。但最高只能提升至60级,但会消耗大量经验、金钱、和人气哦。")
  SetAnswer(1,"我是来学习的")
  SetAnswer(3,"随便看看")
  WaitAnswer(3)
  if GetAnswer() == 1 then
    NpcAsk("需要学习什么技能?")
    SetAnswer(1,"强身术")
    SetAnswer(2,"炼药术")
    SetAnswer(3,"冥想术")
    SetAnswer(4,"打造技巧")
    SetAnswer(5,"缝纫技巧")
    SetAnswer(6,"炼金技巧")
    SetAnswer(13,"离开")
    WaitAnswer(13)
    if GetAnswer() == 1 then
      NpcAsk(string.format("学习强身术需要#P%s#W银两,#P%s#W经验,你确定要学习吗?",QSMoney,QSEXP))
      SetAnswer(1,"学习") 
      SetAnswer(2,"算了") 
      WaitAnswer(2)
      if GetAnswer() == 1 and bProcess then
        script:SetSaying(true)
        if QSlv >= LV then
          NpcSay("强身术等级最高不能超过自身等级")
          return
        end
		if player:GetSkillLv(355)>=60 then 
      NpcSay("强身术本仙只能授教60级，再高等级请到帮派中学习")
      return
		end 
        if player:GetMoney() < QSMoney then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W两银子",QSMoney))
          return
        end
        if player:GetExp() < QSEXP then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W经验",QSEXP))
          return
        end
        if player:HasSkill(355) then
          player:ChangeSkillLv(355,1)
          player:ChangeMoney(-QSMoney)
          player:ChangeExp(-QSEXP)
          NpcSay("学习成功")
        else  
          player:AddSkill(355)
          player:ChangeMoney(-QSMoney)
          player:ChangeExp(-QSEXP)
          NpcSay("学习成功")
        end
      end
    end
    if GetAnswer() == 2 then
      NpcAsk(string.format("学习炼药术需要#P%s#W银两,#P%s#W经验,你确定要学习吗?",LYMoney,LYEXP))
      SetAnswer(1,"学习") 
      SetAnswer(2,"算了") 
      WaitAnswer(2)
      if GetAnswer() == 1 and bProcess then
        script:SetSaying(true)
        if LYlv >= LV then
          NpcSay("炼药术等级最高不能超过自身等级")
          return
        end
		if player:GetSkillLv(365)>=60 then 
		 NpcSay("中医药理本仙只能授教60级，再高等级请到帮派中学习")
          return
		end 
        if player:GetMoney() < LYMoney then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W两银子",LYMoney))
          return
        end
        if player:GetExp() < LYEXP then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W经验",LYEXP))
          return
        end
        if player:HasSkill(365) then
          player:ChangeSkillLv(365,1)
          player:ChangeMoney(-LYMoney)
          player:ChangeExp(-LYEXP)
          NpcSay("学习成功")
        else  
          player:AddSkill(365)
          player:ChangeMoney(-LYMoney)
          player:ChangeExp(-LYEXP)
          NpcSay("学习成功")
        end
      end
   end
     if GetAnswer() == 3 then
      NpcAsk(string.format("学习冥想术需要#P%s#W银两,#P%s#W经验,你确定要学习吗?",MXMoney,MXEXP))
      SetAnswer(1,"学习") 
      SetAnswer(2,"算了") 
      WaitAnswer(2)  
      if GetAnswer() == 1 and bProcess then
        script:SetSaying(true)
        if MXlv >= LV then
          NpcSay("冥想术等级最高不能超过自身等级")
          return
        end
		if player:GetSkillLv(365)>=60 then 
		 NpcSay("冥想术本仙只能授教60级，再高等级请到帮派中学习")
          return
		end 
        if player:GetMoney() < MXMoney then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W两银子",MXMoney))
          return
        end
        if player:GetExp() < MXEXP then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W经验",MXEXP))
          return
        end
        if player:HasSkill(356) then
          player:ChangeSkillLv(356,1)
          player:ChangeMoney(-MXMoney)
          player:ChangeExp(-MXEXP)
          NpcSay("学习成功")
        else  
          player:AddSkill(356)
          player:ChangeMoney(-MXMoney)
          player:ChangeExp(-MXEXP)
          NpcSay("学习成功")
        end
      end
    end	
      if GetAnswer() == 4 then
      NpcAsk(string.format("学习打造技巧需要#P%s#W银两,#P%s#W经验,你确定要学习吗?",DZMoney,DZEXP))
      SetAnswer(1,"学习") 
      SetAnswer(2,"算了") 
      WaitAnswer(2)
      if GetAnswer() == 1 and bProcess then
        script:SetSaying(true)
        if DZlv >= LV then
          NpcSay("打造技巧等级最高不能超过自身等级")
          return
        end
		if player:GetSkillLv(388)>=60 then 
		 NpcSay("打造技巧本仙只能授教60级，再高等级请到帮派中学习")
          return
		end 
        if player:GetMoney() < DZMoney then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W两银子",DZMoney))
          return
        end
        if player:GetExp() < DZEXP then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W经验",DZEXP))
          return
        end
        if player:HasSkill(388) then
          player:ChangeSkillLv(388,1)
          player:ChangeMoney(-DZMoney)
          player:ChangeExp(-DZEXP)
          NpcSay("学习成功")
        else  
          player:AddSkill(388)
          player:ChangeMoney(-DZMoney)
          player:ChangeExp(-DZEXP)
          NpcSay("学习成功")
        end
      end
    end
	    if GetAnswer() == 5 then
      NpcAsk(string.format("学习缝纫技巧需要#P%s#W银两,#P%s#W经验,你确定要学习吗?",CFMoney,CFEXP))
      SetAnswer(1,"学习") 
      SetAnswer(2,"算了") 
      WaitAnswer(2)
      if GetAnswer() == 1 and bProcess then
        script:SetSaying(true)
        if CFlv >= LV then
          NpcSay("缝纫技巧等级最高不能超过自身等级")
          return
        end
		if player:GetSkillLv(390)>=60 then 
		 NpcSay("缝纫技巧本仙只能授教60级，再高等级请到帮派中学习")
          return
		end 
        if player:GetMoney() < CFMoney then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W两银子",CFMoney))
          return
        end
        if player:GetExp() < CFEXP then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W经验",CFEXP))
          return
        end
        if player:HasSkill(390) then
          player:ChangeSkillLv(390,1)
          player:ChangeMoney(-CFMoney)
          player:ChangeExp(-CFEXP)
          NpcSay("学习成功")
        else  
          player:AddSkill(390)
          player:ChangeMoney(-CFMoney)
          player:ChangeExp(-CFEXP)
          NpcSay("学习成功")
        end
      end
    end
	    if GetAnswer() == 6 then
      NpcAsk(string.format("学习炼金技巧需要#P%s#W银两,#P%s#W经验,你确定要学习吗?",LJMoney,LJEXP))
      SetAnswer(1,"学习") 
      SetAnswer(2,"算了") 
      WaitAnswer(2)
      if GetAnswer() == 1 and bProcess then
        script:SetSaying(true)
        if LJlv >= LV then
          NpcSay("炼金技巧等级最高不能超过自身等级")
          return
        end
		if player:GetSkillLv(392)>=60 then 
		 NpcSay("炼金技巧本仙只能授教60级，再高等级请到帮派中学习")
          return
		end 
        if player:GetMoney() < LJMoney then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W两银子",LJMoney))
          return
        end
        if player:GetExp() < LJEXP then
          NpcSay(string.format("本次学习技能需要消耗#P%s#W经验",LJEXP))
          return
        end
        if player:HasSkill(392) then
          player:ChangeSkillLv(392,1)
          player:ChangeMoney(-LJMoney)
          player:ChangeExp(-LJEXP)
          NpcSay("学习成功")
        else  
          player:AddSkill(392)
          player:ChangeMoney(-LJMoney)
          player:ChangeExp(-LJEXP)
          NpcSay("学习成功")
        end
      end
    end
 end
end    
      










 
 
 
 
 
 
 
 
 
 
 






-- 必需在脚本最后将 NPC 表加入系统中
AddNpcTable(Npc00700)
