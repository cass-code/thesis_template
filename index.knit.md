---
output: 
  pdf_document:
    # latex_engine: "xelatex"
    citation_package: natbib
    template: template.tex
    toc: true
    toc_depth: 3
    number_sections: true
    keep_tex: false
    fig_caption: true
bibliography: mybib.bib
# indent: false
# documentclass: memoir
documentclass: memoir
# lang: afrikaans, english
lang: english
fontsize: 12pt
# papersize: a4
papersize: letter
classoption: oneside, openany
# geometry: margin=1.5in
margin-ratio: goldenblock
title: An Econometric Analysis of the Illicit South African Tobacco Market
subtitle: An econometric analysis
titel: "Hierdie is die titel van my tesis"
author: "Cassandra Pengelly"
logo: "./images/su_logo.jpg"
author-short: C.\ Pengelly
degree-short: MCom (Economics)
degree: Master in Economics
graad-short: MCom (Ekonomie)
graad: Magister in Ekonomie
#address: yes # comment out to remove address in abstract
faculty: Faculty of Economic and Management Sciences
fakulteit: Fakulteit Ekonomiese en Bestuurswetenskappe
supervisor: Prof.\ W.\ H. Boshoff
year: 2023
month: 8
abstract: abstract.Rmd
#acknowledgements: acknowledgements.Rmd
lot: true
lof: true
# nomenclature: nomenclature.Rmd
# loa: loa.Rmd
header-includes:
- \usepackage{subfig}
- \setlength\parindent{0pt}\setlength{\parskip}{6pt plus 6pt minus 1pt}
# - \usepackage{float}
# - \usepackage{floatrow}
# - \floatsetup[figure]{capposition=top}
# - \floatsetup[table]{capposition=top} 
# - \usepackage{caption}
---







# Introduction

This study examines the relationship between the legal and illegal tobacco markets in South Africa. Section \ref{data} discusses the data used and how it was cleaned. Section \ref{methodology} explains the methodology, where a VECM model is presented. The final section details discussion points (\ref{analysis}). The appendix contains the full model outputs. 


# The Illicit Tobacco Market

The health problems associated with tobacco consumption are significant and have been well-documented (\citealp *{tingum2020}:62). Worldwide, smoking is one of the leading causes of preventable deaths; and in South Africa 23% of the total deaths in 2018 were smoking-related (Statistics South Africa). Given the large and negative impact of smoking, the tobacco market has come under increasing scrutiny by governments and health organizations. A significant component of the tobacco market is the illicit cigarette trade, which the Financial Action Task Force (2012:7) defines as 

> “*…the supply, distribution and sale of smuggled genuine, counterfeit or cheap white tobacco products.*”


The illicit tobacco market gives rise to concern on three main fronts: public health, tax evasion, and criminal activity. From a public health perspective, illicit cigarettes make smoking more affordable and thereby increases tobacco access (\citealp* {vanderzee2019}:242). Cheaper cigarettes may induce non-smokers to smoke, increase the volume of cigarettes consumed by smokers, and decrease the likelihood that smokers will quit smoking (\citealp* {pechacek2018}:pagenumber; \citealp{vanderzee2019}:242).


According to the International Agency for Research on Cancer, tobacco use is more prevalent among low socio-economic groups, and the poor are more sensitive to cigarette prices (IARC, 2011:276). Consequently, the health problems linked to smoking are disproportionately higher among the poor, which results in a greater burden on the public healthcare sector (). In South Africa, the healthcare costs associated with smoking amounted to R14.48 billion in 2016, which accounted for 4.1% of health spending (). In addition to the healthcare costs, there are indirect costs linked to smoking such as the loss of productive lives and loss of productive days due to illness (\citealp* {boachie2020}:pg). In 2016, the total cost of smoking to South Africa was R42.32 billion (0.97% of GDP).


Evidently, the public health and economic costs of tobacco use are extensive. In an effort to reduce tobacco use, many countries have implemented tax and price policies on tobacco products (Chaloupka, Straif, Leon). For a middle-income country, South Africa was considered to be at the forefront of tobacco control policies, including excise duties, for many years (\citealp* {vellios2022}). From a fiscal perspective, excise tax on cigarettes is a source of government revenue, which is undermined by the illicit tobacco industry.  **Blah ble** estimates the loss of income due to the illicit market to be R123123 The loss of income

# Methodology \label{methodology}
## Theoretical Model \label{Model}

