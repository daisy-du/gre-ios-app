//
//  ContentView.swift
//  Daisy's GRE
//
//  Created by Yu Du on 7/27/20.
//  Copyright © 2020 daisydu. All rights reserved.
//

import SwiftUI
import AVKit

let word_list1: Array<(String, String, String)> = [
    ("pedantic","adj. ostentatiously learned", "卖弄知识的"),
    ("obeisance", "n. respect for someone or something", "尊敬; 敬意"),
    ("draconian", "adj. exceedingly harsh or very severe", "极其严苛的"),
    ("panegyric", "n. a formal eulogistic composition intended as a public compliment", "赞文; 赞美"),
    ("inadvertent", "adj. marked by or resulting from carelessness; negligent", "粗心的； 不留意的"),
    ("incontrovertible", "adj. impossible to dispute", "不容质疑的"),
    ("discursive", "adj. rambling; adj. marked by analytical reasoning", "说话杂乱无章的; 理性的"),
    ("derogate", "v. to cause to seem inferior", "贬低"),
    ("overbearing", "adj. often trying to control the behavior of other people in an annoying or unwanted way", "霸道的"),
    ("extraneous", "adj. not important; adj. coming from the outside", "不重要的; 外部的"),
    ("rehash", "v. to bring forth again in another form without significant alteration", "（没有实际改变地）重提"),
    ("perfunctory", "adj. acting with indifference, showing little interest or care", "不走心的; 敷衍的"),
    ("specious", "adj. falsely appearing to be right", "似是而非的"),
    ("intrinsic", "adj. belonging to the essential nature of a thing", "核心的; 内在的"),
    ("intransigent", "adj. completely unwilling to change", "不妥协的; 固执的"),
    ("inveterate", "adj. always or often happening or existing", "一贯的"),
    ("backhanded", "adj. oblique or indirect", "不直接的"),
    ("affable", "adj. easy and pleasant to speak to", "和蔼可亲的"),
    ("skullduggery", "n. secret or dishonest behavior or activity", "欺骗; 作假"),
    ("disavow", "v. to say that you are not responsible for", "否认"),
    ("capricious", "adj. changing often and quickly", "变化多端的"),
    ("magisterial", "adj. authoritative", "权威的"),
    ("sleek", "adj. straight and smooth in design or shape; adj. stylish and attractive", "光滑的; 时髦的"),
    ("extirpate", "v. to destroy or remove completely", "根除"),
    ("parity", "n. equality", "平等"),
    ("inchoate", "adj. being in a beginning or early stage", "早期的"),
    ("rebuff", "n. a blunt or abrupt repulse or refusal", "粗鲁的回复"),
    ("construe", "v. to understand the meaning of", "理解"),
    ("provincial", "adj. limited in outlook", "眼光狭隘的"),
    ("shackle", "v. to deprive of freedom especially of action by means of restrictions", "阻碍"),
    ("encomium", "n. glowing and warmly enthusiastic praise", "赞美"),
    ("roost", "v. to settle down for rest or sleep", "栖息"),
    ("corroborate", "v. to support with evidence or authority", "提供证据证明"),
    ("proclivity", "n. a strong natural liking for something", "倾向； 偏好"),
    ("conducive", "adj. tending to promote or assist", "有益的"),
    ("vexation", "n. something that worries or annoys you", "烦恼"),
    ("caterwaul", "v. to protest or complain noisily", "喧闹的抗议或抱怨"),
    ("efficacious", "adj. having the power to produce a desired result or effect", "有效果的"),
    ("analgesic", "n. a drug that relieves pain", "止痛药"),
    ("embargo", "n. a government order that limits trade in some way", "贸易禁令"),
    ("fulminate", "v. to utter or send out with denunciation ", "辱骂; 抨击")
]
let word_list2: Array<(String, String, String)> = [
    ("dwindle", "v. to gradually become smaller", "减少; 下降"),
    ("incursion", "n. a hostile entrance into a territory ", "入侵"),
    ("pastiche", "n. a work that imitates the style of previous works", "仿冒品"),
    ("emulate", "v. to strive to equal or excel", "模仿而赶超"),
    ("adduce", "v. to mention as evidence to support an argument", "引用"),
    ("emblematic", "adj. representing something that can't be seen by itself", "象征的; 代表的"),
    ("opprobrium", "n. very strong disapproval or criticism especially by a large number of people", "辱骂"),
    ("emotive", "adj. causing strong emotions for or against something", "有感染力的"),
    ("jar", "v. to make someone feel uneasy; v. to clash or conflict", "使不安; 冲突"),
    ("unfettered", "adj. not controlled or restricted", "不受限制的"),
    ("flummery", "n. meaningless or deceptive language", "假恭维"),
    ("implacable", "adj. opposed to something so angry or determined to be changed", "不能安抚的, 毫不妥协的"),
    ("arduous", "adj. hard to accomplish", "困难的"),
    ("conciliatory", "adj. calming; placatory", "安抚的"),
    ("vindicate", "v. to show someone should not be blamed for a crime etc.", "证明...的清白"),
    ("malady", "n. a disease or illness", "疾病"),
    ("puncture", "v. to make useless or ineffective as if by a puncture", "削弱; 使无效"),
    ("clandestine", "adj. done secretly", "秘密的"),
    ("equivocal", "adj. having two or more possible meanings", "有歧义的"),
    ("putative", "adj. generally believed or assumed to be something", "公认的, 假定的"),
    ("conjecture", "v./n. to form an idea without proof or evidence", "猜测"),
    ("tractable", "adj. easily managed or controlled", "易管理的"),
    ("warble", "v. to sing a melody of low pleasing sounds", "低吟"),
    ("knotty", "adj. difficult or complicated", "复杂的"),
    ("dichotomy", "n. something with seemingly contradictory qualities", "矛盾的事物"),
    ("restive", "adj. stubbornly resisting control; adj. marked by impatience or uneasiness", "不服管理的; 不安的"),
    ("truculent", "adj. easily annoyed or angered and likely to argue", "好争斗的"),
    ("congenial", "adj. very friendly; adj. pleasant; adj. having the same nature, dispositon, or tastes", "友善的; 令人愉悦的; 性格相似的"),
    ("insouciance", "n. a feeling of not worrying about anything", "无忧无虑"),
    ("devastate", "v. to destroy much; v. to cause emotional pain", "严重破坏; 使...痛苦"),
    ("ethos", "n. distinguishing character, sentiment, moral nature or guiding beliefs", "（团体的）气质, 氛围, 信仰等"),
    ("flagrant", "adj. so bad as to be impossible to overlook", "臭名昭著的"),
    ("anachronism", "n. something that is mistakenly placed in a time where it does not belong in a story, movie, etc.", "时代错乱"),
    ("venerate", "v. to feel or show deep respect for", "尊敬"),
    ("insular", "adj. not knowing or interested in new ideas; adj. separated from other people or cultures", "守旧的"),
    ("upheaval", "n. a major change or period of change that causes a lot of conflict, confusion, anger, etc; adj. not changing or stopping", "巨变; 不妥协的"),
    ("mendacious", "adj. not honest", "欺骗的"),
    ("decadent", "adj. having low morals and a great love of pleasure, money, fame, etc; adj. attractive to people of low morals", "堕落的, 颓废的; 低俗的"),
    ("jejune", "adj. not interesting; adj. acting in a silly way", "无聊的; 小丑般的"),
    ("lethargic", "adj. feeling a lack of energy or a lack of interest in doing things", "漠不关心的; 缺乏热情的"),
    ("fungible", "adj. replaceable", "可代替的")
]
let word_list3: Array<(String, String, String)> = [
    ("voluble", "adj. talking a lot in an energetic and rapid way","健谈的"),
    ("sterling", "adj. conforming to the highest standard", "高质量的"),
    ("surmount", "v. to prevail over", "克服; 战胜"),
    ("censure", "n. official strong criticism", "批评"),
    ("peripatetic", "adj. itinerant", "巡游的"),
    ("solicitous","adj. showing great attention or concern to another", "关心的; 殷切的"),
    ("cagey", "adj. not saying anything; adj. wary; adj. very clever", "守口如瓶的; 警惕的; 聪明的"),
    ("parsimony", "n. the quality of being very unwilling to spend money", "吝啬"),
    ("judicious", "adj. having or showing good judgment", "有正确判断力的"),
    ("eclipse", "v. to make something less important; v. to surpass", "使...不重要; 超过"),
    ("exculpate", "v. to prove that someone is not guilty of doing something wrong", "开脱罪责"),
    ("obfuscate", "v. to make something more difficult to understand; v. to darken", "使..困惑; 使..昏暗"),
    ("droll", "adj. having an odd and amusing quality", "古怪的; 搞笑的"),
    ("unwitting", "adj. not aware of what is happening; adj. not intended", "不知情的; 无心的"),
    ("diatribe", "n. an angry and usually long speech that criticizes something", "长篇痛骂"),
    ("promulgate", "v. to spread an idea, belief; v. to make a new law known officially and publicly", "传播; 颁布"),
    ("consilience", "n. the linking together of principles", "一致, 符合"),
    ("ebullient", "adj. lively and enthusiastic", "热情洋溢的"),
    ("bolster", "v. to give support to", "支持"),
    ("exposition", "n. clear explanation; n. a public show", "阐释; 展出"),
    ("coddle", "v. to treat someone with too much care or kindness", "溺爱"),
    ("egalitarian", "adj. aiming for equal wealth, status", "平等的"),
    ("propitiate", "v. to make someone pleased or less angry", "安抚"),
    ("unassuming", "adj. not having or showing a desire to be noticed", "谦虚的, 低调的"),
    ("clamorous", "adj. noisily insistent", "吵吵闹闹的"),
    ("placate", "v. to cause to feel less angry about something", "安抚"),
    ("disinterested", "adj. not influenced by personal feelings, opinions, or concerns", "客观公正的"),
    ("embolden", "v. to make someone more confident", "鼓舞"),
    ("lionize", "v. to treat someone as a very important and famous person", "重视, 尊敬"),
    ("illusory", "adj. based on something that is not true or real; n. a person marked by greed", "虚假的; 贪婪的人"),
    ("felicitous", "adj. very well suited; adj. pleasant", "合适的; 喜悦的"),
    ("surreptitious", "adj. done in a secret way", "秘密的"),
    ("dispassionate", "adj. not influenced or affected by emotions", "客观的"),
    ("canned", "adj. lacking originality; adj. recorded in advance; v. to treat or describe something as less important than it realy is", "千篇一律的; 预先录制的; 弱化"),
    ("feign", "v. to give a false appearance of", "假装"),
    ("opulent", "adj. very expensive; adj. very wealthy", "昂贵的; 富裕的"),
    ("dilatory", "adj. tending or intended to cause delay", "拖延的"),
    ("pernicious", "adj. causing great harm or damage", "有害的"),
    ("convoluted", "adj. very complicated", "复杂的"),
    ("trifling", "adj. having little value or importance", "不重要的"),
    ("compunction", "n. a feeling of guilt or regret", "后悔感")
]
let word_list4: Array<(String, String, String)> = [
    ("tantamount", "adj. equal to something in value, meaning, or effect", "（数量，效果）相当的"),
    ("equanimity", "n. calm emotions", "平静，镇定"),
    ("espouse", "v. to express support for", "支持"),
    ("fractious", "adj. full of anger and disagreement; adj. inclined to make trouble", "愤怒的; 爱惹事的"),
    ("didactic", "adj. designed or intended to teach people something", "说教的"),
    ("stalwart", "adj. loyal and resolute; adj. strong and imposing", "忠诚的; 结实的"),
    ("archaic", "adj. old and no longer used", "过时的"),
    ("palliate", "v. to make the effects less painful or harsh", "减缓"),
    ("predilection", "n. proclivity", "倾向, 偏好"),
    ("illustrious", "adj. distinguished, prominent", "杰出的"),
    ("unconscionable", "adj. not guided by conscience; adj. shockingly unfair", "丧心病狂的; 不公平的"),
    ("callow", "adj. lacking adult sophistication", "幼稚的"),
    ("bemuse", "v. to cause someone to be confused; v. to occupy the attention of", "使..困惑; 吸引"),
    ("episodic", "adj. advocating peace; adj. limited to a duration of an episode; adj. happening at different times",
     "爱好和平的; 暂时的; （时间上）分散的"),
    ("presage", "v. to give or be a sign of", "预言"),
    ("concomitant", "adj. accompanying", "与...同时发生的"),
    ("abstemious", "adj. not eating or drinking too much", "生活节制的"),
    ("querulous", "adj. complaining in an annoyed way", "抱怨的"),
    ("salient", "adj. very important or noticeable", "显眼的"),
    ("culmination", "n. the end or final result of something", "最终结果"),
    ("ollegiality", "n. the cooperative relationship", "共同掌权"),
    ("pensive", "adj. lost in serious or sad thought", "悲伤的思考中"),
    ("penance", "n. reflect to show you are sad or sorry about doing something wrong", "忏悔"),
    ("rile", "v. to make someone angry", "使..生气"),
    ("lambaste", "v. to criticize very harshly", "严厉批评"),
    ("undercut", "v. to make something weaker or less effective", "削弱"),
    ("harrow", "v. to torment or vex", "折磨"),
    ("robust", "adj. capable of performing without failure", "稳定无误的"),
    ("betoken", "v. to be a sign of something", "预示"),
    ("salutary", "adj. producing a beneficial effect", "有益的"),
    ("replete", "adj. having much or plenty of something", "充满的"),
    ("seditious", "adj. disposed to arouse or take part in or guilty of sedition", "煽动叛乱的"),
    ("expatriate", "v. to banish", "驱逐"),
    ("synopsis", "n. a short description of the most important information about something", "概要"),
    ("modicum", "n. a small amount", "少量"),
    ("retrenchment", "n. reduction or curtailment", "削减"),
    ("slippery", "adj. not easy to understand; adj. not reliable", "难懂的; 不可靠的"),
    ("punctilious", "adj. very careful", "谨慎小心的"),
    ("forbidding", "adj. scary; daunting", "可怕的"),
    ("commensurate", "adj. equal or similar to something", "相等的, 相似的"),
    ("stifle", "v. to shackle; v. to kill by depriving of oxygen", "抑制; 使..窒息")
]
let word_list5: Array<(String, String, String)> = [
    ("evanescent", "adj. lasting a very short time", "短暂的"),
    ("free-for-all", "n. an uncontrolled fight", "混战"),
    ("rudimentary", "adj. full of energetic and noisy activity", "忙乱的"),
    ("elude", "v. to escape; v. to fail to understand; v. to fail to achieve", "逃跑; 使..无法理解; 使..无法得到"),
    ("jettison", "v. to reject", "拒绝, 放弃"),
    ("baroque", "adj. characterized by extravagance", "奢华的"),
    ("quixotic", "adj. foolishly impractical; adj. capricious", "不切实际的; 变化多端的"),
    ("tactful", "adj. careful not to offend or upset others", "圆滑的"),
    ("subsidize", "v. to help by paying for the costs", "赞助"),
    ("numinous", "adj. supernatural", "超自然的"),
    ("mawkish", "adj. sad or romantic in an exaggerated way", "恶心做作的"),
    ("invidious", "adj. unpleasant", "令人反感的"),
    ("austere", "adj. simple; adj. serious", "朴素的; 严肃的"),
    ("finicky", "adj. very picky; hard to please", "挑剔的"),
    ("chicanery", "n. deception by artful subterfuge", "诡计"),
    ("ertinacious", "adj. persistent; adj. stubbornly tenacious", "坚持的, 固执的"),
    ("sanguine", "adj. hopeful", "乐观的"),
    ("paucity", "n. a small amount of something", "少量"),
    ("univocal", "adj. having one meaning only", "明确的"),
    ("impertinent", "adj. rude; adj. not pertinent", "粗鲁的; 不相关的"),
    ("apropos", "adj. relevant; prep. with regard to", "合适的; 关于.."),
    ("ingratiate", "v. to gain favor or approval", "讨好"),
    ("concoct", "v. to invent to deceive", "捏造"),
    ("debilitate", "v. to impair the strength of", "使..衰弱"),
    ("acute", "adj. lasting a short time; adj. rapid; adj. important", "短暂的; 重要的"),
    ("decisive", "adj. very clear", "明显的"),
    ("nominal", "adj. existing only in name; adj. very small", "名义上的; 微不足道的"),
    ("divination", "n. prediction", "预言, 占卜"),
    ("virtuosity", "n. great ability by a musician, performer, etc", "精湛的技艺"),
    ("shriek", "v. to make a loud, high-pitched cry", "尖叫"),
    ("ephemeral", "adj. lasting for a short time", "短暂的"),
    ("erudite", "adj. having or showing knowledge", "博学的"),
    ("magnanimous", "adj. generous", "大度的, 慷慨的"),
    ("untether", "v. to free from", "释放, 脱离"),
    ("valediction", "n. an act of bidding farewell", "告别"),
    ("slump", "v. to decrease suddenly", "急速下跌"),
    ("palatable", "adj. having a pleasant taste; adj. pleasant to someone", "美味的; 称心如意的"),
    ("esoteric", "adj. difficult to understand", "难懂的"),
    ("obtrude", "v. to force; v. to intrude", "强迫; 闯入"),
    ("debunk", "v. to show something is not true", "拆穿"),
    ("umbrage", "n. a feeling of being offended", "生气, 不悦")
]
let word_list6: Array<(String, String, String)> = [
    ("assuage", "v. to make something less painful", "安抚"),
    ("expiation", "n. the act of making atonement", "赎罪"),
    ("marginal", "adj. not very important", "不重要的"),
    ("adjuration", "n. a solemn oath; n. an earnest urging or advising", "严肃的请求; 恳求"),
    ("dreary", "adj. causing unhappiness or sad feelings", "令人悲伤的"),
    ("callous", "adj. not feeling or showing any concern", "冷漠的"),
    ("discount", "v. to minimize the importance of", "轻视"),
    ("thwart", "v. to prevent someone from doing something", "阻止"),
    ("raillery", "n. friendly joking about or with somebody", "打趣"),
    ("exasperate", "v. to make very angry", "使..生气"),
    ("feckless", "adj. weak; adj. careless and irresponsible", "无能的; 粗心的"),
    ("stigma", "n. a set of negative and often unfair beliefs", "污点"),
    ("enigmatic", "adj. full of mystery and difficult to understand", "难懂的"),
    ("impugn", "v. to criticize someone for being not honest", "（因人不诚实而）抨击"),
    ("pejorative", "adj. tending to belittle", "轻蔑的"),
    ("blithe", "adj. happy lighthearted; adj. lacking consideration", "轻松的; 轻率的"),
    ("vacuous", "adj. emptied or lacking content; adj. lack of intelligence", "空的; 愚蠢的"),
    ("honorific", "adj. giving honor or respect", "尊敬的"),
    ("excoriate", "v. to censure scathingly", "强烈斥责"),
    ("opaque", "adj. difficult to understand", "难懂的"),
    ("alarmism", "n. unwarranted fears or warning of danger", "危言耸听"),
    ("divisive", "adj. causing a lot of disagreement", "引起争议的"),
    ("torpor", "n. a state of not being active and having very little energy", "麻木, 懒散"),
    ("indolent", "adj. lazy", "懒惰的"),
    ("alacrity", "n. a quick and cheerful readiness to do something", "欣然同意"),
    ("respite", "n. an interval of rest or relief", "暂歇"),
    ("rankle", "v. to cause someone to feel angry", "使..生气"),
    ("congruous", "adj. being in agreement, harmony", "一致的, 适合的"),
    ("gadfly", "n. someone who annoys people by being very critical", "讨人厌的人"),
    ("overwrought", "adj. very excited or upset", "情绪激动且不高兴的"),
    ("malleable", "adj. capable of being altered", "可塑的"),
    ("sanctimonious", "adj. pretending to be morally better", "假装道德高尚的"),
    ("inexorable", "adj. not able to be stopped", "劝说不动的"),
    ("dissemble", "v. to hide true feelings, opinions, etc", "隐藏伪装"),
    ("scintillating", "adj. very clever, amusing, and interesting", "生动有趣的"),
    ("lugubrious", "adj. full of sadness or sorrow", "悲伤的"),
    ("parochial", "adj. limited in range or scope", "狭隘的"),
    ("lament", "v. to express sorrow, regret, or unhappiness", "哀叹"),
    ("encyclopedic", "adj. exhaustive", "（如百科全书般）全面的"),
    ("euphemism", "n. a mild or pleasant word that is used instead of one that is unpleasant or offensive", "委婉语"),
    ("nondescript", "adj. typical and uninteresting", "毫无亮点的")
]
let word_list7: Array<(String, String, String)> = [
    ("churlish", "adj. not polite", "不礼貌的"),
    ("outlandish", "adj. very strange; adj. happening by luck", "奇怪的; 偶然的"),
    ("mercurial", "adj. changing moods quickly and often", "性格多变的"),
    ("fortuitous", "adj. happening by chance; adj. having good luck", "偶然的; 幸运的"),
    ("fathom", "v. to understand the reason for", "理解"),
    ("remuneration", "n. money paid for work done", "酬金"),
    ("contentious", "adj. likely to cause people to argue; adj. willing to argue", "引起争论的; 爱争吵的"),
    ("flabbergast", "v. to shock or surprise", "使..惊讶"),
    ("benighted", "adj. having no knowledge; adj. indiscriminate; adj. lacking sensitivity, taste, or judgement", "无知的; 不区分的; 没有鉴别力的"),
    ("palpable", "adj. sensible; adj. perceptible", "可感知的; 明显的"),
    ("effusive", "adj. expressing a lot of emotion", "表达过多感情的"),
    ("codify", "v. to put things in an orderly form", "整理"),
    ("multifarious", "adj. of many kinds", "各种各样的"),
    ("countenance", "n. approval; v. to accept, support or approve", "赞同"),
    ("prosaic", "adj. everyday or ordinary; adj. dull; adj. characteristic of prose", "普通的; 散文的; 缺乏创意的"),
    ("malfeasance", "n. wrongdoing", "违法行为"),
    ("egregious", "adj. conspicuously bad", "极坏的"),
    ("counterfeit", "adj. made to look like a copy", "以假乱真的"),
    ("contrive", "v. to come up with a clever way", "策划"),
    ("anthropogenic", "adj. caused by humans", "人为的"),
    ("ministration", "n. the act or process of ministering", "帮助"),
    ("banal", "adj. boring or ordinary", "无聊的"),
    ("flippant", "adj. lacking seriousness", "轻率无礼的, 不严肃的"),
    ("invective", "n. harsh or insulting words", "侮辱"),
    ("paltry", "n. very small in amount", "少量"),
    ("miserly", "adj. hating to spend money", "吝啬的"),
    ("polemical", "adj. of or involving strongly critical speech", "好争辩的"),
    ("facile", "adj. easy", "容易的"),
    ("unimpeachable", "adj. not able to be doubted or questioned", "毋庸置疑的"),
    ("tortuous", "adj. complicated, long and confusing", "复杂难懂的"),
    ("perturb", "v. to cause someone to be worried or upset", "使..不安"),
    ("flighty", "adj. capricious; adj. easily excited", "多变的; 易激动的"),
    ("overt", "adj. open to view", "明显的"),
    ("multitudinous", "adj. many", "很多的"),
    ("purport", "n. meaning conveyed, professed; v. to falsely claim", "中心思想; 虚假地声称"),
    ("stilted", "adj. awkward especially because of being too formal", "不自然的"),
    ("harbinger", "n. herald; v. to be a harbinger of", "前兆; 预兆"),
    ("malign", "adj. having vicious ill will", "邪恶的"),
    ("consequential", "adj. significant; adj. self-important", "重要的; 自以为是的"),
    ("perpetuate", "v. to continue", "持续"),
    ("anathema", "n. someone that is very disliked; n. a vehement", "极其讨厌的人; 咒骂")
]
let word_list8: Array<(String, String, String)> = [
    ("countermand", "v. to cancel by giving a new order", "撤销命令"),
    ("mollify", "v. calm down", "安抚"),
    ("methodical", "adj. arranged", "有条理的"),
    ("hortatory", "adj. advisory", "劝告的"),
    ("apprehend", "v. feel fear", "害怕"),
    ("irascible", "adj. becomeing angry easily", "易怒的"),
    ("fastidious", "adj. very careful", "小心谨慎的"),
    ("occlude", "v. to close up or block off", "阻塞"),
    ("laudatory", "adj. expressing praise", "赞美的"),
    ("deprecate", "v. to criticize", "诋毁"),
    ("portend", "v. to be a sign for something that's going to happen", "预示"),
    ("proclaim", "v. to state in public", "宣布"),
    ("somnolent", "adj. very boring to cause a person to fall asleep", "令人昏昏欲睡的"),
    ("precipitate", "v. to cause something to happen quickly; adj. no planning", "加速; 鲁莽的"),
    ("onerous", "adj. difficult and unpleasant", "繁重的"),
    ("comity", "n. friendly social atmosphere", "友好, 和谐"),
    ("douse", "v. to extinguish", "熄灭"),
    ("asseverate", "v. to affirm or declare", "郑重声明"),
    ("sacrosanct", "adj. most sacred or holy", "神圣而不可􏳒􏳓的"),
    ("quiescent", "adj. not active", "􏱰􏳔静止的"),
    ("innocuous", "adj. producing no injury", "无害的"),
    ("relish", "v. to enjoy or take pleasure in (something)", "喜爱"),
    ("trepidation", "n. a nervous or fearful feeling of uncertain agitation", "恐惧"),
    ("synergy", "n. people or businesses work together", "协同作用"),
    ("dampen", "v. to check or diminish the activity or vigor of", "削弱"),
    ("wane", "v. to approach an end", "结束"),
    ("fecund", "adj. fruitful in offspring or vegetation", "多产的; 硕果颇丰的"),
    ("recant", "v. to withdraw or repudiate formally and publicly", "公开否认"),
    ("inure", "v. to habituate to something undesirable", "习惯于"),
    ("mercenary", "adj. serving merely for pay or sordid advantage", "唯利是图的"),
    ("baffle", "v. to confuse (someone) completely", "使..困惑"),
    ("intelligible", "adj. able to be understood", "可以理解的"),
    ("laconic", "adj. using few words in speech or writing", "简洁的"),
    ("paragon", "n. a model of excellence or perfection", "典范"),
    ("sectarian", "adj. limited in character or scope; adj. relating to religious or political sects and the differences between them", "狭隘的; 派系的"),
    ("moribund", "adj. approaching death", "濒临死亡的"),
    ("galvanize", "v. to stimulate or shock with an electric current", "刺激; 激起"),
    ("exiguous", "adj. excessively scanty", "极其缺乏的"),
    ("truism", "n. an undoubted or self-evident truth", "真理"),
    ("valorize", "v. to give or assign a value to, especially a higher value", "高估价"),
    ("meticulous", "adj. very careful about doing something", "谨慎的")
]
let word_list9: Array<(String, String, String)> = [
    ("obviate", "v. to make something no longer necessary; v. to prevent", "免除; 避免"),
    ("audacious", "adj. daring; adj. brazen; adj. marked by originality and nerve", "大胆的; 无礼的; 创新的"),
    ("animadversion", "n. censorious remark", "批判"),
    ("duplicitous", "adj. deceptive", "欺骗的"),
    ("vehement", "adj. showing angry feelings", "情绪激动的"),
    ("antediluvian", "adj. very old", "过时的"),
    ("ponderous", "adj. slow; adj. very dull", "笨重的; 无聊的"),
    ("detract", "v. to diminish the importance", "贬低"),
    ("chagrin", "n. a feeling of being annoyed; v. to vex", "苦恼; 使..烦恼"),
    ("seclusion", "n. the act of keeping others away", "隐居"),
    ("mordant", "adj. expressing harsh criticism", "尖酸刻薄的"),
    ("pugnacious", "adj. showing a readiness or desire to fight or argue", "好争斗的"),
    ("exacerbate", "v. to make something worse", "使..恶化"),
    ("furtive", "adj. done in a quiet and secret way to avoid being noticed", "鬼鬼祟祟的"),
    ("unidimensional", "adj. lacking depth", "肤浅的"),
    ("jaded", "adj. feeling or showing a lack of interest and excitement", "厌倦无聊的"),
    ("archetypal", "n. a perfect example of something", "典型"),
    ("enormous", "adj. exceedingly wicked", "穷凶极恶的"),
    ("defy", "v. to refuse to obey", "不遵守"),
    ("admonish", "v. to give friendly advice; v. to warn", "警告"),
    ("preclude", "v. to prevent", "阻止"),
    ("forswear", "v. to promise to give up", "放弃"),
    ("conspicuous", "adj. very easy to notice; adj. attracting attention", "显眼的, 吸引人的"),
    ("preempt", "v. to prevent; v. to replace; v. to supersede", "阻止; 取代; 抢占"),
    ("recapitulate", "v. to give a brief summary of something", "总结"),
    ("plethora", "n. a very large amount or number", "大量"),
    ("meager", "adj. deficient in 􏰇uality or 􏰇uantity", "不足的, 少的"),
    ("burlesque", "v. to imitate in a humorous or derisive manner", "􏸳通过滑稽模仿而讽刺"),
    ("grouchy", "adj. having a bad temper", "易怒的"),
    ("pliable", "adj. too easily influenced; adj. adjustable", "易受影响的; 能适应的"),
    ("reproach", "v. to express disapproval", "斥责; 批评"),
    ("histrionic", "adj. deliberately affected", "戏剧性的"),
    ("abnegate", "v. to deny; v. to relinquish", "否认"),
    ("avaricious", "adj. excessively acquisitive", "贪婪的"),
    ("heed", "v. to pay attention to", "留心"),
    ("sagacious", "adj. having or showing an ability to understand difficult ideas", "聪明的"),
    ("animus", "n. a strong feeling of dislike or hatred", "厌恶"),
    ("dearth", "n. the state or condition of not having enough of something", "缺乏"),
    ("p􏰂recocious", "adj. exhibiting mature qualities at an unusually early age", "早熟的"),
    ("rep􏰂udiate", "v. to refuse to accept or support", "否认"),
    ("disquisition", "n. a long speech or written report on a subject", "演讲, 报告")
]
let word_list10: Array<(String, String, String)> = [
    ("provisional", "adj. serving for the time being", "临时的"),
    ("circumspect", "adj. prudent", "谨慎的"),
    ("circuitous", "adj. not direct", "兜圈子的"),
    ("propitious", "adj. likely to have good results", "吉利的"),
    ("partisan", "n. a firm adherent to a party, faction, cause, or person", "偏见的"),
    ("scrupulous", "adj. very careful; adj. moral", "谨慎的; 有道德心的"),
    ("monolithic", "adj. constituting a massive undifferentiated and often rigid whole", "庞大僵硬的"),
    ("profligate", "adj. carelessly and foolishly wasting money, materials", "奢侈的"),
    ("unctuous", "adj. revealing or marked by a smug, ingratiating, and false earnestness or spirituality; adj. rich in oil", "虚情假意的"),
    ("shoddy", "adj. poorly done or made", "劣质的"),
    ("verisimilitude", "n. the quality of seeming real", "逼真"),
    ("sycophantic", "adj. fawning, obsequious", "奉承的"),
    ("rigid", "adj. precise", "严格精确的"),
    ("plaintive", "adj. expressing suffering or sadness", "痛苦的"),
    ("detestation", "n. extreme hatred or dislike", "厌恶, 反感"),
    ("tautology", "n. a statement in which you repeat a word, idea, etc., in a way that is not necessary", "赘述"),
    ("leaven", "v. to make (something) less serious and often more exciting", "使生动有趣"),
    ("convulsion", "n. a sudden change or disturbance", "骚乱"),
    ("exorbitant", "adj. going far beyond what is fair, reasonable, or expected", "过度的"),
    ("corollary", "n. something that naturally follows or results from another thing", "推论"),
    ("perforce", "adv. used to say that something is necessary or must be done", "必然地"),
    ("proselytize", "v. to try to persuade people to join a religion, cause, or group", "劝诱"),
    ("urbane", "adj. polite and confident", "礼貌的"),
    ("pecuniary", "adj. relating to or in the form of money", "金钱的"),
    ("panoply", "n. a giant group or collection", "大批, 全副（装备）"),
    ("peremptory", "adj. admitting of no contradiction; adj. characterized by often imperious or arrogant self-assurance", "不容反抗的; 狂妄的"),
    ("rancor", "n. an angry feeling of hatred or dislike", "憎恨"),
    ("epitome", "n. a perfect example", "典型"),
    ("parley", "v. to discuss terms with an enemy", "谈判"),
    ("immolate", "v. to kill or destroy (someone or something) by fire", "用火摧毁"),
    ("lassitude", "n. lack of physical or mental energy", "无精打采"),
    ("demarcate", "v. to set apart", "划清界限"),
    ("evince", "v. to display clearly", "显示"),
    ("adulation", "n. excessive or slavish admiration or flattery", "恭维"),
    ("obsequious", "adj. too eager to help or obey someone important", "谄媚的"),
    ("terse", "adj. brief and direct in a way that may seem rude or unfriendly", "简洁的"),
    ("cachet", "n. an indication of approval carrying great prestige", "声望"),
    ("contrite", "adj. feeling or showing regret for bad behavior", "后悔的"),
    ("aristocracy", "n. government by the best individuals or by a small privileged class", "贵族, 精英统治"),
    ("inimical", "adj. likely to cause damage or have a bad effect", "有害的; 不友好的"),
    ("hallow", "v. to respect greatly; venerate", "尊敬")
]
let word_list11: Array<(String, String, String)> = [
    ("annals", "n. historical records", "历史记载"),
    ("execrate", "v. to dislike or criticize very strongly", "痛斥"),
    ("tug", "v. pull; n. a struggle", "用力拉; 斗争"),
    ("unexampled", "adj. without precedent", "史无前例的"),
    ("atavism", "n. the return of a trait or recurrence", "重现; 返祖现象"),
    ("prepossessing", "adj. appealing or attractive", "有吸引力的"),
    ("perfidious", "adj. not able to be trusted", "不可信赖的"),
    ("jubilation", "n. great happiness or joy", "高兴, 喜悦"),
    ("peregrination", "n. a voyage", "长途旅行"),
    ("malinger", "v. to feign illness to avoid duty or work", "装病来逃避"),
    ("halcyon", "adj. very happy and successful", "岁月静好的, 安宁的"),
    ("nonchalant", "adj. seem aloof; not worried", "漠不关心的"),
    ("prodigal", "adj. characterized by profuse; adj. yielding abundantly", "浪费的; 多产的"),
    ("unilateral", "adj. involving only one group", "单方面的"),
    ("instantiate", "v. to represent by a concrete instance", "举例"),
    ("protean", "adj. displaying great diversity or variety", "多样的"),
    ("pillory", "v. to publicly criticize", "批评"),
    ("plunder", "v. to steal things by force", "掠夺"),
    ("ennui", "n. a lack of spirit, enthusiasm", "无聊"),
    ("tectonic", "adj. having a strong and widespread impact; adj. relating to construction",
     "建筑的; 地壳构造的; 影响广泛的"),
    ("invertebrate", "adj. lacking in strength or vitality", "软弱无力的"),
    ("forage", "v. to search for food or supplies", "寻找食物"),
    ("hagiography", "n. a book about someone's life", "传记"),
    ("delineate", "v. to mark the outline of; v. to describe", "描绘轮廓; 仔细描述"),
    ("indigenous", "adj. innate; adj. produced, living in a particular region", "地方的; 与生俱来的"),
    ("insurrection", "n. a usually violent attempt to take control of a government", "造反"),
    ("propound", "v. to offer for discussion or consideration", "提供..供考虑"),
    ("adulterate", "v. add something of poor quality", "掺假"),
    ("expository", "adj. explainatory", "解释的"),
    ("anemia", "n. lack of vitality", "缺乏活力"),
    ("excavate", "v. to uncover by digging away", "挖出"),
    ("colloquial", "adj. using conversational style", "口头的"),
    ("hoodwink", "v. to deceive or trick someone", "欺骗"),
    ("milieu", "n. the physical or social setting", "环境"),
    ("castigate", "v. to criticize harshly", "严厉批评"),
    ("domesticate", "v. to breed or train; adj. relating to education", "驯服; 教育学的"),
    ("protagonist", "n. an important person", "重要人物"),
    ("straggle", "v. to wander; v. to move away or spread out from others", "迷路; 散乱"),
    ("rhetorical", "adj. convincing", "有说服力的"),
    ("equilibrium", "n. a balanced state; adj. typical", "平衡; 精华的, 典型的"),
    ("impinge", "v. to strike; v. to have an effect; v. infringe", "撞击; 影响; 阻碍")
]
let word_list12: Array<(String, String, String)> = [
    ("unsparing", "adj. not merciful; adj. not frugal", "无情的; 不节俭的"),
    ("belligerent", "adj. angry and aggressive", "好斗的"),
    ("taciturn", "adj. tending to be quiet", "沉默寡言的"),
    ("penitential", "adj. relating to the feeling of being sorry", "后悔的"),
    ("frivolous", "adj. of little weight or importance", "不重要的"),
    ("predicament", "n. a difficult or unpleasant situation", "困境"),
    ("fester", "v. to become worse as time passes", "恶化"),
    ("ascertain", "v. to learn or find out", "查明"),
    ("misnomer", "n. a name that is wrong", "误称"),
    ("penchant", "n. a strong liking for something or a strong tendency to behave in a certain way", "倾向"),
    ("soporific", "adj. causing a person to become tired", "令人昏昏欲睡的"),
    ("unkempt", "adj. not neat or orderly", "不整洁的"),
    ("tawdry", "adj. cheap and gaudy; adj. morally low or bad", "俗气的; 卑鄙的"),
    ("impoverished", "adj. made poor; adj. deprived of strength or vitality", "贫穷的"),
    ("disparage", "v. to describe as unimportant", "鄙视"),
    ("hackneyed", "adj. not interesting, funny", "陈词滥调的"),
    ("pastoral", "adj. adj. of or relating to the country or country life", "乡间生活的"),
    ("meander", "v. to move or cause to move in a sinuous course", "漫无目的地走"),
    ("bucolic", "adj. of or relating to the country or country life", "乡间生活的"),
    ("run-of-the-mill", "adj. average or ordinary", "平凡的"),
    ("hard-nosed", "adj. being tough, stubborn; adj. not influenced by emotions", "不妥协的; 理性的"),
    ("menace", "v. to threaten harm to", "威胁"),
    ("painstaking", "adj. diligent care and effort", "勤奋努力的"),
    ("predispose", "v. to make susceptible; v. to dispose in advance", "易受感染; 有倾向"),
    ("declamatory", "adj. expressing feelings or opinions in a way that is loud and forceful", "慷慨激昂的"),
    ("oratorical", "adj. of or relating to the skill or activity of giving speeches", "口才的"),
    ("recondite", "adj. difficult to understand", "难懂的"),
    ("staple", "adj. used, needed constantly; adj. principal, chief", "必要的; 主要的"),
    ("acquisitive", "adj. having a strong desire to own or acquire more things", "贪婪的"),
    ("clangorous", "adj. having a loud resonant metallic sound", "响亮的"),
    ("canonical", "adj. of or relating to the group of books, plays, poems, etc., that are traditionally considered to be very important", "经典的"),
    ("quotidian", "adj. ordinary or very common", "普通的"),
    ("bathetic", "adj. marked by exceptional commonplaceness", "陈腐的"),
    ("veracious", "adj. marked by truth", "真实的, 准确的"),
    ("kindred", "adj. closely related or similar", "相关的, 相似的"),
    ("retrofit", "v. to provide with new parts that were not available when it was originally built", "翻新"),
    ("impecunious", "adj. having little or no money", "贫穷的"),
    ("assiduous", "adj. showing great care, attention, and effort", "努力的"),
    ("tacit", "adj. expressed or understood without being directly stated", "心照不宣的"),
    ("transgress", "v. to disobey a command or law", "违背"),
    ("render", "v. to cause (someone or something) to be in a specified condition", "进入某种状态")

]
let word_list13: Array<(String, String, String)> = [
    ("sporadic", "adj. occurring occasionally or irregularly", "不规律的, 偶尔的"),
    ("buoyant", "adj. happy and confident", "愉悦的"),
    ("premonitory", "adj. giving warning", "警告的"),
    ("abreast", "adj. up to a particular standard or level of recent developments", "与时俱进的"),
    ("obstinate", "adj. refusing to change your behavior or your ideas", "固执的"),
    ("debacle", "n. a great disaster; n. a complete failure", "大灾难; 彻底失败"),
    ("boon", "n. a benefit or advantage", "好处, 福利"),
    ("hidebound", "adj. not willing to accept new or different ideas", "守旧的"),
    ("noxious", "adj. harmful to living things", "有害的"),
    ("rhapsody", "n. a written or spoken expression of great enthusiasm, praise", "慷慨激昂的说辞"),
    ("stanch", "v. to stop", "阻止; 止血"),
    ("lurid", "adj. causing shock or disgust", "骇人听闻的"),
    ("virulent", "adj. extremely dangerous and deadly and usually spreading very quickly", "有害的; 恶毒的"),
    ("obdurate", "adj. stubbornly persistent in wrongdoing", "固执的"),
    ("relegate", "v. to assign to a place of insignificance or of oblivion", "降低"),
    ("apostle", "n. an ardent supporter", "狂热的支持者"),
    ("foreground", "v. to make (something) more important", "强调"),
    ("pious", "adj. deeply religious; adj. marked by sham or hypocrisy", "虔诚的; 虚伪的"),
    ("schism", "n. division or separation", "分裂"),
    ("providential", "adj. happening at a good time because of luck", "幸运的, 凑巧的"),
    ("tumultuous", "adj. involving a lot of violence, confusion, or disorder", "混乱的"),
    ("panache", "n. dash or flamboyance in style and action", "炫耀"),
    ("copious", "adj. very large in amount or number", "大量的"),
    ("sartorial", "adj. of or relating to a tailor or tailored clothes", "与衣服有关的"),
    ("approbate", "v. to approve or sanction", "支持"),
    ("manacle", "v. to restrain from movement, progress, or action", "限制"),
    ("erstwhile", "adv. in the past", "过去的"),
    ("florid", "adj. elaborately decorated; adj. having a red or reddish color", "花哨的; 红润的"),
    ("secular", "adj. of or relating to the physical world and not the spiritual world; adj. not religious", "世俗的; 非宗教的"),
    ("inveigle", "v. to trick someone", "诱骗"),
    ("hand-wringing", "n. an overwrought expression of concern or guilt", "􏳼􏳽焦虑绝望的举止"),
    ("prime", "v. to make (someone) ready to do something; adj. most important", "使..准备好; 最重要的"),
    ("garrulous", "adj. very talkative", "话多的"),
    ("prevaricate", "v. to avoid telling the truth by not directly answering a question", "搪塞"),
    ("eclectic", "adj. including things taken from many different sources", "多元的"),
    ("haughty", "adj. blatantly and disdainfully proud", "高傲的"),
    ("blight", "v. to impair the quality or effect of", "破坏"),
    ("apposite", "adj. highly pertinent or appropriate", "合适的, 相关的"),
    ("germane", "adj. relating to a subject in an appropriate way", "相关的"),
    ("fitful", "adj. not regular or steady", "不规律的"),
    ("imperturbable", "adj. very calm", "镇定的")
]
let word_list14: Array<(String, String, String)> = [
    ("omniscient", "adj. knowing everything", "无所不知的"),
    ("interminable", "adj. continuing for a very long time", "持续的"),
    ("snare", "n. a trap; v. to trap", "陷阱; 捕捉"),
    ("forestall", "v. prevent", "阻止"),
    ("beholden", "adj. being under obligation for a favor or gift", "亏欠的"),
    ("indebted", "adj. owing gratitude or recognition to another", "感激的"),
    ("impute", "v. to suggest that someone is guilty of", "归罪于"),
    ("objurgation", "n. a harsh rebuke", "斥责"),
    ("nascent", "adj. beginning to exist", "初始的"),
    ("deft", "adj. able to do something quickly and accurately", "灵巧的"),
    ("adroit", "adj. very clever or skillful", "灵巧的"),
    ("impolitic", "adj. unwise", "不明智的"),
    ("denigrate", "v. to attack the reputation of", "攻击"),
    ("insipid", "adj. not interesting or exciting", "无聊的"),
    ("recrudesce", "v. to break out or become active again", "复发"),
    ("nebulous", "adj. not clear", "模糊的, 不清楚的"),
    ("slender", "adj. limited or inadequate in amount or scope", "缺少的, 不足的"),
    ("garner", "v. to collect or gather; v. to acquire by effort", "收集; 通过努力获得.."),
    ("endow", "v. to freely or naturally provide something", "赋予"),
    ("bestow", "v. to give (something) as a gift or honor", "授予"),
    ("requisite", "adj. needed for a particular purpose", "必要的"),
    ("strenuous", "adj. requiring or showing great energy and effort; adj. vigorously active", "费力的; 活跃的"),
    ("consign", "v. to give or transfer control", "委托, 转交"),
    ("prodigious", "adj. amazing or wonderful, very impressive; adj. very big", "惊人的; 巨大的"),
    ("encroach", "v. to gradually move or go into an area that is beyond the usual or desired limits", "侵占"),
    ("confer", "v. to give; v. to discuss something important to make a decision", "授予; 协商"),
    ("subdue", "v. to get control of by using force", "征服, 打败"),
    ("dwell", "v. to speak or write insistently", "持续地谈论"),
    ("pillage", "v. to plunder ruthlessly", "掠夺"),
    ("ailment", "n. a sickness or illness", "疾病"),
    ("rebuke", "v. to blame", "指责"),
    ("cavalier", "adj. showing a lack of proper concern; offhand", "随意的"),
    ("objectionable", "adj. causing people to be offended", "令人反感的"),
    ("exigent", "adj. requiring immediate attention", "紧急的"),
    ("erstwhile", "adv. in the past", "过去的"),
    ("timorous", "adj. easily frightened", "胆小的"),
    ("pristine", "adj. belonging to the earliest period or state; adj. not spoiled, corrupted, or polluted and left in its natural state", "原始的; 未被破坏的"),
    ("ecstatic", "adj. very happy or excited", "高兴的"),
    ("prowess", "n. great ability or skill", "（超凡的）能力"),
    ("entrench", "v. to establish firmly or solidly", "牢固地确立"),
    ("curtail", "v. to reduce or limit (something)", "削减")
]
let word_list15: Array<(String, String, String)> = [
    ("finesse", "v. evade; v. to handle in skillful or clever way", "躲避; 巧妙地处理"),
    ("sheer", "adj. complete and total", "完全的"),
    ("levity", "n. a lack of seriousness", "轻浮"),
    ("ostensible", "adj. seeming or said to be true but not real", "表面的, 虚假的"),
    ("somber", "adj. very sad and serious; adj. having a full color", "严肃的, 悲伤的; 昏暗的"),
    ("revile", "v. to speak in a critical or insulting way", "辱骂"),
    ("corporeal", "adj. having physical body or form", "肉体的"),
    ("inoculate", "v. to inject an idea or a material", "灌输, 注射"),
    ("subsist", "v. to exist or continue to exist", "生存"),
    ("suffrage", "n. the right to vote in an election", "选举权"),
    ("oblique", "adj. not straightforward; adj. having no right angle", "间接的； 倾斜的"),
    ("bequeath", "v. to give or leave by will; to hand down", "遗留, 传下"),
    ("patronize", "v. treat in a way that is apparently kind or helpful but that betrays a feeling of superiority", "摆出高人一等的态度"),
    ("verdue", "adj. not present by a stated time", "延误的"),
    ("brusque", "adj. rude", "无礼的, 唐突的"),
    ("prose", "adj. dull or ordinary; n. written or spoken language in its ordinary form, without metrical structure", "乏味的, 散文"),
    ("touchstone", "n. standard to judge quality", "检验标准"),
    ("purveyor", "n. a person or business that provides something", "供应商"),
    ("decimate", "v. to destroy a large number of (plants, animals, people, etc.)", "严重破坏"),
    ("siphon", "v. to take and use (something, such as money) for your own purpose", "抽走（资金）"),
    ("procure", "v. to get (something) by some action or efforts", "获得"),
    ("hiatus", "n. a period of time when something (such as an activity or program) is stopped", "间歇"),
    ("cantankerous", "adj. often angry and annoyed", "易怒的"),
    ("bombard", "v. to hit or attack (something or someone) constantly or repeatedly", "炸弹般攻击"),
    ("vernacular", "adj. of, relating to, or using the language of ordinary speech rather than formal writing", "口头的"),
    ("hitherto", "adv. until now", "至今"),
    ("bravado", "n. a pretense of bravery; n. the quality or state of being foolhardy", "装作勇敢, 莽撞"),
    ("refractory", "adj. resisting control or authority; adj. immune or insusceptible", "不服管的; 免疫的"),
    ("abiding", "adj. continuing for a long time", "长期的"),
    ("debonair", "adj. lighthearted or nonchalant", "无忧无虑的"),
    ("crestfallen", "adj. very sad and disappointed", "沮丧的"),
    ("wistful", "adj. full of yearning or desire tinged with melancholy", "渴望的, 思念过去的"),
    ("boast", "v. speak vaingloriously; v. have or contain", "吹嘘的, 拥有"),
    ("cajole", "v. coax", "哄骗"),
    ("baneful", "adj. seriously harmful", "有害的"),
    ("proscribe", "v. to not allow", "禁止"),
    ("obstreperous", "adj. difficult to control and often noisy", "不服管的"),
    ("volition", "n. the power to make your own choices or decisions", "自愿选择"),
    ("sumptuous", "adj. extremely costly, rich, luxurious, or magnificent", "奢侈的"),
    ("gravitate", "v. to be attracted to or toward something", "被吸引到..."),
    ("particularize", "v. to give specific details or examples of", "详细阐述")

]
let word_list16: Array<(String, String, String)> = [
    ("albeit", "conj. although", "即使"),
    ("anodyne", "adj. serving to alleviate pain; adj. not likely to offend or upset anyone", "缓解痛苦的; 不惹人烦的"),
    ("credulous", "adj. too ready to believe things", "易受欺骗的"),
    ("asunder", "adj. into parts", "分裂的"),
    ("petulant", "adj. insolent or rude in speech or behavior; angry", "无礼的; 脾气坏的"),
    ("winnow", "v. to narrow or reduce", "筛选"),
    ("preside", "v. to be in charge of something (such as a trial)", "主持, 负责"),
    ("meretricious", "adj. attractive in a cheap or false way", "俗里俗气的"),
    ("burgeon", "v. to grow or develop quickly", "快速增长"),
    ("seethe", "v. to suffer violent internal excitement; v. to move constantly and without order", "强压怒火, 乱动"),
    ("morph", "v. to change the form or character of", "变形"),
    ("obtuse", "adj. stupid or unintelligent; adj. difficult to comprehend", "笨的; 难懂的"),
    ("trenchant", "adj. caustic; adj. sharply perceptive", "尖酸刻薄的; 犀利的"),
    ("instigate", "v. to cause (something) to happen or begin", "激起"),
    ("fusty", "adj. very old-fashioned", "过时的"),
    ("vituperate", "v. to abuse or censure severely or abusively", "辱骂"),
    ("molder", "v. to decay slowly", "腐烂, 退化"),
    ("incipient", "adj. beginning to develop or exist", "开始的"),
    ("antiquarian", "adj. relating to the collection and study of valuable old things", "古物研究的"),
    ("boisterous", "adj. very noisy and active in a lively way", "吵闹的"),
    ("renounce", "v. to give up, refuse, or resign usually by formal declaration", "拒绝"),
    ("maelstrom", "n. a powerful often violent whirlpool sucking in objects within a given radius", "大漩涡（动乱）"),
    ("captious", "adj. marked by an often ill-natured inclination to stress faults and raise objections", "吹毛求疵的"),
    ("fealty", "n. loyalty to a person, group, etc.", "忠诚"),
    ("bristle", "v. to become angry", "生气"),
    ("nugatory", "adj. of little or no consequence", "不重要的"),
    ("spartan", "adj. marked by simplicity, frugality, or avoidance of luxury and comfort", "简朴的"),
    ("sequester", "v. to keep (a person or group) apart from other people", "隔离"),
    ("hasty", "adj. done or made very quickly or too quickly", "仓促的"),
    ("budding", "adj. being in an early stage of development", "开始的"),
    ("vainglory", "n. excessive or ostentatious pride especially in one's achievements", "虚荣"),
    ("ecumenical", "adj. involving people or things from different kind; of worldwide scope or applicability", "多元的, 普遍的"),
    ("ardent", "adj. involving people or things from different kind; of worldwide scope or applicability", "热情的"),
    ("distend", "v. to become larger and rounder because of pressure from inside􏺳􏺴", "膨胀"),
    ("subterfuge", "n. the use of tricks especially to hide, avoid, or get something", "诡计"),
    ("agglomerate", "v. to gather into a ball, mass, or cluster", "聚集"),
    ("goad", "v. to urge or force (someone) to do something􏱃􏱾", "刺激"),
    ("prolix", "adj. using too many words", "冗长的"),
    ("chastise", "v. to criticize (someone) harshly for doing something wrong", "谴责"),
    ("protract", "v. to prolong in time or space", "延长"),
    ("stymie", "v. to present an obstacle to", "阻碍")

]
let word_list17: Array<(String, String, String)> = [
    ("seminal", "adj. very important and influential", "非常有影响力的"),
    ("tepid", "adj. not energetic or excited", "冷淡的"),
    ("senescence", "n. the state of being old or the process of becoming old", "衰老"),
    ("decrepitude", "n. the state of being old and in bad condition or poor health", "衰老"),
    ("self-styled", "adj. called a particular thing by yourself", "自称的"),
    ("conversant", "adj. having knowledge or experience", "熟悉的"),
    ("tribulation", "n. unhappiness, pain, or suffering or an experience that causes someone to suffer", "痛苦的经历"),
    ("beleaguer", "v. besiege; v. trouble or harass", "围困; 骚扰"),
    ("incumbent", "n. one that occupies a particular position or place", "在职官员"),
    ("hermetic", "adj. closed tightly so that no air can go in or out; adj. relating to or characterized by occultism or abstruseness", "密闭的; 难懂的"),
    ("impunity", "n. freedom from punishment, harm, or loss", "免罪"),
    ("reprisal", "n. a retaliatory act", "报复"),
    ("myopic", "adj. a lack of foresight or discernment", "缺乏远见的"),
    ("sublime", "v. to convert (something inferior) into something of higher worth; adj. complete or extreme", "升华; 极端的"),
    ("remonstrate", "v. to present and urge reasons in opposition", "反对"),
    ("commiserate", "v. to express sadness or sympathy for someone who has experienced something unpleasant", "哀悼"),
    ("expostulate", "v. to disagree with something or argue against it", "反驳"),
    ("anneal", "v. strengthen or toughen", "加固"),
    ("vicissitude", "n. the quality or state of being changeable", "变迁"),
    ("polyglot", "adj. knowing or using several languages; adj. made up of people or things from different cultures, countries, etc.", "多语的"),
    ("machination", "n. a scheming or crafty action or artful design intended to accomplish some usually evil end", "诡计"),
    ("nefarious", "adj. evil or immoral", "邪恶的"),
    ("lachrymose", "adj. tending to cause tears; adj. tending to cry often", "催泪的, 悲伤的; 爱哭的"),
    ("enmity", "n. a very deep unfriendly feeling", "恶意, 增恶"),
    ("minutia", "n. a minute or minor detail", "细节"),
    ("commend", "v. to praise (someone or something) in a serious and often public way", "赞美"),
    ("gossamer", "adj. extremely light, delicate, or tenuous", "虚无缥缈的"),
    ("lenient", "adj. allowing a lot of freedom and not punishing bad behavior in a strong way", "宽容的"),
    ("rectitude", "n. the quality of being honest and morally correct", "正直"),
    ("enamor", "v. to cause (someone) to be loved or admired", "使..喜爱"),
    ("immure", "v. imprison; v. to enclose within", "囚禁"),
    ("impudent", "adj. very rude", "无礼的"),
    ("irenic", "adj. favoring, conducive to, or operating toward peace, moderation, or conciliation", "爱好和平的"),
    ("shear", "v. to deprive of something as if by cutting", "剥夺"),
    ("coruscate", "v. sparkle; v. to be brilliant or showy in technique or style", "闪烁; 焕发魅力"),
    ("strident", "adj. sounding harsh and unpleasant; adj. expressing opinions or criticism", "刺耳的; 令人不悦的"),
    ("muckrake", "v. to search out and publicly expose real or apparent misconduct of a prominent individual or business", "揭露丑闻"),
    ("proffer", "v. to offer or give (something) to someone", "提供"),
    ("revel", "v. to take intense pleasure or satisfaction", "陶醉; 狂欢"),
    ("predicate", "v. to found or base something on; v. to declare or affirm (something) as true or existing", "取决于; 断言"),
    ("prophylactic", "adj./ n. guarding from or preventing the spread or occurrence of disease or infection", "预防性的")

]

