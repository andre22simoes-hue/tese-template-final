# Rules and Standards for Master's Theses at the University of Evora

This document outlines the rules and standards for formatting a Master's thesis at the University of Evora, based on the provided `Regulamento de Estágio do MIMV.pdf` and the LaTeX template.

## 1. Formatting Rules (from Regulamento de Estágio do MIMV.pdf - ANEXO II)

These are the official formatting rules from the regulation document.

### 1.1. General Formatting

*   **Page Size:** A4
*   **Margins:** 3 cm on all sides (top, bottom, left, and right).
*   **Line Spacing:** 1.5
*   **Font:** Arial 10pt or Times New Roman 12pt. The LaTeX template uses "Source Sans Pro" as a suitable alternative.
*   **Page Limit:** The main report should have a maximum of 120 pages, including all annexes.

### 1.2. Document Structure

The thesis should be structured as follows:

**Pre-textual Elements:**
*   **Cover and Faceplate:** Must include the title of the thesis, author's name, supervisor's name, and the phrase "Esta (e) dissertação/ relatório de estágio/ trabalho de projeto não inclui as críticas e sugestões feitas pelo Júri" (This dissertation/internship report/project work does not include the criticisms and suggestions made by the Jury).
*   **Dedication (Optional)**
*   **Acknowledgements (Optional)**
*   **Abstracts:** In Portuguese and English, with a maximum of 150 words and up to five keywords each. The English abstract should be preceded by the English translation of the title. If the thesis is written in English, it must include a summary in Portuguese.
*   **Indexes:** General index, list of figures, list of tables, and list of acronyms, all sequentially numbered.
*   **Page Numbering:** Roman numerals should be used for the pre-textual section.

**Textual Elements:**
The main body of the thesis. For a scientific dissertation, it should include:
*   Introduction
*   Objectives
*   Materials and Methods
*   Results
*   Discussion
*   Conclusions

**Post-textual Elements:**
*   **Bibliography**
*   **Annexes (Optional):** Should have separate pagination.

### 1.3. Writing Style and Content

*   **Language:** The thesis can be written in English, but in that case, it must include a summary in Portuguese.
*   **Nomenclature:** Binomial nomenclature (scientific names of species) should be written in *italics*.
*   **Foreign Words:** Avoid using foreign words. If necessary, they should be enclosed in "quotes" or written in *italics*.
*   **Numbers:** Numbers below ten should be written out as words (e.g., "nine" instead of "9").
*   **Voice:** The text should be written in an impersonal form or in the first person plural (e.g., "it was observed that..." or "we observed that...").
*   **Figures and Tables:**
    *   All figures and tables must be mentioned in the text.
    *   They must be numbered sequentially and have a title and a legend.
    *   Titles and legends must be in the same language as the text.
    *   The source of all photos and figures must be stated in the title, unless they are from the author.
*   **Abbreviations:** Abbreviations, acronyms, and symbols must be defined the first time they are used.

### 1.4. Bibliography and Citations

*   The bibliography must be up-to-date and scientifically relevant.
*   All works cited in the text must be included in the final bibliography.
*   The use of electronic documents should be limited, and they must come from reliable sources (e.g., universities, public organizations). The access date for these documents must be mentioned.
*   Citations in the text can be numeric or author-date.
*   **Citing a source within another source:** Use the format "(Author et al., YEAR, as cited in Author et al., YEAR)".
*   The final bibliography should be ordered by citation order (for numeric style) or alphabetically by the first author's last name (for author-date style).
*   In the bibliography, all authors of a work must be listed; do not use "et al.".

## 2. LaTeX Template Specifications

This section describes the specifications of the provided LaTeX template, which can be used as a reference for creating a new template.

### 2.1. File Descriptions

*   `main.tex`: The main file of the thesis. It sets the thesis information and includes the chapters.
*   `tex/teseue.cls`: The LaTeX class file that defines the style and formatting.
*   `bib/bibliografia.bib`: The BibTeX file for bibliographic references.
*   `tex/`: Directory for the LaTeX class and chapters.
*   `fonts/`: Directory for the fonts.
*   `imagens/`: Directory for images and logos.
*   `dist.sh`: A shell script for creating a distributable version of the thesis.

### 2.2. Page Layout

*   **Page Style:** The template uses the `headings` page style for the main matter, which is a standard style from the `book` class.
*   **Empty Pages:** The `emptypage` package is used to ensure that pages at the end of chapters are completely empty (no headers or footers).

#### 2.2.1. Header and Footer

The `headings` page style has the following characteristics:
*   **Header:**
    *   **Even pages:** The chapter title is displayed on the left side.
    *   **Odd pages:** The section title is displayed on the right side.
    *   The page number is displayed on the outer side of the header.
*   **Footer:** The footer is empty.

### 2.3. Visual Identity

The LaTeX template is configured to follow the visual identity of the University of Evora.

#### 2.3.1. Colors

The template uses the official university colors:
*   `uered` (RGB: 158, 27, 50)
*   `uegray` (RGB: 88, 89, 91)
*   `ueblack` (RGB: 0, 0, 0)

These colors are used in the following places:
*   **Chapter titles and numbers:** `uegray`
*   **"UNIVERSIDADE DE ÉVORA" on the title page:** `uered`
*   **Dotted line on the title page:** `uegray`
*   **Contact information on the back cover:** `uegray`

#### 2.3.2. Typography

*   **Base Font Size:** 12pt.
*   **Cover Page:**
    *   Main Title: `\Huge`
    *   Subtitle: `\LARGE`
    *   Candidate's Name: `\Large`
*   **Second Title Page:**
    *   "UNIVERSIDADE DE ÉVORA": `\Large`
    *   School and Department: `\large`
    *   Candidate's Name: `\large`
    *   Course Name: `\large`
    *   Monography Type: `\normalsize`
    *   Date: `\small`
    *   Jury Note: `\footnotesize`
*   **Chapters and Sections:**
    *   Chapter Title: 32pt
    *   Chapter Number: 256pt
    *   Section Title: `\Large` and bold.
