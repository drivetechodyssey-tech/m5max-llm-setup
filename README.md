# m5max-llm-setup
M5 Max를 구매한 후 Local LLM을 설정하는 과정이 생각보다 번거로워서,   처음 쓰는 사람들도 쉽게 설치할 수 있도록 스크립트를 만들었습니다.

# MacBook M5 Max Local LLM 설치 프로그램

**M5 Max 사용자들을 위한 Ollama + LM Studio 원클릭 설치 스크립트**

Apple Silicon (M5 Max)에 최적화된 **Local LLM** 환경을 가장 빠르고 쉽게 설치할 수 있게 만든 도구입니다.

### ✨ 특징
- Homebrew, Xcode Command Line Tools 자동 설치
- **Ollama** (CLI) + **LM Studio** (GUI) 동시 설치
- LM Studio `lms` CLI 초기화 지원
- M5 Max에서 잘 돌아가는 고성능 추천 모델들만 선별 제공
- 초보자도 쉽게 따라할 수 있는 친절한 안내

### 🚀 한 줄 설치 명령어

```bash
curl -fsSL https://raw.githubusercontent.com/당신아이디/m5max-local-llm-installer/main/local-llm-m5max-setup.sh | bash
```

📋 설치 후 추천 모델
LM Studio (GUI)

Youssofal/Qwen3.6-27B-MTPLX-Optimized-Speed ← 속도 최강 (https://huggingface.co/Youssofal/Qwen3.6-27B-MTPLX-Optimized-Speed)
mlx-community/Qwen3.5-27B-Claude-4.6-Opus-Distilled-MLX-4bit ← Thinking 강력 (https://huggingface.co/mlx-community/Qwen3.5-27B-Claude-4.6-Opus-Distilled-MLX-4bit) 
dealignai/Gemma-4-31B-JANG_4M-CRACK ← Uncensored (https://huggingface.co/dealignai/Gemma-4-31B-JANG_4M-CRACK)

Ollama

qwen3.6:35b-a3b-coding-nvfp4MLX ← 현재 최고 추천

사용 환경

MacBook Pro M5 Max
macOS Sonoma / Sequoia 이상
RAM 64GB 이상 권장 (32GB도 사용 가능)

주의사항

스크립트 실행 후 LM Studio가 자동으로 열립니다.
lms get 명령어는 터미널을 새로 연 뒤 사용해주세요.
