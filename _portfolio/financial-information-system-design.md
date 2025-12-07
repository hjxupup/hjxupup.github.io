---
title: "Financial Information System Design - AI-Enhanced Quantitative Trading System"
excerpt: "B/S architecture quantitative trading system based on Flask, integrating AI intelligent investment advisor, multiple trading strategies, and technical indicator analysis<br/><img src='/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2457.png'>"
collection: portfolio
---

## Project Overview

This is an **AI-enhanced quantitative trading system** based on B/S architecture that integrates core functions including financial knowledge, technical indicators, strategy models, system design, and artificial intelligence. The system is developed using the Python Flask framework, providing a web interface for stock data analysis, strategy backtesting, real-time monitoring, and **AI intelligent investment advisor services**.

## Main Features

### 1. Financial Data Management
- **Stock Data Acquisition**: Support for fetching real-time and historical stock data from Yahoo Finance
- **Data Caching Mechanism**: Improves access efficiency, supports batch data retrieval for multiple stocks
- **Market Rule Understanding**: Automatically adds market suffixes, considers trading time restrictions and price limit rules

### 2. Technical Indicator Analysis
- **Basic Indicators**: Moving averages (MA/EMA), MACD, RSI, KDJ, Bollinger Bands, ATR, etc.
- **Volume Indicators**: Volume moving averages, price-volume relationship analysis
- **Signal Generator**: Generates buy/sell signals based on technical indicators, supports multiple signal combination strategies

### 3. Quantitative Trading Strategies
- **MA Strategy (Moving Average Strategy)**: Based on crossover of short-term and long-term moving averages
- **Momentum Strategy**: Based on price momentum breakthroughs and reversals
- **Mean Reversion Strategy**: Based on price deviation from mean regression
- **Grid Strategy**: Sets multiple buy/sell grids within price ranges
- **Dual MA Strategy**: Based on crossover signals of two moving averages with different periods
- **Breakout Strategy**: Based on price breakthroughs of key resistance or support levels
- **RSI Strategy**: Based on RSI overbought/oversold signals

### 4. Strategy Backtesting System
- **Historical Data Backtesting**: Supports multi-strategy historical data backtesting
- **Performance Metric Calculation**: Returns, Sharpe ratio, maximum drawdown, etc.
- **Trading Record Analysis**: Detailed trading records and strategy comparison functionality
- **Parameter Optimization**: Automatic parameter optimization and grid search
- **Result Export**: Supports Excel/CSV format export

### 5. AI Intelligent Investment Advisor ⭐ Core Innovation
- **Intelligent Q&A System**: NLP-based intelligent Q&A system supporting multi-turn conversations
- **User Profiling System**: Investment experience level, risk tolerance, investment horizon, investment objectives
- **Personalized Recommendation Engine**: Recommends suitable strategies based on user profiles, intelligent portfolio risk analysis
- **Stock Analysis**: AI-driven technical analysis and trend prediction
- **Investment Advice**: Personalized investment recommendations and operational guidance

### 6. User Permission Management
- **User Roles**: Regular users, strategy administrators, system administrators
- **Permission Control**: Role-based access control (RBAC), fine-grained permission management
- **Session Management**: Secure user session handling
- **User Management**: Complete user CRUD operations

## Technology Stack

- **Backend Framework**: Python Flask + SQLite
- **Frontend Technology**: HTML + CSS + JavaScript + Bootstrap + Plotly.js
- **Data Processing**: Pandas + NumPy
- **Data Source**: Yahoo Finance API
- **Chart Visualization**: Plotly.js
- **AI Components**: Custom NLP processing + rule engine + user profiling system
- **AI Libraries**: jieba, transformers, sentence-transformers, langchain

## System Architecture

```
quantitative_trading/
├── app.py                 # Main application file (916 lines)
├── config.py             # Configuration file
├── models/               # Data models
│   ├── stock_data.py     # Stock data model
│   ├── strategy.py       # Strategy model
│   ├── user.py          # User management model
│   └── db_util.py       # Database utilities
├── strategies/           # Trading strategies (7 strategy files)
│   ├── base_strategy.py  # Base strategy class
│   ├── ma_strategy.py    # Moving average strategy
│   ├── momentum_strategy.py # Momentum strategy
│   ├── mean_reversion_strategy.py # Mean reversion strategy
│   ├── grid_strategy.py  # Grid strategy
│   ├── dual_ma_strategy.py # Dual MA strategy
│   ├── breakout_strategy.py # Breakout strategy
│   └── rsi_strategy.py   # RSI strategy
├── indicators/           # Technical indicators
│   ├── technical_indicators.py # Technical indicator calculations
│   └── signal_generator.py # Signal generator
├── utils/               # Utility functions
│   ├── data_fetcher.py  # Data fetching
│   ├── backtest.py      # Backtesting tools
│   ├── auth.py          # Authentication
│   ├── ai_advisor.py    # AI intelligent advisor (1097 lines)
│   └── llm_api.py       # LLM API interface
└── templates/           # HTML templates (6 pages)
    ├── dashboard.html   # Dashboard
    ├── backtest.html    # Backtesting page
    ├── login.html       # Login page
    ├── ai_advisor.html  # AI advisor page
    ├── admin.html       # Admin page
    └── strategy.html    # Strategy management
```

## Project Highlights

1. **AI-Driven**: First integration of AI intelligent advisor into quantitative trading system, providing personalized investment services
2. **Complete Functionality**: Covers the complete quantitative trading workflow, from data acquisition to strategy backtesting
3. **Diverse Strategies**: 7 different quantitative trading strategies, adapting to various market conditions
4. **Modular Design**: Highly modular system architecture for easy extension and maintenance
5. **Modern UI**: Beautiful interactive interface using Bootstrap and Plotly.js
6. **Permission Management**: Complete user permission management system, supporting multi-role access control

## Project Statistics

- **Code Size**: Approximately 10,000+ lines of code
- **Python Files**: 33 files
- **HTML Pages**: 6 pages
- **Trading Strategies**: 7 quantitative strategies
- **Technical Indicators**: 10+ commonly used indicators
- **AI Module**: Intelligent investment advisor system (1097 lines)

## Project Screenshots

![AI Investment Advisor System Architecture Screenshot 1](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1560.png)

![AI Investment Advisor System Architecture Screenshot 2](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1605.png)

![AI Investment Advisor System Architecture Screenshot 3](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1680.png)

![AI Investment Advisor System Architecture Screenshot 4](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1755.png)

![AI Investment Advisor System Architecture Screenshot 5](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1882.png)

![AI Investment Advisor System Architecture Screenshot 6](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1967.png)

![AI Investment Advisor System Architecture Screenshot 7](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2042.png)

![AI Investment Advisor System Architecture Screenshot 8](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2109.png)

![AI Investment Advisor System Architecture Screenshot 9](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2147.png)

![AI Investment Advisor System Architecture Screenshot 10](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2211.png)

![AI Investment Advisor System Architecture Screenshot 11](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2434.png)

![AI Investment Advisor System Architecture Screenshot 12](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2454.png)

![AI Investment Advisor System Architecture Screenshot 13](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2457.png)

## Course Information

- **Course Name**: Financial Information System Design
- **Semester**: Second semester of junior year
- **Project Type**: Course design