This paper makes use of the demand model to estimate the effect of a relative price change, between licit and illicit cigarette price,on cigarette consumption in South Africa from January 2012 to March 2020. The relationship between cigarette consumption, price and income is well-documented (for example, see \citealp{boshoff2008}; \citealp{tingum2020}) and is typically expressed as:

\begin{align}
Q_{t} = f(P_{t}, Y_{t}, D_{t}) \label{eqa}
\end{align}

\ref{eqa} Where $Q_{t}$ represents cigarette consumption volume in period $t$, $P_{t}$ is the price of cigarettes adjusted for inflation, $Y_{t}$ is disposable income, and $D_{t}$ is is the dummy variable for the change in market structure that occurred in 2018. 

Two sets of prices are used in this study; the first is the legal cigarette price, which is the price of cigarettes for which duties have been paid. The second is the illicit cigarette price, which is the price of cigarettes for which duties have been paid. For this study, cigarette consumption, as represented by $Q_{t}$, is the quantity of legal cigarettes consumed (cigarettes for which duties have been paid).

## Data \label{data}

The sample period for this study runs from January 2012 to March 2020. Monthly data is used such that there are 99 observation points for each variable in the data set. One of the advantages of using monthly data rather than annual data is that it allows for more degrees of freedom. The data used in this study include figures for South Africa for the average prices of legal cigarettes, the average prices of illicit cigarettes, volume of legal cigarettes consumed, tobacco excise duties, Value Added Tax (VAT), and real disposable income. The data for legal and illicit prices, and legal cigarette consumption are provided by a prominent South African cigarette manufacturer. The other data are extracted from the South African Reserve Bank (SARB) and Statistics South Africa (StatSA).

To prepare the legal price data for analysis, the most popular price category (MPPC) is identified as the 20-cigarette pack. A weighted average of before-tax 20-pack prices is used as a base price. The excise duty per 20's pack and VAT are then added to the base price to calculate the price of legal cigarettes. The legal and illicit prices, and disposable income values, are adjusted for inflation, taking December 2016 as the base month and year, respectively. For the statistical analysis in sections \ref{Cointegrate} and \ref{vecm}, all of the variables have been transformed into log form to reduce variability. 

For the model specification, the two price series are combined to form a single price-ratio series. The price ratio is calculated as the real legal price divided by the real illicit cigarette price ($P_{legal}/P_{illicit}$). Consumer theory suggests that individuals base decisions on relative price changes rather than absolute price changes **ADD REFERENCES**. Thus, it makes intuitive sense to model the effect of a relative change in prices on the quantity of legal cigarettes

The series are plotted in levels in figure \ref{fig:plot} below. The general downwards trend of the graph depicting the real price of legal cigarettes suggests that inflation has been outstripping nominal cigarette prices. Real legal prices decreased slightly over the period 2012 - 2018. On the other hand, real prices for illicit cigarettes remained fairly constant from 2012 until late 2014. Following a small and sharp uptick, illicit prices slowly decreased from late 2014 until November 2018 when prices increase rapidly. The real price ratio is generally flat from 2012 - 2016, and then trends upwards slightly, implying that real legal prices were decreasing more slowly than real illicit prices were decreasing over the same period. There is a sudden drop in the price ratio in November 2018, reflecting the spike in real illicit prices. The graphs of the respective logged series (shown in appendix \ref{appendixLog}) illustrate similar patterns.

The plot of the real price ratio suggests that there is a structural break in the series, in late 2018. To test for this^[The test was conducted using the programming language *'R'*, using the *'strucchange'* package by \citet* {struc1} and \citet* {struc2}], the Chow structural test (based on the work by \citet* {chow1960}) is employed for November 2018; the results are presented in table \ref{tab:struc}. The p-value is less than 0.05; thus, the null hypothesis is rejected and there is sufficient evidence to conclude that the data contains a structural breakpoint. To control for this in the model, a dummy variable is used to capture the change in the illicit price (and therefore the price ratio) that occurred in November 2018. The variable is labelled '*Structural change*' and is coded 0 for periods before November 2018, and 1 otherwise.

The graph for the quantity of legal cigarettes in figure \ref{fig:plot} shows a general downwards trend from 2012 to March 2020, and the series exhibits strong signs of seasonality. The series is decomposed and its separate components are graphed in appendix \ref{seasonGraph}, which confirm the presence of seasonality. While the series could be seasonally adjusted to account for the seasonality, this may change the outcome of conventional unit root tests, according to \citealp{season}, and lead to bias in the estimation of relationships between series (\citealp* {seasonWilliam}:110). Therefore, this study uses the unaltered data for this consumption variable in the model estimation.

