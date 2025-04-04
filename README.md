# MCP OR Agents

## Getting Started

### Prerequisites

- Python 3.12.9
- [uv](https://github.com/astral-sh/uv) - Fast Python package installer and resolver

### Setup Instructions

1. **Install uv** (if not already installed)

```bash
curl -sSf https://install.ultraviolet.io | sh
```

2. **Clone the repository**

```bash
git clone https://github.com/yourusername/mcp-or-agents.git
cd mcp-or-agents
```

3. **Set up the environment**

```bash
# Create and activate virtual environment
uv venv .
source .venv/bin/activate  # On Windows: .venv\Scripts\activate

# Install dependencies
uv pip install -e .
```

4. **Install development dependencies** (optional)

```bash
uv pip install -e ".[dev]"
```

### Running the project

```bash
python main.py
```

### Development Tasks

```bash
# Run tests
pytest

# Run linting
ruff check .

# Run type checking
mypy .
```

## Authors

- Xin Shi (shi321xin@gmail.com)
- Zheng Shi (shi.zheng.tfls@gmail.com)