let word_list18: Array<(String, String, String)> = [
    ("pilfer", "v. to steal things that are not very valuable or to steal a small amount of something", "盗用"),
    ("imbibe", "v. to drink (something)", "喝"),
    ("quaff", "v. to drink a large amount of (something) quicklys", "大口喝"),
    ("brook", "v. to stand for : tolerate", "容忍"),
    ("muddle", "v. to cause confusion in (someone or someone's mind)", "使困惑"),
    ("unerring", "v. to cause confusion in (someone or someone's mind)", "可靠的"),
    ("provenance", "n. the origin or source of something", "出处, 起源"),
    ("inscrutable", "adj. difficult to understand 􏹺 causing people to feel curious or confused", "难以理解的"),
    ("supple", "adj. readily adaptable or responsive to new situations", "灵活的"),
    ("contravene", "v. to fail to do what is required by (a law or rule)", "违反"),
    ("ungainly", "adj. moving in an awkward or clumsy way : not graceful", "笨拙的"),
    ("dispatch", "n. promptness and efficiency in performance or transmission", "迅速"),
    ("chimera", "n. something that exists only in the imagination and is not possible in reality", "幻想"),
    ("ominous", "adj. suggesting that something bad is going to happen in the future", "不吉利的"),
    ("limpid", "adj. marked by transparency: pellucid", "清澈透明的"),
    ("exonerate", "v. to prove that someone is not guilty of a crime or responsible for a problem, bad situation", "免罪"),
    ("surmise", "v. a thought or idea based on scanty evidence : conjecture", "猜测"),
    ("rapprochement", "n. the development of friendlier relations between countries or groups of people who have been enemies", "友好, 和谐"),
    ("exert", "v. to use (strength, ability, etc.)", "使用"),
    ("guzzle", "v. to drink (something, such as beer or liquor) quickly or in large amounts", "狂欢"),
    ("kinfolk", "n. a person's relatives", "亲戚"),
    ("divergent", "adj. differing from each other or from a standard", "不同的"),
    ("vestige", "n. the last small part that remains of something that existed before", "遗迹"),
    ("profusion", "n. a large amount of something", "大量"),
    ("forebode", "v. to have an inward conviction of (as coming ill or misfortune)", "担忧"),
    ("calamity", "n. an event that causes great harm and suffering", "大灾难"),
    ("beget", "v. to cause (something) to happen or exist", "导致"),
    ("reprehensible", "adj. very bad : deserving very strong criticism", "应受指责的"),
    ("divest", "v. to deprive or dispossess especially of property, authority, or title", "剥夺"),
    ("recalcitrant", "adj. stubbornly refusing to obey rules or orders", "顽固的"),
    ("recrudescent", "adj. breaking out again : renewing", "复发的"),
    ("preternatural", "adj. very unusual in a way that does not seem natural", "惊人的"),
    ("provident", "adj. careful about planning for the future and saving money for the future", "节省的"),
    ("coterie", "n. an intimate and often exclusive group of persons with a unifying common interest or purpose", "小团体"),
    ("aplomb", "n. complete and confident composure or self-assurance􏹺 poise", "自信沉着"),
    ("reticent", "adj. inclined to be silent or uncommunicative in speech : reserved; adj. restrained in expression, presentation, or appearance", "沉默寡言的; 有保留的"),
    ("myriad", "adj. both numerous and diverse", "大量丰富的"),
    ("expurgate", "v. to change (a written work) by removing parts that might offend people", "删除"),
    ("triumvirate", "n. government by three persons or by a coalition of three parties", "三足鼎立"),
    ("indefatigable", "adj. incapable of being fatigued: untiring", "不知疲倦的"),
    ("paean", "n. a work that praises or honors its subject", "赞美")
]
let word_list19: Array<(String, String, String)> = [
    ("hallmark", "n. a distinguishing characteristic, trait, or feature", ""),
    ("potent", "adj. having authority or power; adj. achieving or bringing about a particular result", ""),
    ("lopsided", "adj. uneven or unequal", ""),
    ("unalloyed", "adj. not mixed with something else", ""),
    ("varnish", "v. adorn, embellish", ""),
    ("mar", "v. to ruin the beauty or perfection of (something)", ""),
    ("platitude", "n. a banal, trite, or stale remark", ""),
    ("meld", "v. merge, blend", ""),
    ("oracle", "n. an authoritative or wise expression or answer; n. prophecy", ""),
    ("contiguous", "adj. used to describe things that touch each other or are immediately next to each other", ""),
    ("boorish", "adj. resembling or befitting a boor (as in crude insensitivity)", ""),
    ("poise", "v. to hold (something) in a balanced and steady position", ""),
    ("quandary", "n. a situation in which you are confused about what to do", ""),
    ("ploy", "n. a clever trick or plan that is used to get someone to do something or to gain an advantage over someone", ""),
    ("hyperbole", "n. language that describes something as better or worse than it really is", ""),
    ("genteel", "adj. having a quietly appealing or polite quality", ""),
    ("impassioned", "", ""),
    ("deduce", "", ""),
    ("diffident", "", ""),
    ("controvert", "", ""),
    ("succumb", "", ""),
    ("gleam", "", ""),
    ("imperial", "", ""),
    ("paraphernalia", "", ""),
    ("cast-iron", "", ""),
    ("detritus", "", ""),
    ("avant-garde", "", ""),
    ("leach", "", ""),
    ("brackish", "", ""),
    ("redolent", "", ""),
    ("noisome", "", ""),
    ("adjudicate", "", ""),
    ("eschew", "", ""),
    ("contingent", "", ""),
    ("rote", "", ""),
    ("dire", "", ""),
    ("auspicious", "", ""),
    ("bootless", "", ""),
    ("posit", "", ""),
    ("adjunct", "", ""),
    ("abound", "", "")

]
let word_list20: Array<(String, String, String)> = []
let word_list21: Array<(String, String, String)> = []
let word_list22: Array<(String, String, String)> = []
let word_list23: Array<(String, String, String)> = []
let word_list24: Array<(String, String, String)> = []
let word_list_fav: Array<(String, String, String)> = []

