#!/usr/bin/env bash
# 卸载脚本
# 从 Claude Code 或 Codex 中移除 UX Expert Skills

set -e

echo "================================"
echo "  卸载 UX Expert Skills"
echo "================================"
echo ""
echo "请选择要卸载的平台："
echo "  1) Claude Code (~/.claude/skills/)"
echo "  2) Codex (~/.agents/skills/)"
echo "  3) 两者都卸载"
echo "  0) 取消"
echo ""
read -p "请输入选择 [0-3]: " choice

SKILLS=(
    exp-asset-accumulation
    exp-cognitive-analysis
    exp-competitive-analysis
    exp-empathy-map
    exp-employee-diagnosis
    exp-heuristic-evaluation
    exp-journey-analysis
    exp-jtbd-extraction
    exp-metric-design
    exp-orchestration-design
    exp-peak-design
    exp-persona-building
    exp-roi-analysis
    exp-satisfaction-stats
    exp-scenario-marketing
    exp-scene-recognition
    exp-service-blueprint
    exp-service-review
    exp-strategy-generation
    exp-survey-design
    exp-touchpoint-audit
    exp-usability-testing
    exp-user-segmentation
    exp-voc-insight
    ux-toolkit
)

remove_skills() {
    local target_dir="$1"
    local count=0
    for skill in "${SKILLS[@]}"; do
        if [ -d "$target_dir/$skill" ]; then
            rm -rf "$target_dir/$skill"
            echo "  ❌ $skill"
            count=$((count + 1))
        fi
    done
    echo ""
    echo "已从 $target_dir 移除 $count 个 Skill"
}

case "$choice" in
    1)
        remove_skills "$HOME/.claude/skills"
        ;;
    2)
        remove_skills "$HOME/.agents/skills"
        ;;
    3)
        remove_skills "$HOME/.claude/skills"
        echo ""
        remove_skills "$HOME/.agents/skills"
        ;;
    0)
        echo "已取消"
        exit 0
        ;;
    *)
        echo "无效选择"
        exit 1
        ;;
esac

echo ""
echo "卸载完成！"
