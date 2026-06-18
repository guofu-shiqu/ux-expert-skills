#!/usr/bin/env bash
# Claude Code 安装脚本
# 将 UX Expert Skills 安装到 ~/.claude/skills/

set -e

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
TARGET_DIR="$HOME/.claude/skills"

echo "================================"
echo "  UX Expert Skills → Claude Code"
echo "================================"
echo ""
echo "源目录: $REPO_DIR/skills/"
echo "目标目录: $TARGET_DIR/"
echo ""

# 创建目标目录
mkdir -p "$TARGET_DIR"

# 复制所有 skill
SKILL_COUNT=0
for skill_dir in "$REPO_DIR"/skills/*/; do
    if [ -f "${skill_dir}SKILL.md" ]; then
        skill_name=$(basename "$skill_dir")
        cp -R "$skill_dir" "$TARGET_DIR/$skill_name"
        rm -f "$TARGET_DIR/$skill_name/.DS_Store"
        echo "  ✅ $skill_name"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
done

echo ""
echo "安装完成！已安装 $SKILL_COUNT 个 Skill 到 $TARGET_DIR"
echo ""
echo "使用方式："
echo "  1. 在 Claude Code 中输入 / 查看可用 skill"
echo "  2. 直接描述问题，Claude 会自动匹配 skill"
echo ""
echo "（可选）将 agent 提示词添加到项目 CLAUDE.md："
echo "  cat $REPO_DIR/agent/ux-expert.md >> your-project/CLAUDE.md"
