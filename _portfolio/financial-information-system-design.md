---
title: "金融信息系统设计 - AI投顾辅助量化交易系统"
excerpt: "基于 Flask 的 B/S 架构量化交易系统，集成 AI 智能投资顾问、多种交易策略和技术指标分析<br/><img src='/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书2457.png'>"
collection: portfolio
---

## 项目简介

这是一个基于 B/S 架构的 **AI 增强型量化交易系统**，集成了金融知识、技术指标、策略模型、系统设计和人工智能等核心功能。系统采用 Python Flask 框架开发，提供 Web 界面进行股票数据分析、策略回测、实时监控和 **AI 智能投资顾问服务**。

## 主要功能

### 1. 金融数据管理
- **股票数据获取**：支持从 Yahoo Finance 获取实时和历史股票数据
- **数据缓存机制**：提高访问效率，支持多只股票批量数据获取
- **市场规则理解**：自动添加市场后缀，考虑交易时间限制和涨跌停规则

### 2. 技术指标分析
- **基础指标**：移动平均线(MA/EMA)、MACD、RSI、KDJ、布林带、ATR 等
- **成交量指标**：成交量移动平均、价量关系分析
- **信号生成器**：基于技术指标生成买卖信号，支持多种信号组合策略

### 3. 量化交易策略
- **均线策略(MA Strategy)**：基于短期和长期移动平均线的交叉
- **动量策略(Momentum Strategy)**：基于价格动量的突破和反转
- **均值回归策略(Mean Reversion Strategy)**：基于价格偏离均值的回归
- **网格策略(Grid Strategy)**：在价格区间内设置多个买卖网格
- **双均线策略(Dual MA Strategy)**：基于两条不同周期均线的交叉信号
- **突破策略(Breakout Strategy)**：基于价格突破关键阻力位或支撑位
- **RSI策略(RSI Strategy)**：基于 RSI 超买超卖信号

### 4. 策略回测系统
- **历史数据回测**：支持多策略历史数据回测
- **性能指标计算**：收益率、夏普比率、最大回撤等
- **交易记录分析**：详细的交易记录和策略比较功能
- **参数优化**：自动参数优化和网格搜索
- **结果导出**：支持 Excel/CSV 格式导出

### 5. AI 智能投资顾问 ⭐ 核心创新
- **智能问答系统**：基于 NLP 的智能问答，支持多轮对话
- **用户画像系统**：投资经验等级、风险承受能力、投资期限、投资目标
- **个性化推荐引擎**：基于用户画像推荐适合策略，智能投资组合风险分析
- **股票分析**：AI 驱动的技术分析和趋势预测
- **投资建议**：个性化投资建议和操作指导

### 6. 用户权限管理
- **用户角色**：普通用户、策略管理员、系统管理员
- **权限控制**：基于角色的访问控制(RBAC)，细粒度权限管理
- **会话管理**：安全的用户会话处理
- **用户管理**：完整的用户 CRUD 操作

## 技术栈

- **后端框架**：Python Flask + SQLite
- **前端技术**：HTML + CSS + JavaScript + Bootstrap + Plotly.js
- **数据处理**：Pandas + NumPy
- **数据源**：Yahoo Finance API
- **图表可视化**：Plotly.js
- **AI 组件**：自定义 NLP 处理 + 规则引擎 + 用户画像系统
- **AI 库**：jieba、transformers、sentence-transformers、langchain

## 系统架构

```
quantitative_trading/
├── app.py                 # 主应用文件 (916行)
├── config.py             # 配置文件
├── models/               # 数据模型
│   ├── stock_data.py     # 股票数据模型
│   ├── strategy.py       # 策略模型
│   ├── user.py          # 用户管理模型
│   └── db_util.py       # 数据库工具
├── strategies/           # 交易策略 (7个策略文件)
│   ├── base_strategy.py  # 基础策略类
│   ├── ma_strategy.py    # 均线策略
│   ├── momentum_strategy.py # 动量策略
│   ├── mean_reversion_strategy.py # 均值回归策略
│   ├── grid_strategy.py  # 网格策略
│   ├── dual_ma_strategy.py # 双均线策略
│   ├── breakout_strategy.py # 突破策略
│   └── rsi_strategy.py   # RSI策略
├── indicators/           # 技术指标
│   ├── technical_indicators.py # 技术指标计算
│   └── signal_generator.py # 信号生成器
├── utils/               # 工具函数
│   ├── data_fetcher.py  # 数据获取
│   ├── backtest.py      # 回测工具
│   ├── auth.py          # 权限认证
│   ├── ai_advisor.py    # AI智能顾问 (1097行)
│   └── llm_api.py       # LLM API接口
└── templates/           # HTML模板 (6个页面)
    ├── dashboard.html   # 仪表板
    ├── backtest.html    # 回测页面
    ├── login.html       # 登录页面
    ├── ai_advisor.html  # AI顾问页面
    ├── admin.html       # 管理页面
    └── strategy.html    # 策略管理
```

## 项目特点

1. **AI 驱动**：首次将 AI 智能顾问集成到量化交易系统，提供个性化投资服务
2. **功能完整**：涵盖量化交易的完整流程，从数据获取到策略回测
3. **多样化策略**：7 种不同的量化交易策略，适应不同市场环境
4. **模块化设计**：高度模块化的系统架构，便于扩展和维护
5. **现代化 UI**：使用 Bootstrap 和 Plotly.js 实现美观的交互式界面
6. **权限管理**：完整的用户权限管理系统，支持多角色访问控制

## 项目统计

- **代码规模**：约 10,000+ 行代码
- **Python 文件**：33 个文件
- **HTML 页面**：6 个页面
- **交易策略**：7 种量化策略
- **技术指标**：10+ 种常用指标
- **AI 模块**：智能投资顾问系统（1097 行）

## 项目截图

![AI投顾系统架构截图1](/images/AI_tougu/2-AI投顾辅助量化交易系统概要设计说明书1560.png)

![AI投顾系统架构截图2](/images/AI_tou顾辅助量化交易系统概要设计说明书1605.png)

![AI投顾系统架构截图3](/images/AI_tou顾辅助量化交易系统概要设计说明书1680.png)

![AI投顾系统架构截图4](/images/AI_tou顾辅助量化交易系统概要设计说明书1755.png)

![AI投顾系统架构截图5](/images/AI_tou顾辅助量化交易系统概要设计说明书1882.png)

![AI投顾系统架构截图6](/images/AI_tou顾辅助量化交易系统概要设计说明书1967.png)

![AI投顾系统架构截图7](/images/AI_tou顾辅助量化交易系统概要设计说明书2042.png)

![AI投顾系统架构截图8](/images/AI_tou顾辅助量化交易系统概要设计说明书2109.png)

![AI投顾系统架构截图9](/images/AI_tou顾辅助量化交易系统概要设计说明书2147.png)

![AI投顾系统架构截图10](/images/AI_tou顾辅助量化交易系统概要设计说明书2211.png)

![AI投顾系统架构截图11](/images/AI_tou顾辅助量化交易系统概要设计说明书2434.png)

![AI投顾系统架构截图12](/images/AI_tou顾辅助量化交易系统概要设计说明书2454.png)

![AI投顾系统架构截图13](/images/AI_tou顾辅助量化交易系统概要设计说明书2457.png)

## 课程信息

- **课程名称**：金融信息系统设计
- **学期**：大三下学期
- **项目类型**：课程设计