The overall trends and shapes of the graphs suggest that the series are not stationary, which is formally tested below in section \ref{Cointegrate}.

\begin{figure}

{\centering \includegraphics{index_files/figure-latex/graphs-1} 

}

\caption{Plot for variables at levels \label{fig:plot}}\label{fig:graphs}
\end{figure}

\newpage
\newpage
## Stationarity and Cointegration \label{Cointegrate}

To test whether the series are stationary, three tests were employed: the Augmented Dickey-Fuller^[Based on the work by \citet* {dickey} | The '*urca*' package by \citet {urca} is used] (ADF) and Phillip-Perron^[Based on the work by \citet* {phillip} | The '*tseries*' package by \citet* {tseries} is used] (PP) unit root tests, and the Kwiatkowski–Phillips–Schmidt–Shin^[Based on the work by \citet* {kpss} | The '*tseries*' package by \citet* {tseries} is used] (KPSS) stationarity test. The results are presented in appendix \ref{appendixB}.

The results of the ADF tests in table \ref{tab:adf} show that the log of cigarette consumption, log of the real price ratio, and log of real disposable income all contain a unit root since the null hypothesis cannot be rejected^[The null hypothesis for the ADF tests is that the series contain a unit root], even at a 10% signifiance level. The KPSS stationarity tests (\ref{tab:kpss}) confirm these results, where the null hypothesis of stationarity is rejected at a 1% level of signifiance for each series. The results of the PP tests are presented in table \ref{tab:pp}, which shows that the log of cigarette consumption does not contain a unit root at 1% significance level but that the other two series do contain unit roots.

Given that there is a structural break point in the price ratio series, standard unit root testing may not be appropriate for this series. Consequently, the Zivot-Andrews Unit Root test is used as a robustness check for the stationarity of the price ratio. The results are presented in table \ref{tab:zivot} and show that the null of a unit root cannot be rejected, at even 10% level of significance. Thus confirming the original test results.

Based on the unit root test results, the variables are assumed to be non-stationary in levels.

After first differencing each of the series, all tests indicate that the variables are stationary at a 5% level of significance. These results are presented in tables \ref{tab:adfDiff}, \ref{tab:ppDiff}, \ref{tab:kpDiff}, and \ref{tab:zivotDiff} for the ADF, PP, KPSS and Zivot-Andrews tests respectively. Given that the series are non-stationary in levels but are stationary in first differences, a cointegration approach can be used to evaluate whether a long-run relationship exists among the variables.

\
**Cointegration**

To test for conintegrating relationships, two tests were employed:
the Johansen Trace test for Cointegration, and the Johansen Maximum Eigenvalue test for Cointegration based on the work of \citealp* {johansen1990}.

The Johansen Trace Test for Cointegration indicates that there is one cointegrating vector. As shown in table \ref{trace}, the test statistic of 80.8 is larger than 60.2 (the critical value at a 1% level of significance). Thus, the null hypothesis is rejected, where the null hypothesis is that there are zero cointegrating vectors. However, the test statistic 10.2 is lower than 17.9 (the critical value at a 10% level of significance). This means that the null hypothesis cannot be rejected even at a 10% signicance level, where the null hypothesis is that there is 1 or fewer cointegrating vectors. 

The results of the Johansen Maximum Eigenvalue test are presented in table \ref{eigen}. Similar to the Trace test, the Maximum Eigenvalue test shows that there is a single cointegrating vector. The test statistic 33.9 exceeds the critical value of 26.8 at a 1% level of significance. Therefore the null hypothesis - that there is no conintegration - is rejected at a 1% significance level. However, the null hypothesis that there is 1 or fewer cointegrating relationships cannot be rejected, even at a 10% significance level. Here, the test statistics of 8.48 lies below the 10% critical value of 13.8. 

The presence of a cointegrating vector indicates that a long-run relationship exist among the variables. A Vector Error Correction Model is used to combine the long and short-run dynamics. This model is specified and estimated in the following section (\ref{vecm}).

## Vector Error Correction Model \label{vecm}

The VECM was with 1 cointegrating vector and at lag length of 2. The results are presented in the appendix (\ref{appendixD}).

\begin{align}
 Q_t = \mu + \sum_{i = 1}^{n}\beta_iQ_{t-i} +\sum_{i = 1}^{n}\gamma_iP_{t-i} + \sum_{i = 1}^{n}\theta_iY_{t-i} \label{eq1}
\end{align}

