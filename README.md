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
