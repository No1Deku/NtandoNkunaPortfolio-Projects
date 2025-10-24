# 📚 Student Enrollment Records – Data Cleaning & Quality Assurance

## 1. Project Overview

**Title:** Data Cleaning and Quality Assurance for Student Enrollment Records  

**Company / Context:**  
Eduvos is a newly founded college specializing in tech-focused courses. Its student enrollment system relies on manual data entry, which has resulted in errors, inconsistencies, and unreliable data.  

**Problem Statement:**  
Manual entry caused major issues, including:  
- Multiple attributes merged into the `student_id` field.  
- Missing or misplaced IDs, names, ages, genders, courses, dates, and payment information.  
- Inconsistent formatting across key fields.  
- Embedded currency symbols in `total_payments`.  

**Objective:**  
- Clean, restructure, and validate the dataset.  
- Ensure consistent formatting and referential integrity.  
- Produce a reliable system of student records for reporting and analysis.  

**Link to SQL Scripts / Cleaning Code:**  
[SQL Scripts Repository](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts)

---

## 2. Data Structure Overview

**Dataset Snapshot:**  

*Snapshot of the dataset after initial load (used instead of ERD):*  

![Dataset Snapshot](./images/data_preview.png)

**Key Columns Overview:**

| Column Name        | Purpose / Notes                                     |
|-------------------|---------------------------------------------------|
| student_id         | Unique identifier for each student, standardized and validated |
| first_name         | Student first name                                 |
| last_name          | Student last name                                  |
| age                | Numeric age, standardized                          |
| gender             | Uppercase `M` / `F`                                |
| course             | Course name cleaned and standardized              |
| enrollment_date    | Standardized to DD-MM-YYYY                         |
| total_payments     | Numeric value only; currency captured separately  |
| currency           | Extracted from total_payments                      |

---

## 3. Executive Summary

High-level findings:  
- Only ~30% of student records were accurate initially.  
- Trapped `student_id` values accounted for 60% of data issues.  
- Temporary IDs were introduced for 20% of students missing `student_id`.  
- Inconsistent course names, dates, gender, age, and financial fields impacted reporting and analysis.  

---

## 4. Insights Deep Dive

| Step | Issue / Observation | Action Taken | SQL Script Link |
|------|------------------|-------------|----------------|
| 0    | Load and preview data | Parsed CSV into DuckDB table for transformations | [stp0.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp0.sql) |
| 1    | Trapped `student_id` concatenated with `|` | Split into separate columns (`student_id`, `first_name`, `last_name`, `age`, `gender`, `course`, `enrollment_date`, `total_payments`) | [stp1.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp1.sql) |
| 2    | Gender lowercase / age with asterisks / combined field | Standardized gender to `M/F`, cleaned age, separated combined fields | [stp2.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp2.sql) |
| 3    | Missing student IDs | Introduced `TEMP_` IDs, created `id_status` column | [stp3.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp3.sql) |
| 4    | Inconsistent course names | Standardized all course names to reference table | [stp4.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp4.sql) |
| 5    | Total payments contain currency symbols | Removed symbols, stored currency in separate column | [stp5.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp5.sql) |
| 6    | Enrollment dates in multiple formats | Standardized all dates to `DD-MM-YYYY` | [stp6.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp6.sql) |
| 7    | Reporting convenience | Created `display_name` field by concatenating `first_name` + `last_name` | [stp7.sql](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts\stp7.sql) |

**Before / After Data Quality Comparison:**  

- *Bar graph comparing missing data and quality issues before vs after cleaning*  

![Before Cleaning](./graphs/before_cleaning.png)  
![After Cleaning](./graphs/results.png)  

---

## 5. Recommendations

- **Reference Tables:** Use `course_id` instead of `course_name` to enforce referential integrity.  
- **Standardize Formats:** Dates (DD-MM-YYYY), numeric currency values, uppercase gender.  
- **Validation at Entry:** Implement checks to prevent trapped data or missing IDs.  
- **Automated Temporary IDs:** Ensure every student has a unique identifier.  
- **Tracers / Audits:** Monitor missing or inconsistent records regularly.  

*Business Impact:* Improved reporting accuracy, reduced manual cleanup effort, and reliable analytics for stakeholders.

---

## 6. Analytical Workflow

1. **Load CSV and Inspect Data** – initial overview using pandas and skimpy report.  
   - Original CSV: [Unclean Dataset](C:\Users\Prime\Music\Projects 25\Student-Records\Unclean_Dataset_1.csv)  
2. **Parse into SQL Table** – for efficient transformations.  
3. **Stepwise Cleaning:**  
   - Split trapped data  
   - Standardize age and gender  
   - Handle missing IDs  
   - Standardize courses  
   - Clean total payments and separate currency  
   - Standardize enrollment dates  
   - Create display_name field  
4. **Final Data Quality Assessment** – validate key fields and check remaining nulls.  
   - Cleaned CSV: [Cleaned Student Records](C:\Users\Prime\Music\Projects 25\Student-Records\Cleaned_Student_Records.csv)  

---

## 7. Visuals & Deliverables

- **Dataset Snapshot:** ![Dataset Snapshot](./images/data_preview.png)  
- **Before / After Data Quality Comparison:**  
  - Before Cleaning: ![Before Cleaning](./graphs/before_cleaning.png)  
  - After Cleaning: ![After Cleaning](./graphs/results.png)  

---

## 8. Lessons Learned

- Real-world datasets require **structured cleaning** before analysis.  
- Manual entry creates compounded issues; SQL provides **repeatable, auditable cleaning processes**.  
- Proper documentation + standardized fields improve long-term data quality.  
- Linking to scripts demonstrates **technical transparency** for recruiters.

---

## 9. Interactive Artifacts

- Jupyter Notebook: [records-cleaning.ipynb](C:\Users\Prime\Music\Projects 25\Student-Records\records-cleaning.ipynb)  
- SQL Scripts: [All SQL Scripts](C:\Users\Prime\Music\Projects 25\Student-Records\sql_scripts/)  
- Raw Data: [Unclean Dataset](C:\Users\Prime\Music\Projects 25\Student-Records\Unclean_Dataset_1.csv)  
- Cleaned Data: [Cleaned Dataset](C:\Users\Prime\Music\Projects 25\Student-Records\Cleaned_Student_Records.csv)
