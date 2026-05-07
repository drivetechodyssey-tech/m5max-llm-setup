#!/bin/bash

# ================================================
# MacBook M5 Max Local LLM 설치 스크립트
# Ollama + LM Studio + lms CLI
# ================================================

echo "🚀 MacBook M5 Max Local LLM 설치 스크립트 시작..."

# Homebrew 설치
if ! command -v brew &> /dev/null; then
    echo "📦 Homebrew 설치 중..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "🔄 Homebrew 업데이트..."
brew update && brew upgrade

echo "🛠️ Xcode Command Line Tools 설치..."
xcode-select --install 2>/dev/null || echo "✅ 이미 설치됨"

echo "📚 필수 패키지 설치..."
brew install git python@3.12 git-lfs

# Ollama 설치
echo "📥 Ollama 설치 중..."
brew install ollama
brew services start ollama
echo "✅ Ollama 서비스 시작 완료"

# LM Studio 설치
echo "📥 LM Studio 설치 중..."
brew install --cask lm-studio || echo "⚠️ LM Studio 설치 실패 → https://lmstudio.ai 에서 직접 다운로드하세요."

echo ""
echo "========================================"
echo "🎉 기본 설치가 완료되었습니다!"
echo "========================================"

echo ""
echo "🔄 LM Studio를 처음 실행합니다. (lms CLI 초기화 필요)"
open -a "LM Studio" 2>/dev/null || echo "❌ LM Studio를 수동으로 실행해주세요."

echo ""
echo "🔥 추천 모델 다운로드 명령어"
echo ""
echo "【LM Studio 추천 모델】"
echo "   lms get Youssofal/Qwen3.6-27B-MTPLX-Optimized-Speed"
echo "   lms get mlx-community/Qwen3.5-27B-Claude-4.6-Opus-Distilled-MLX-4bit"
echo "   lms get dealignai/Gemma-4-31B-JANG_4M-CRACK"
echo ""

echo "【Ollama 추천 모델】"
echo "   ollama pull qwen3.6:35b-a3b-coding-nvfp4MLX     ← 최고 추천"
echo "   ollama pull qwen3.6:27b-coding-nvfp4MLX"
echo "   ollama pull gemma4:26b"
echo ""

echo ""
echo "✅ 다음 단계를 따라주세요:"
echo "1. LM Studio가 완전히 실행될 때까지 기다리세요."
echo "2. **터미널을 완전히 새로 열고** 아래 명령어로 모델을 받으세요."
echo ""
echo "   # 속도 빠른 모델"
echo "   lms get Youssofal/Qwen3.6-27B-MTPLX-Optimized-Speed"
echo ""
echo "🎉 설치가 완료되었습니다. 즐거운 Local LLM 생활 되세요! 🔥"