struct ContentView: View {
    
    @State var x = [CGFloat](repeating: 0, count: 41)
    @State var degree = [Double](repeating: 0, count: 41)
    
    var index: Int
    
    var word_list_array: Array<Array<(String, String, String)>> = [word_list1, word_list2, word_list3, word_list4, word_list5, word_list6, word_list7, word_list8, word_list9, word_list10, word_list11, word_list12, word_list13, word_list14, word_list15, word_list16, word_list17, word_list18, word_list19, word_list20, word_list21, word_list22, word_list23, word_list24, word_list_fav]
    
    var body: some View {
     NavigationView {
        ZStack {
            Color.black.opacity(0.05).edgesIgnoringSafeArea(.all)
            
            // buttons in the end of each card list
            VStack {
                // A button that returns to the first card
                Button(action: {
                    for i in 0..<self.x.count {
                        self.x[i] = 0
                    }
                    for i in 0..<self.degree.count {
                        self.degree[i] = 0
                    }
                }) {
                    Image(systemName: "return").font(.title).foregroundColor(.black)
                }
                Text("       ")
                // A button that returns to the deck view
                NavigationLink(destination: DeckView()
                                .navigationBarTitle("")
                                .navigationBarHidden(true)) {
                   Image(systemName: "list.bullet").font(.title)
                }.buttonStyle(PlainButtonStyle())
            }
            
            ZStack {
                ForEach(0..<41, id :\.self) {i in
                    Card(word_list: self.word_list_array[self.index], content_index: i)
                    .offset(x: self.x[i])
                    .rotationEffect(.init(degrees: self.degree[i]))
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            if value.translation.width > 0 {
                                self.x[i] = value.translation.width
                                self.degree[i] = 8
                            } else {
                                self.x[i] = value.translation.width
                                self.degree[i] = -8
                            }
                        })
                        .onEnded({(value) in
                            if value.translation.width > 0 {
                                if value.translation.width > 100 {
                                    self.x[i] = 500
                                    self.degree[i] = 15
                                } else {
                                    self.x[i] = 0
                                    self.degree[i] = 0
                                }
                            } else {
                                if value.translation.width < -100 {
                                    self.x[i] = -500
                                    self.degree[i] = -15
                                } else {
                                    self.x[i] = 0
                                    self.degree[i] = 0
                                }
                            }

                        }))
                }
            }.padding()
             .animation(.default)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        } // Nav view
        }
    }
}

