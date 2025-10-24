-- ============================================
-- Step 1: Split Trapped student_id Data
-- Purpose: Extract individual fields from concatenated student_id
-- Input: student_id column (format: student_id|first_name|last_name|age|gender|course|enrollment_date|total_payments)
-- Output: student_id, first_name, last_name, age, gender, course, enrollment_date, total_payments populated correctly
-- ============================================

-- 1. Split the concatenated fields into separate columns
UPDATE rec
SET 
    student_id = SPLIT_PART(student_id, '|', 1),
    first_name = SPLIT_PART(student_id, '|', 2),
    last_name = SPLIT_PART(student_id, '|', 3),
    age = SPLIT_PART(student_id, '|', 4),
    gender = SPLIT_PART(student_id, '|', 5),
    course = SPLIT_PART(student_id, '|', 6),
    enrollment_date = SPLIT_PART(student_id, '|', 7),
    total_payments = SPLIT_PART(student_id, '|', 8)
WHERE student_id LIKE '%|%';


-- 2. Notes / Next Steps:
-- After this step, data in the trapped student_id column is separated properly.
-- Proceed to Step 2: Standardize Age and Gender.
