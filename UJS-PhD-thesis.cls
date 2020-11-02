% ---------------------------------
% 作者: TeX白兔
% 邮箱: faithbetter@outlook.com
% 时间: 2020-11-02 12:57:28
% 描述: 江苏大学博士学位论文模板
% 版本: v1.0
% ---------------------------------

\NeedsTeXFormat{LaTeX2e}[1995/12/01] \ProvidesClass{UJS-PhD-thesis}[23/09/2020 UJS-PhD-thesis thesis class]

\PassOptionsToClass{23pt}{ctexbook} \ProcessOptions
\LoadClass[a4paper,12pt]{ctexbook}

\RequirePackage{xeCJK}
\RequirePackage{zhnumber}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage[labelsep=quad]{caption}
\RequirePackage{bicaption}
\captionsetup[figure][bi-second]{name=Figure} %设置图的英文编号前缀
\captionsetup[table][bi-second]{name=Table} %设置表的英文编号前缀
\RequirePackage{mwe}
\RequirePackage{amsmath}
\RequirePackage{multirow}
\RequirePackage{enumitem}
\RequirePackage{newtxtext}
\RequirePackage{latexsym}
\RequirePackage{fancyhdr}
\RequirePackage{zhlipsum}
\RequirePackage{lipsum}
\RequirePackage{ifthen}
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage[top=25mm,left=25mm,right=20mm,bottom=20mm]{geometry}

\RequirePackage[explicit,clearempty,newparttoc]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\RequirePackage{enumitem,amssymb}

\RequirePackage{indentfirst}
% \RequirePackage[showframe]{fgruler}

\newCJKfontfamily{\FZXBSK}{方正小标宋简体}
\RequirePackage{array,booktabs}