struct Card : View {

    var word_list: Array<(String, String, String)> = []
    var content_index: Int
    
    @State var touched: Bool = false
    @State var imageName = "heart"
    @State var showChinese = false
    
    @State var audioPlayer: AVAudioPlayer!
    @State var count = 1
    @State var pressed = false
    
    var body: some View {
        ZStack {
            Image("Arcade (4)")
            .resizable()
            .padding()
            
            // Needs to be 41
            HStack {
                Text(String(word_list.count))
            }
            
            // Music Player Feature
            Image(systemName: "play.fill")
                .font(.title)
                .offset(x: -140, y: -340)
                .foregroundColor(pressed ? .black : .white)
                .onTapGesture {
                    self.audioPlayer.play()
                }
            
            Image(systemName: "pause.fill")
                .font(.title)
                .offset(x: 0, y: -340)
                .foregroundColor(.white)
                .onTapGesture {
                    self.audioPlayer.pause()
                }
            
            Image(systemName: "forward.end.fill")
                .font(.title)
                .offset(x: 140, y: -340)
                .foregroundColor(.white)
                .onTapGesture {
                    if self.count < 5 {
                        self.count = self.count + 1
                   } else {
                       self.count = 1
                   }
                    let sound = Bundle.main.path(forResource: "song-\(self.count)", ofType: "mp3")
                    print("song-\(self.count)")
                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    self.audioPlayer.play()
                   
                }
            
            VStack {
                  Text(word_list[content_index].0).font(.system(size:23, weight: .heavy, design: .rounded))
                  Text(" ")
                  Text(word_list[content_index].1).font(.system(size:16, design: .rounded)).multilineTextAlignment(.center).padding(.horizontal, 37)
                  Text(" ")
                if (showChinese) {
                    Text(word_list[content_index].2).font(.system(size:14))
                }
             }.padding()
            
            
            Image(systemName: "questionmark.square.fill")
                .font(.title)
                .offset(x: -140, y: 340)
                .foregroundColor(showChinese ? .black : .white)
                .onTapGesture {
                    self.showChinese = !self.showChinese
            }
            
            // The heart icon that adds the current word to favorite word list if tapped
            Image(systemName: self.imageName)
            .font(.title)
            .offset(x: 140, y: 340)
            .foregroundColor(touched ? Color(red: 250 / 255, green: 116 / 255, blue: 112 / 255) : .white)
            .onTapGesture {
                self.touched = !self.touched
                self.imageName = self.imageName == "heart" ? "heart.fill" : "heart"
                if (self.touched) {
                    // put the word to favorite word list
                }
            }.onAppear {
                let sound = Bundle.main.path(forResource: "song-1", ofType: "mp3")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(index: 1)
    }
}
