# UX Expert Skills — 体验管理专家技能包

> 25 个专业 Skill，覆盖用户体验管理全链路。兼容 **Claude Code** 和 **OpenAI Codex**，基于 [Agent Skills 开放标准](https://agentskills.io)。

## 概览

本技能包为资深用户体验专家配备的 25 个可独立调用或组合使用的 Skill，覆盖从体验洞察、旅程分析到策略生成、测量统计的完整体验管理链路。

### 能力域分布

| 能力域 | 数量 | Skills |
|--------|------|--------|
| 体验洞察 | 6 | 场景识别、JTBD 提炼、认知心理分析、VOC 洞察、用户画像、同理心地图 |
| 旅程分析 | 4 | 旅程还原、峰值设计、服务蓝图、员工诊断 |
| 策略与设计 | 3 | 策略生成、场景化营销、体验编排 |
| 测量与统计 | 5 | 指标设计、问卷设计、满意度统计、可用性测试、启发式评估 |
| 评估与对标 | 2 | 竞品体验分析、触点审计 |
| 分群与运营 | 1 | 用户分群与分层 |
| 复盘与沉淀 | 2 | 服务复盘、资产沉淀 |
| 商业价值 | 1 | 体验 ROI 分析 |
| 工具包 | 1 | UX 工具包（HEART 模型、旅程地图模板等） |

### 25 个 Skill 一览

| # | Skill | 目录 | 核心能力 |
|---|-------|------|---------|
| 1 | 体验场景识别与还原 | `exp-scene-recognition` | 从碎片化信息还原体验现场，输出场景卡 |
| 2 | JTBD 用户任务提炼 | `exp-jtbd-extraction` | 提炼功能/情绪/社会任务，输出 JTBD 卡片 |
| 3 | 用户认知心理学分析 | `exp-cognitive-analysis` | 七维度认知检查，输出检查清单 |
| 4 | 旅程还原与分析 | `exp-journey-analysis` | 定义尺度 → 还原实际 → 设计理想 → 差距分析 |
| 5 | 峰值体验设计 | `exp-peak-design` | 设计安心/效率/被理解/专业/惊喜/结尾峰值 |
| 6 | VOC 洞察分析 | `exp-voc-insight` | 分类 → 情绪评估 → 高频识别 → 深层需求挖掘 |
| 7 | 场景化体验营销设计 | `exp-scenario-marketing` | 五类营销类型，输出场景化营销分析卡 |
| 8 | 服务蓝图绘制 | `exp-service-blueprint` | 六层矩阵（用户行为 → 证据层），输出服务蓝图 |
| 9 | 员工体验诊断 | `exp-employee-diagnosis` | 分析员工 JTBD 和支持度，评估传导机制 |
| 10 | 体验指标体系设计 | `exp-metric-design` | 五类指标，定义计算方式和预警阈值 |
| 11 | 体验策略生成 | `exp-strategy-generation` | 六维策略（产品/服务/运营/品牌/员工/Agent） |
| 12 | 体验资产沉淀 | `exp-asset-accumulation` | 判断复用价值，选择资产类型，输出资产回写卡 |
| 13 | 体验编排设计 | `exp-orchestration-design` | 设计触发条件 → 判断规则 → 响应动作 → 升级条件 |
| 14 | 服务体验复盘 | `exp-service-review` | 系统复盘服务事件，输出改善策略和预警机制 |
| 15 | 体验问卷设计 | `exp-survey-design` | 7 种量表类型，问卷结构七步编排，投放策略 |
| 16 | 满意度统计与分析 | `exp-satisfaction-stats` | CSAT/NPS/CES 计算、行业基准、五象限诊断 |
| 17 | 用户画像构建 | `exp-persona-building` | 基于数据构建结构化用户画像 |
| 18 | 同理心地图 | `exp-empathy-map` | 理解用户内心世界（想/说/做/感四象限） |
| 19 | 竞品体验分析 | `exp-competitive-analysis` | 从体验视角系统对比竞品 |
| 20 | 可用性测试 | `exp-usability-testing` | 设计测试方案、编写脚本、分析指标 |
| 21 | 启发式评估 | `exp-heuristic-evaluation` | 基于 Nielsen 十大原则快速评估可用性 |
| 22 | 用户分群与分层 | `exp-user-segmentation` | 基于体验需求分群，设计差异化策略 |
| 23 | 触点审计 | `exp-touchpoint-audit` | 全面盘点触点、评估质量、发现盲区 |
| 24 | 体验 ROI 分析 | `exp-roi-analysis` | 量化体验投入的商业回报 |
| 25 | UX 工具包 | `ux-toolkit` | HEART 模型、旅程地图模板、HCI 法则速查 |

## 快速开始

### 方式一：一键安装（推荐）

```bash
# Claude Code
bash install/claude-code.sh

# Codex
bash install/codex.sh
```

### 方式二：手动安装

#### Claude Code

```bash
# 克隆仓库
git clone https://github.com/guofu-shiqu/ux-expert-skills.git

# 将 skills 复制到 Claude Code 的 skills 目录
cp -r ux-expert-skills/skills/* ~/.claude/skills/

# （可选）将 agent 提示词添加到项目的 CLAUDE.md
cat ux-expert-skills/agent/ux-expert.md >> your-project/CLAUDE.md
```

#### Codex

```bash
# 克隆仓库
git clone https://github.com/guofu-shiqu/ux-expert-skills.git

# 将 skills 复制到 Codex 的 skills 目录
cp -r ux-expert-skills/skills/* ~/.agents/skills/

# （可选）将 agent 提示词添加到项目的 AGENTS.md
cat ux-expert-skills/agent/ux-expert.md >> your-project/AGENTS.md
```

### 方式三：项目级安装（团队共享）

```bash
# 在项目根目录克隆
git submodule add https://github.com/guofu-shiqu/ux-expert-skills.git .ux-expert

# Claude Code: 创建符号链接
ln -s .ux-expert/skills .claude/skills

# Codex: 创建符号链接
ln -s .ux-expert/skills .agents/skills
```

## 使用方式

### 在 Claude Code 中

```
# 手动调用某个 skill
/exp-scene-recognition 分析这条用户反馈

# 或直接描述问题，Claude 会根据 description 自动匹配 skill
帮我分析这个产品的用户旅程，找出体验断点
```

### 在 Codex 中

```
# 使用 $ 语法调用 skill
$exp-journey-analysis 分析用户从注册到首次购买的完整旅程

# 或直接描述问题，Codex 会自动匹配
这批客服投诉录音，帮我做 VOC 洞察分析
```

## 组合工作流

本技能包支持多 Skill 串联使用，以下是 6 条推荐工作流：

### 1. 体验诊断全流程
```
exp-scene-recognition → exp-jtbd-extraction → exp-cognitive-analysis
→ exp-journey-analysis → exp-strategy-generation
```
**适用场景**：从零开始诊断一个产品的体验问题

### 2. 体验测量闭环
```
exp-metric-design → exp-survey-design → exp-satisfaction-stats
→ exp-heuristic-evaluation
```
**适用场景**：建立体验测量体系，持续监控体验质量

### 3. 服务优化闭环
```
exp-service-blueprint → exp-employee-diagnosis → exp-peak-design
→ exp-service-review
```
**适用场景**：优化服务交付流程，提升服务体验

### 4. 增长与留存
```
exp-user-segmentation → exp-scenario-marketing → exp-orchestration-design
→ exp-roi-analysis
```
**适用场景**：基于体验视角设计用户增长和留存策略

### 5. 用户共情与创新
```
exp-empathy-map → exp-persona-building → exp-jtbd-extraction
→ exp-peak-design
```
**适用场景**：深度理解用户，发现创新机会

### 6. 质量审计与对标
```
exp-touchpoint-audit → exp-competitive-analysis → exp-heuristic-evaluation
→ exp-metric-design
```
**适用场景**：全面审计体验质量，与竞品对标找差距

## Skill 文件格式

每个 Skill 遵循 [Agent Skills 开放标准](https://agentskills.io)：

```
skill-name/
├── SKILL.md           # 必须：技能入口，包含 YAML frontmatter + 指令
├── references/        # 可选：参考资料
├── scripts/           # 可选：可执行脚本
└── assets/            # 可选：模板、资源
```

`SKILL.md` 格式：

```markdown
---
name: skill-name
description: 简洁描述技能的功能和触发场景。Claude/Codex 据此判断何时自动调用。
---

# 技能标题

指令内容...
```

## 技术规格

- **标准**：[Agent Skills Open Standard](https://agentskills.io)
- **兼容平台**：Claude Code、OpenAI Codex、WorkBuddy
- **Skill 数量**：25
- **语言**：中文（指令内容），英文（frontmatter description）
- **许可证**：MIT

## 目录结构

```
ux-expert-skills/
├── README.md                    # 本文件
├── LICENSE                      # MIT 许可证
├── AGENTS.md                    # Codex agent 指令
├── CLAUDE.md                    # Claude Code 项目指令
├── CHANGELOG.md                 # 版本历史
├── agent/
│   └── ux-expert.md             # 专家 agent 提示词
├── skills/                      # 25 个 Skill
│   ├── exp-scene-recognition/
│   │   └── SKILL.md
│   ├── exp-jtbd-extraction/
│   │   └── SKILL.md
│   ├── ...
│   └── ux-toolkit/
│       ├── SKILL.md
│       └── references/
│           ├── hci-principles.md
│           ├── heart-model.md
│           ├── heuristic-evaluation.md
│           ├── journey-map-template.md
│           └── usability-test-script.md
├── install/
│   ├── claude-code.sh           # Claude Code 安装脚本
│   ├── codex.sh                 # Codex 安装脚本
│   └── uninstall.sh             # 卸载脚本
└── docs/
    └── usage-guide.html         # 交互式使用说明书
```

## 许可证

[MIT License](LICENSE) — 自由使用、修改、分发。

## 贡献

欢迎提交 Issue 或 Pull Request 贡献新的 Skill 或改进现有 Skill。

## 作者

**龙国富** — 资深用户体验专家，12 年+ 互联网与科技行业 UX 实战经验。