where $Q_t$ is the log of legal cigarette consumption,\newline
$P_{t}$ is the log of real price ratio for cigarettes,\newline
$Y_{t}$ is the log of real disposable income,\newline
$n$ is the number of lags and $t$ is measured in months

The price ratio captures a relative change of the legal price compared to the illicit price. If the ratio shrinks, it indicates that the cost of legal cigarettes decreased relative to the cost of illicit cigarettes. There should be a negative long run relationship between the price ratio and the quantity of legal cigarettes. There should be a positive sign for the cointegrating relationship, which there is. The coefficient for the real disposable income variable should be negative for the long-run relationship (so that the reverse sign is positive); whereas the sign is positive in the Vecm results below.


If the real disposable income variable is excluded then the Vecm results are as follows. The coefficient for 

The previous month's deviation from the long run equilibrium is corrected at a speed of

The results of the diagnostic tests are shown in Appendix \ref{appendixE}. Table \ref{tab:serial} shows the results of the serial autocorrelation test. Table \ref{tab:arch} shows the arch results. Table \ref{tab:normal} shows the normal results.

Figure \ref{fig:residPlot} shows the residuals.

# Analysis \label{analysis}
# Conclusion \label{conclusion}





\appendix
\appendixpage


# Time Series Data \label{appendixA1}

## Time series logged graphs \label{appendixLog}

\begin{figure}

{\centering \includegraphics{index_files/figure-latex/loggraphs-1} 

}

\caption{Plot for variables at levels \label{fig:plotLog}}\label{fig:loggraphs}
\end{figure}

## Seasonality decomposition \label{seasonGraph}

\begin{figure}

{\centering \includegraphics{index_files/figure-latex/seasonGraphs-1} 

}

\caption{Decomposisiton and seasonality for quantity of legal cigarettes series\label{fig:SeasonPlot}}\label{fig:seasonGraphs}
\end{figure}

## Structural breakpoint test \label{breakpointtest}

```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Chow structural break test for Real Price Ratio time series\label{tab:struc}}
 \label{tab:structest}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont  }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{12pt}{14.4pt}\selectfont Chow test} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 67.13} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 0} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont Structural breakpoint} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

# Stationarity Testing \label{appendixB}


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Augmented Dickey Fuller Tests \label{tab:adf}}
 \label{tab:ADFResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Test statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 1\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 5\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 10\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Quantity legal cigarettes} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -0.445} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.6} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.95} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.61} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -0.0835} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.6} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.95} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.61} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Disposable income} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 2.63} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.6} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.95} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.61} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Phillips-Perron Unit Root Test \label{tab:pp}}
 \label{tab:PPResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Quantity legal cigarettes} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -119} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.54} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.952} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Disposable income} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -6.73} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.726} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{KPSS Unit Root Test \label{tab:kp}}
 \label{tab:KPSSResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Quantity legal cigarettes} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 1.89} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont non-stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 1.35} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont non-stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Disposable income} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 2.55} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont non-stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Zivot-Andrews Unit Root Test \label{tab:zivot}}
 \label{tab:strucResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{10pt}{12pt}\selectfont }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Test statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 1\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 5\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 10\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -3.64} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -5.57} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -5.08} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -4.82} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Augmented Dickey Fuller Tests \label{tab:adfDiff}}
 \label{tab:AdfdiffResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Test statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 1\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 5\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 10\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Quantity legal cigarettes} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -11.8} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.6} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.95} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.61} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -7.7} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.6} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.95} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.61} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Disposable income} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -3.47} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -2.6} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.95} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -1.61} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Phillips-Perron Unit Root Test for Differenced Series \label{tab:ppDiff}}
 \label{tab:PPdiffResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Quantity legal cigarettes} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -153} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -120} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Disposable income} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -33} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.01} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{KPSS Stationarity Test for Differenced Series \label{tab:kpDiff}}
 \label{tab:KPSSdiffResults}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Quantity legal cigarettes} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.0229} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.1} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont non-stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.275} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.1} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont non-stationary} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Disposable income} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.149} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 0.1} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont non-stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Zivot-Andrews Unit Root Test \label{tab:zivotDiff}}
 \label{tab:strucResultsDiff}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{10pt}{12pt}\selectfont }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Test statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 1\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 5\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 10\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Alternative}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont Price ratio} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -13.2} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -5.57} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -5.08} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont -4.82} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont stationary} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

# Cointegration Tests \label{appendixC}


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Johansen Trace Test \label{trace}}
 \label{tab:Cointegration_trace}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 10\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 5\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 1\%}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r$<$=3} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 4.86} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 7.52} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 9.24} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 13} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r$<$=2} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 19.2} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 17.9} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 20} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 24.6} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r$<$=1} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 41} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 32} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 34.9} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 41.1} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r=0} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 80.8} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 49.6} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 53.1} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 60.2} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Johansen Maximum Eigenvalue Test \label{eigen}}
 \label{tab:Cointegration_eigen}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont } \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 10\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 5\%}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{10pt}{12pt}\selectfont 1\%}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r$<$=3} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 4.86} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 7.52} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 9.24} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 13} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r$<$=2} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 14.3} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 13.8} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 15.7} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 20.2} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r$<$=1} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 21.8} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 19.8} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 22} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 26.8} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{10pt}{12pt}\selectfont r=0} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 39.9} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 25.6} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 28.1} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{10pt}{12pt}\selectfont 33.2} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```



