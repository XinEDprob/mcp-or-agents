.PHONY: setup lint format test clean all

# Default target
all: lint format test

# Setup: install Python, create venv and install all dependencies
setup:
	uv venv .venv
	. .venv/bin/activate && uv pip install -e ".[dev]"

# Run linting
lint:
	. .venv/bin/activate && ruff check .

# Format code
format:
	. .venv/bin/activate && ruff format .

# Run tests
test:
	. .venv/bin/activate && pytest

# Clean build artifacts
clean:
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	find . -type f -name "*.pyo" -delete
	find . -type f -name "*.pyd" -delete
	find . -type f -name ".coverage" -delete
	find . -type d -name "*.egg" -exec rm -rf {} +
	find . -type d -name "*.eggs" -exec rm -rf {} +
	find . -type d -name ".ruff_cache" -exec rm -rf {} +
	find . -type d -name ".mypy_cache" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +

# Help
help:
	@echo "Available targets:"
	@echo "  setup  - Create virtual environment and install all dependencies"
	@echo "  lint   - Run linter with ruff"
	@echo "  format - Format code with ruff"
	@echo "  test   - Run tests with pytest"
	@echo "  clean  - Remove build artifacts and caches"
	@echo "  all    - Run lint, format, and test"
	@echo "  help   - Show this help message" 