\newcommand{\blankline}[2][7.5em]{\uline{\makebox[#1]{#2}}}

% for check symbol 
\RequirePackage{pifont}
\newcommand{\cmark}{\ding{51}}%
\newcommand{\xmark}{\ding{55}}%
\newcommand{\done}{\rlap{$\square$}{\raisebox{2pt}{\large\hspace{1pt}\cmark}}\hspace{-1pt}}
\newcommand{\wontfix}{\rlap{$\square$}{\large\hspace{1pt}\xmark}}

% 章的目录格式
\titlecontents{chapter}[0pt]{\vspace*{.4em}\zihao{4}\heiti}
{\thecontentslabel \hskip.5em}{}
{\zihao{-4}\dotfill\contentspage}

% 节的目录格式
\titlecontents{section}[15pt]{\zihao{-4}\hspace{\ccwd}}
{\thecontentslabel \hskip.5em}{}{\dotfill\contentspage}

% 节的目录格式
\titlecontents{subsection}[35pt]{\zihao{-4}\hspace{\ccwd}}
{\thecontentslabel \hskip.5em}{}{\dotfill\contentspage}

\titleformat{\chapter}{\centering\bfseries\zihao{3}}
{第\zhnumber{\thechapter} 章}
{.8em}{#1}

\titleformat{\section}{\raggedright\bfseries\zihao{4}}
{\thesection}
{.8em}{#1}
\titleformat{\subsection}{\raggedright\bfseries\zihao{-4}}
{\hspace{1em}\thesubsection}
{.8em}{#1}

\titlespacing*{\chapter}{0pt}{1em}{1.3em}
\titlespacing*{\section}{0pt}{.5em  plus 1ex minus .2ex}{.5em  plus .2ex}
\titlespacing*{\subsection}{0pt}{.5em  plus 1ex minus .2ex}{.5em  plus .2ex}

\fancypagestyle{main}{
\fancyhf{}
\fancyfoot[RO,LE]{\thepage}
\fancyhead[CO]{\kaishu \leftmark}
\fancyhead[CE]{\kaishu 江苏大学博士论文：\@title}
}

\fancypagestyle{plain}{
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[RO,LE]{\thepage}
}

\def\@en@title{}
\def\@en@author{}
\def\@en@advisor{}
\def\@en@jobtitle{}
\def\@en@major{}
\def\@en@date{}

\newcommand{\enadvisor}[2][]{\def\@en@jobtitle{#1}\def\@en@advisor{#2}}
\newcommand{\entitle}[1]{\def\@en@title{#1}}
\newcommand{\enauthor}[1]{\def\@en@author{#1}}
\newcommand{\enmajor}[1]{\def\@en@major{#1}}
\newcommand{\enDate}[1]{\def\@en@date{#1}}

\def\@major{}
\def\@title{}
\def\@advisor{}
\def\@chairman{}
\def\@referee{}
\def\@SubmitDate{}
\def\@ReplyDate{}
\def\@GrantDate{}
\def\@jobtitle{}

\renewcommand{\title}[2][1]{\def\@titlerownum{#1}\def\@title{#2}}
\newcommand{\major}[1]{\def\@major{#1}}
\newcommand{\advisor}[2][]{\def\@jobtitle{#1}\def\@advisor{#2}}
\newcommand{\chairman}[1]{\def\@chairman{#1}}
\newcommand{\referee}[1]{\def\@referee{#1}}
\newcommand{\ReplyDate}[1]{\def\@ReplyDate{#1}}
\newcommand{\SubmitDate}[1]{\def\@SubmitDate{#1}}
\newcommand{\GrantDate}[1]{\def\@GrantDate{#1}}

\def\@CID{}
\def\@SCF{}
\def\@UDC{}
\def\@no{}
\def\@info{}

\newcommand{\info}[4]{
\def\@CID{#1}
\def\@SCF{#2}
\def\@UDC{#3}
\def\@no{#4}
}

\AtBeginDocument{
\thispagestyle{empty}
\renewcommand{\maketitle}{%
\pdfbookmark[0]{封面}{titlepage}
\setlength{\parindent}{0pt}
\label{FirstPage}
\parbox{3\ccwd}{\textbf{分类号}} \blankline{\@CID} \hfill \parbox{2\ccwd}{\textbf{密级}} \blankline{\sffamily \@SCF} \par
\parbox{3\ccwd}{\textbf{UDC}} \blankline{\@UDC} \hfill \parbox{2\ccwd}{\textbf{编号}} \blankline{\@no} \par
\vspace*{1.5cm}
\begin{center} \par
\includegraphics[width=.48\linewidth]{logo/ujs.pdf} \par
\resizebox{.4\linewidth}{!}{JIANGSU UNIVERSITY} \par
\vspace*{1cm}
\resizebox{.7\linewidth}{!}{\FZXBSK 博士学位论文} \par
\bigskip
\resizebox{.67\linewidth}{!}{\FZXBSK DOCTORAL DISSERTATION} \par
\vspace*{1.2cm}
\includegraphics[width=.25\linewidth]{logo/ujslogo.pdf} \par
\vspace*{1.6cm}
\zihao{-2}
\renewcommand{\arraystretch}{1.3}
\begin{tabular}{lp{.65\linewidth}<{\centering}}
论文题目： & \multirow{\@titlerownum}{\linewidth}{\centering \@title}
\ifthenelse{\@titlerownum = 1}{
 \\[-7pt] \cline{2-2}
}{
 \\[-5.5pt] \cline{2-2} \\[-7pt] \cline{2-2}
}
学科专业： & \@major \\[-7pt]
\cline{2-2}
作者姓名： & \@author \\[-7pt]
\cline{2-2}
指导教师： & \@advisor\ \ \ \ \@jobtitle \\[-7pt]
\cline{2-2}
答辩日期： & \@ReplyDate \\[-7pt]
\cline{2-2}
\end{tabular}
\end{center}
\clearpage
}}

\newcommand{\makeauthorization}{
\pdfbookmark[0]{独创性和授权书}{authorization}
\setlength{\parindent}{2\ccwd}
\pagestyle{empty}
\setlength{\baselineskip}{20pt}
\begin{center}
\zihao{-2}\textbf{独~~创~~性~~声~~明}
\end{center}
\par
本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已注明引用的内容以外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果，也不包含为获得江苏大学或其他教育机构的学位或证书而使用过的材料。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。
\par \vspace*{\baselineskip}
\hfill
\begin{minipage}{.5\linewidth}
学位论文作者签名： \includegraphics[height=\baselineskip]{figures/TeXbaitu}
\par \hspace{7\ccwd} \@date
\end{minipage}
\par \vspace*{5.3cm}
\begin{center}
\zihao{-2}\textbf{学位论文版权使用授权书}
\end{center}
\par 江苏大学、中国科学技术信息研究所、国家图书馆、中国学术期刊（光盘版）电子杂志社有权保留本人所送交学位论文的复印件和电子文档，可以采用影印、缩印或其他复制手段保存论文。本人电子文档的内容和纸质论文的内容相一致，允许论文被查阅和借阅，同时授权中国科学技术信息研究所将本论文编入《中国学位论文全文数据库》并向社会提供查询，授权中国学术期刊（光盘版）电子杂志社将本论文编入《中国优秀博硕士学位论文全文数据库》并向社会提供查询。论文的公布（包括刊登）授权江苏大学研究生院办理。
\par \vspace*{\baselineskip}
本学位论文属于\@SCF\done 。
\par \vspace*{2\baselineskip}
\begin{minipage}{.46\linewidth}
学位论文作者签名：\includegraphics[height=\baselineskip]{figures/TeXbaitu}
\par \hspace{7\ccwd} \@date
\end{minipage}\hfill
\begin{minipage}{.4\linewidth}
指导教师签名：\includegraphics[height=\baselineskip]{figures/wang}
\par \hspace{5\ccwd} \@date
\end{minipage}
\clearpage }

\newcommand{\makecninnertitle}{
\pdfbookmark[0]{中文论文信息}{cninnertitle}
\setlength{\parindent}{0pt}
\parbox{3\ccwd}{\textbf{分类号}} \blankline{\@CID} \hfill \parbox{2\ccwd}{\textbf{密级}} \blankline{\sffamily \@SCF} \par
\parbox{3\ccwd}{\textbf{UDC}} \blankline{\@UDC} \hfill \parbox{2\ccwd}{\textbf{编号}} \blankline{\@no} \par
\vspace*{1.2cm}
\begin{center}
\zihao{2}
博~~士~~学~~位~~论~~文 \par
\vspace*{1.3cm}
\parbox{.86\linewidth}{\centering\bfseries \@title} \par
\vspace*{1.3cm}
\textbf{\@author} \par
\vspace*{2.3cm}
\end{center} \par
\zihao{3}
\makebox[6\ccwd][s]{指导老师} \uline{\hspace*{\fill}\@advisor\ \ \ \ \@jobtitle\hspace*{\fill}} \par
申请学位级别 \blankline[.28\linewidth]{博士} 专业名称 \uline{\hspace*{\fill}\@major\hspace*{\fill}} \par
论文提交日期 \blankline[.28\linewidth]{\@SubmitDate} 论文答辩日期 \uline{\hspace*{\fill} \@ReplyDate \hspace*{\fill}} \par
学位授予单位和日期 \uline{\hspace*{\fill} 江苏大学\@GrantDate \hspace*{\fill}} \par
\vfill
\hfill\textbf{答辩委员会主席} \blankline{\@chairman} \par
\hfill\textbf{评阅人} \blankline{\@referee} \par
\vspace*{2.3cm}
\begin{center}
\textbf{\@ReplyDate}
\end{center}
\clearpage
}

\newcommand{\makeeninnertitle}{
\pdfbookmark[0]{英文论文信息}{eninnertitle}
{\zihao{4}
Classified Index: \@CID \par
UDC: \@UDC }\par
\vspace*{1.8cm}
\begin{center}
\textbf{\zihao{2}Ph.D. Dissertation} \par
\bigskip
\textbf{\zihao{-2}\@en@title} \par
\vspace*{2.2cm} \par
{\zihao{2}By \par
\bigskip
\textbf{\@en@author}} \par
\vspace*{1.5cm} \par
\begin{tabular}{rl}
Major: & \@en@major \\
Supervisors: & \@en@jobtitle\ \@en@advisor\\
\end{tabular} \par
\vfill
\textbf{Jiuangsu University}\par
\textbf{\@en@date}
\vspace*{1cm}
\end{center}
\clearpage
}

\renewcommand\frontmatter{%
\cleardoublepage
\@mainmatterfalse
\pagenumbering{Roman}
\normalfont\normalsize
\setlength{\parindent}{2\ccwd}
\pagestyle{main}}

\newcommand{\cnkeywords}[1]{
\bigskip
\hangafter 1 
\hangindent 4\ccwd
\noindent
\textbf{关键词}：#1}

\newcommand{\enkeywords}[1]{
\bigskip
\hangafter 1 
\hangindent 6.7em
\noindent
\textbf{KEY WORDS}: #1}

% Link
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    pdfborder={0 0 0},
}

\graphicspath{{figures/}} % 设置图片引用路径
\allowdisplaybreaks       % 公式可断页显示
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}

\endinput