# Vector Error Correction Results \label{appendixD}








```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Vector Error Correction Model \label{tab:Longvecm}}
 \label{tab:vecmFinal}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l}


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont  }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont Long run coefficient} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Quantity cigarettes}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedleft \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 1\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Price ratio}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedleft \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 0.885} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Real income}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedleft \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont -0.679} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Structural change}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedleft \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 0.354} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Constant}} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedleft \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 1.79\hphantom{0}} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Vector Error Correction Model Short run \label{tab:Shortvecm}}
 \label{tab:vecmFinal}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l}


\hhline{>{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt} Quantity Cigarettes \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt} Price ratio \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt} Real income \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt} Structural Change \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} ECT \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.488 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.149 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.002\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.042\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.114)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.035)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.002)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.124) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Cigarette Quantity (lag 1) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -1.068 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.081 *\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.001\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.035\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.101)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.031)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.001)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.111) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Price ratio (lag 1) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -2.156 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.334 **\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.003\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.105\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.339)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.105)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.005)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.370) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Real Income (lag 1) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 2.502\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.195\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.896 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 11.068\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (7.578)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (2.351)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.106)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (8.270) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Structural change (lag 1) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.176\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.026\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.000\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.001\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.097)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.030)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.001)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.106) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Cigarette Quantity (lag 2) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.649 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.154 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.001\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.042\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.123)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.038)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.002)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.134) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Price ratio (lag 2) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -1.465 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.330 **\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.007\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.102\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.397)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.123)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.006)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.433) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Structural change (lag 2) \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.290 **\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.012\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.001\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.007\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.098)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.030)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.001)\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} (0.107) \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} N \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 96\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 96\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 96\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 96\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} R2 \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.694\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.224\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.657\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.035\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}-}
\arrayrulecolor{black}

\multicolumn{5}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  *** p $<$ 0.001;  ** p $<$ 0.01;  * p $<$ 0.05. \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

# Diagnostic Tests \label{appendixE}

\begin{figure}

{\centering \includegraphics{index_files/figure-latex/ResidualGraphs-1} 

}

\caption{Plot of residuals  \label{fig:residPlot}}\label{fig:ResidualGraphs}
\end{figure}


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Autocorrelation Test\label{tab:serial}}
 \label{tab:diagnostics}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont  }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Parameter}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Lags}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{12pt}{14.4pt}\selectfont Portmanteau Test (asymptotic)} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 265} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 196} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 0} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 15} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{12pt}{14.4pt}\selectfont Portmanteau Test (asymptotic)} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 468} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 436} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 0.14} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 30} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{ARCH test\label{tab:arch}}
 \label{tab:diagnostics}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont  }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Parameter}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont p-value}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Lags}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{12pt}{14.4pt}\selectfont ARCH (multivariate)} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 810} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 1500} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 1} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 15} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{Normality test\label{tab:normal}}
 \label{tab:diagnostics}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l l}


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{3pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont  }} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Statistic}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont Parameter}} \hspace{2pt}\huxbpad{2pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{3pt + 1em}\raggedright \hspace{2pt} \textbf{{\fontsize{12pt}{14.4pt}\selectfont p-value}} \hspace{3pt}\huxbpad{2pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{3pt} {\fontsize{12pt}{14.4pt}\selectfont JB-Test (multivariate)} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 29175.0802324414} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 8} \hspace{2pt}\huxbpad{3pt}} &
\multicolumn{1}{l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{2pt + 1em}\raggedright \hspace{2pt} {\fontsize{12pt}{14.4pt}\selectfont 0} \hspace{3pt}\huxbpad{3pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```



\clearpage
